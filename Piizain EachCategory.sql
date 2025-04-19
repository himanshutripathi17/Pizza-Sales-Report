-- Join relevant tables to find the category-wise distribution of pizzas.
-- No. of Pizzas in Each Category

SELECT 
    pt.category, COUNT(p.pizza_id)
FROM
    pizza_types2 AS pt
        JOIN
    pizzas AS p ON pt.pizza_type_id = p.pizza_type_id
GROUP BY pt.category;
  