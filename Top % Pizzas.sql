-- List the top 5 most ordered pizza types along with their quantities.

SELECT 
    pt.name, SUM(od.quantity) AS quantity
FROM
    order_details AS od
        JOIN
    pizzas AS p ON od.pizza_id = p.pizza_id
        JOIN
    pizza_types2 AS pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.name
ORDER BY quantity DESC
LIMIT 5;