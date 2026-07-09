SELECT * FROM `project-1a7f0a69-00af-4bc7-9b9.sql_practice.user_events` LIMIT 1000

-- funnel by source

WITH source_funnel AS (
  SELECT
  traffic_source,
    COUNT(DISTINCT CASE WHEN event_type = 'page_view' THEN user_id END) AS views,
    COUNT(DISTINCT CASE WHEN event_type = 'add_to_cart' THEN user_id END) AS carts,
    COUNT(DISTINCT CASE WHEN event_type = 'purchase' THEN user_id END) AS purchases

  FROM `project-1a7f0a69-00af-4bc7-9b9.sql_practice.user_events`

  WHERE event_date >= TIMESTAMP(DATE_SUB(CURRENT_DATE(), INTERVAL 300 DAY))
  GROUP BY traffic_source
)
SELECT
  traffic_source,
  views,
  carts,
  purchases,
  ROUND(carts * 100 / views) AS cart_conversion_rate,
  ROUND(purchases * 100 / views) AS purchase_conversion_rate,
  ROUND(purchases * 100 / carts) AS cart_to_purchase_conversion_rate

FROM source_funnel
ORDER BY purchases DESC
