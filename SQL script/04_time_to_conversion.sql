-- time to conversion analysis --
WITH user_journey AS (
	SELECT
	user_id,
		MIN(CASE WHEN event_type = 'page_view' THEN event_date END) AS stage_1_views_time,
		MIN(CASE WHEN event_type = 'add_to_cart' THEN event_date END) AS stage_2_carts_time,
		MIN(CASE WHEN event_type = 'checkout_start' THEN event_date END) AS stage_3_checkout_time,
		MIN(CASE WHEN event_type = 'payment_info' THEN event_date END) AS stage_4_payment_time,
		MIN(CASE WHEN event_type = 'purchase' THEN event_date END) AS stage_5_purchase_time
	FROM user_events
	WHERE event_date >= (
        SELECT DATE(DATE_SUB(MAX(event_date), INTERVAL 30 DAY))
        FROM user_events)
	GROUP BY user_id
	HAVING MIN(CASE WHEN event_type = 'purchase' THEN event_date END) IS NOT NULL
)
SELECT
	COUNT(*) AS converted_user,
	ROUND(AVG(TIMESTAMPDIFF(MINUTE, stage_1_views_time, stage_2_carts_time)),2) AS avg_view_to_cart_minute,
	ROUND(AVG(TIMESTAMPDIFF(MINUTE, stage_2_carts_time, stage_3_checkout_time)),2) AS avg_cart_to_checkout_minute,
	ROUND(AVG(TIMESTAMPDIFF(MINUTE, stage_3_checkout_time, stage_4_payment_time)),2) AS avg_checkout_to_payment_minute,
	ROUND(AVG(TIMESTAMPDIFF(MINUTE, stage_4_payment_time, stage_5_purchase_time)),2) AS avg_payment_to_purchase_minute,
	ROUND(AVG(TIMESTAMPDIFF(MINUTE, stage_1_views_time, stage_5_purchase_time)),2) AS avg_view_to_purchase_minute
FROM user_journey;
