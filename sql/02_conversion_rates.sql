SELECT * FROM `project-1a7f0a69-00af-4bc7-9b9.sql_practice.user_events` LIMIT 1000

-- define sales funnel and the different stages 

WITH funnel_stages AS (
  SELECT
    COUNT(DISTINCT CASE WHEN event_type = 'page_view' THEN user_id END) AS stage_1_views,
    COUNT(DISTINCT CASE WHEN event_type = 'add_to_cart' THEN user_id END) AS stage_2_cart,
    COUNT(DISTINCT CASE WHEN event_type = 'checkout_start' THEN user_id END) AS stage_3_checkout,
    COUNT(DISTINCT CASE WHEN event_type = 'payment_info' THEN user_id END) AS stage_4_payment,
    COUNT(DISTINCT CASE WHEN event_type = 'purchase' THEN user_id END) AS stage_5_purchase

  FROM `project-1a7f0a69-00af-4bc7-9b9.sql_practice.user_events`

  WHERE event_date >= TIMESTAMP(DATE_SUB(CURRENT_DATE(), INTERVAL 300 DAY))
)

SELECT * FROM funnel_stages

SELECT

    stage_1_views,
    stage_2_cart,
    ROUND(stage_2_cart * 100/stage_1_views) AS view_to_cart_rate,

    stage_3_checkout,
    ROUND(stage_3_checkout * 100/stage_2_cart) AS cart_to_checkout_rate,

    stage_4_payment,
    ROUND(stage_4_payment * 100/stage_3_checkout) AS checkout_to_payment_rate,

    stage_5_purchase,
    ROUND(stage_5_purchase * 100/stage_4_payment) AS payment_to_purchase_rate,

    ROUND(stage_5_purchase * 100/stage_1_views) AS overall_conversion_rate
  FROM funnel_stages
