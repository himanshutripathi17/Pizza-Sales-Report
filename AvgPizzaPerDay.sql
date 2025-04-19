-- Group the orders by date and calculate the average number of pizzas ordered per day.

SELECT 
    ROUND(AVG(Total_Quantity_Ordered_Each_Day), 2) AS Avg_Quantity_Ordered
FROM
    (SELECT 
        ORDERS.order_date,
            SUM(order_details.quantity) AS Total_Quantity_Ordered_Each_Day
    FROM
        ORDERS
    JOIN order_details ON ORDERS.order_id = order_details.order_id
    GROUP BY ORDERS.order_date) AS Day_VS_Quantity;
