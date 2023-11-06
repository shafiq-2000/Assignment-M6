SELECT a.order_id, P.product_name, a.quantity,(a.quantity * P.unit_price) AS total_amount
FROM OrderItems a
JOIN Products P ON a.product_id = P.product_id
ORDER BY a.order_id ASC;
