-- Calculate the total revenue generated from pizza sales.

SELECT 
    ROUND(sum(order_details.quantity * pizzas.price),
            2) AS total_sales
FROM
    order_details
        JOIN
    pizzas ON pizzas.pizza_id = order_details.pizza_id;