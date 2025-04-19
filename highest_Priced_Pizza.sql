-- Identify the highest-priced pizza.

SELECT 
    pzt.name, pza.price AS Highest_Priced_Pizza
FROM
    pizza_types2 AS pzt
        JOIN
    pizzas AS pza ON pzt.pizza_type_id = pza.pizza_type_id
ORDER BY pza.price DESC
LIMIT 1;
 