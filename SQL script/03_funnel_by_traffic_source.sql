-- funnel by source --
WITH source_funnel AS (
	SELECT
	traffic_source,
		COUNT(DISTINCT CASE WHEN event_type = 'page_view' THEN user_id END) AS stage_1_views,
		COUNT(DISTINCT CASE WHEN event_type = 'add_to_cart' THEN user_id END) AS stage_2_carts,
		COUNT(DISTINCT CASE WHEN event_type = 'checkout_start' THEN user_id END) AS stage_3_checkout,
		COUNT(DISTINCT CASE WHEN event_type = 'payment_info' THEN user_id END) AS stage_4_payment,
		COUNT(DISTINCT CASE WHEN event_type = 'purchase' THEN user_id END) AS stage_5_purchase
	FROM user_events
	WHERE event_date >= (
        SELECT DATE(DATE_SUB(MAX(event_date), INTERVAL 30 DAY))
        FROM user_events)
	GROUP BY traffic_source
)
SELECT
	traffic_source,
	stage_1_views, 
	stage_2_carts,
	ROUND(stage_2_carts * 100 / stage_1_views,2) AS view_to_cart_conversion_rate,
	stage_3_checkout,
	ROUND(stage_3_checkout * 100 / stage_2_carts,2) AS carts_to_checkout_conversion_rate,
	stage_4_payment,
	ROUND(stage_4_payment * 100 / stage_3_checkout,2) AS checkout_to_payment_conversion_rate,
	stage_5_purchase,
	ROUND(stage_5_purchase * 100 / stage_4_payment,2) AS payment_to_purchase_conversion_rate,
	ROUND(stage_5_purchase * 100 / stage_1_views,2) AS overall_conversion_rate
FROM source_funnel;
