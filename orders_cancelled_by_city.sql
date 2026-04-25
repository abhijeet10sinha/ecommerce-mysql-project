-- Cancelled orders by city

SELECT 
    c.city,
    COUNT(*) AS cancelled_orders
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE o.order_status = 'Cancelled'
GROUP BY c.city
ORDER BY cancelled_orders DESC;