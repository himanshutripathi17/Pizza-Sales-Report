-- Analyze the cumulative revenue generated over time.
-- Cumulative => Window Function

SELECT 
  Sales.order_date, 
  SUM(Sales.revenue) OVER (ORDER BY Sales.order_date) AS cumulative_revenue
FROM
(
  SELECT 
    o.order_date, 
    SUM(od.quantity * p.price) AS revenue
  FROM order_details AS od
  JOIN pizzas AS p ON od.pizza_id = p.pizza_id
  JOIN orders AS o ON o.order_id = od.order_id
  GROUP BY o.order_date
) AS Sales;
