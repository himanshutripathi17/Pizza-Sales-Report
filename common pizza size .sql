-- Identify the most common pizza size ordered.

SELECT p.size, COUNT(od.order_id) as Total_Each_Size
FROM order_details as od
LEFT JOIN pizzas as p
ON od.pizza_id = p.pizza_id
GROUP BY p.size
ORDER BY Total_Each_Size DESC

