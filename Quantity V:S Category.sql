-- Join the necessary tables to find the total quantity of each pizza category ordered.

SELECT pt.category, SUM(od.quantity) as Quantity
FROM pizza_types2 as pt
JOIN pizzas as p
ON pt.pizza_type_id = p.pizza_type_id
JOIN order_details as od
ON p.pizza_id = od.pizza_id 
GROUP BY pt.category