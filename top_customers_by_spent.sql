-- Top customers by spend
SELECT 
	c.name, 
    SUM(p.price * oi.quantity) AS total_spent
FROM customers c 
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
WHERE o.order_status = 'Delivered'
GROUP BY c.name
ORDER BY total_spent DESC;

-- “I calculated customer spending using joins across transactional tables 
-- and used window functions to rank customers based on revenue contribution.”