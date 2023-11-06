SELECT a.customer_id,a.customer_name, a.email,
COUNT(o.order_id) AS total_orders
FROM customers a
LEFT JOIN orders o ON a.customer_id = o.customer_id
GROUP BY  a.customer_id, a.customer_name, a.email
ORDER BY total_orders DESC;