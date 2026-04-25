-- Best Selling Products

SELECT 
    p.product_name,
    SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN orders o ON oi.order_id = o.order_id
WHERE o.order_status = 'Delivered'
GROUP BY p.product_name
ORDER BY total_sold DESC;

-- “Identified best-selling products by analyzing order-level data using joins
-- and aggregations, filtering only completed transactions to ensure accuracy.”