-- Determine the top 3 most ordered pizza types based on revenue.

SELECT 
    pt.name, ROUND(SUM(od.quantity * p.price), 0) AS Revenue
FROM
    order_details AS od
        JOIN
    pizzas AS p ON od.pizza_id = p.pizza_id
        JOIN
    pizza_types2 AS pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.name
ORDER BY Revenue DESC
LIMIT 3