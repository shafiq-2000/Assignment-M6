SELECT a.customer_name, SUM(o.total_amount) AS total_purchase_amount
FROM customers a
JOIN orders o ON a.customer_id = o.customer_id
GROUP BY a.customer_name
ORDER BY total_purchase_amount DESC
LIMIT 5;
