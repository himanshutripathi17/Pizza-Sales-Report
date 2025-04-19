-- Calculate the total revenue generated from pizza sales.

SELECT ROUND(SUM(p.price * od.quantity), 2) as Total_Revenue
FROM order_details as od
LEFT JOIN pizzas as p
ON od.pizza_id = p.pizza_id
