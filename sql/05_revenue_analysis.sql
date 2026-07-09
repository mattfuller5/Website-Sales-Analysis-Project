SELECT * FROM `project-1a7f0a69-00af-4bc7-9b9.sql_practice.user_events` LIMIT 1000

-- revenue funnel analysis

 WITH funnel_revenue AS (
  SELECT
    COUNT(DISTINCT CASE WHEN event_type = 'page_view' THEN user_id END) AS total_visitors,
    COUNT(DISTINCT CASE WHEN event_type = 'purchase' THEN user_id END) AS total_buyers,
    SUM(CASE WHEN event_type = 'purchase' THEN amount END) AS total_revenue,
    COUNT(CASE WHEN event_type = 'purchase' THEN 1 END) AS total_orders

   

  FROM `project-1a7f0a69-00af-4bc7-9b9.sql_practice.user_events`

  WHERE event_date >= TIMESTAMP(DATE_SUB(CURRENT_DATE(), INTERVAL 300 DAY))
 )
 

 SELECT
  total_visitors,
  total_buyers,
  total_orders,
  ROUND (total_revenue,2),
  ROUND (total_revenue / total_orders,2) AS avg_order_value,
  ROUND (total_revenue / total_buyers,2) AS revenue_per_buyer,
  ROUND (total_revenue / total_visitors,2) AS revenue_per_visitor

FROM funnel_revenue


