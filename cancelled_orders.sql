-- Cancelled Orders Count

SELECT 
    COUNT(CASE WHEN order_status = 'Cancelled' THEN 1 END) AS cancelled_orders
FROM orders;