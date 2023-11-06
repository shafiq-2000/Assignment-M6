SELECT p.category_name,SUM(o.quantity * o.product_price) AS total_revenue
FROM Products p
JOIN Orders o ON p.product_id = o.product_id
GROUP BY p.category_name
ORDER BY total_revenue DESC;
