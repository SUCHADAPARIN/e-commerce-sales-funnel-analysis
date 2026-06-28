-- revenue funnel analysis --
WITH revenue_funnel AS (
	SELECT
		COUNT(DISTINCT CASE WHEN event_type = 'page_view' THEN user_id END) AS total_visitors,
		COUNT(DISTINCT CASE WHEN event_type = 'purchase' THEN user_id END) AS total_buyers,
		SUM(CASE WHEN event_type = 'purchase' THEN amount END) AS total_revenue,
		COUNT(CASE WHEN event_type = 'purchase' THEN 1 END) AS total_orders
	FROM user_events
	WHERE event_date >= (
        SELECT DATE(DATE_SUB(MAX(event_date), INTERVAL 30 DAY))
        FROM user_events)
)
SELECT 
	total_visitors,
	total_buyers,
	total_orders,
	total_revenue,
	ROUND(total_revenue / total_orders,2) AS avg_order_value,
	ROUND(total_revenue / total_buyers,2) AS revenue_per_buyer,
	ROUND(total_revenue / total_visitors,2) AS revenue_per_visitor
FROM revenue_funnel;
