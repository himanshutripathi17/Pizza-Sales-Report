-- Determine the distribution of orders by hour of the day.

SELECT 
    HOUR(orders.order_time),
    COUNT(order_id) AS Quantity_Per_Hour
FROM
    Orders
GROUP BY HOUR(orders.order_time)
ORDER BY Quantity_Per_Hour DESC