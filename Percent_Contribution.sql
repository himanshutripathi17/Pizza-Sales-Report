-- Calculate the percentage contribution of each pizza type to total revenue.

SELECT pt.category, ROUND(SUM(od.quantity * p.price)*100/ SUM(SUM(od.quantity * p.price)) OVER (),2) as pervent_VS_total
FROM order_details as od
JOIN pizzas as p
ON od.pizza_id = p.pizza_id
JOIN pizza_types2 as pt
ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.category
ORDER BY pervent_VS_total DESC

-- SUM(SUM(od.quantity * p.price)) OVER () : Evaluates total revenue across all categories