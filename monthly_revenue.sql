-- Monthly Revenue

SELECT 
	DATE_FORMAT(o.order_date, '%Y-%m') AS month,
	SUM(p.price * oi.quantity) AS monthly_revenue
FROM orders o 
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
WHERE o.order_status = 'Delivered'
GROUP BY DATE_FORMAT(o.order_date, '%Y-%m')
ORDER BY month;