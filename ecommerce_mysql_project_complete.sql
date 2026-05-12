-- ============================================================
-- E-Commerce Analytics Database Project | MySQL
-- Author: Abhijeet Kumar Sinha
-- Description:
-- This SQL script creates an e-commerce analytics database,
-- inserts sample data, and runs business analysis queries.
-- ============================================================

-- ============================================================
-- 1. DATABASE CREATION
-- ============================================================

DROP DATABASE IF EXISTS ecommerce_project;
CREATE DATABASE ecommerce_project;
USE ecommerce_project;

-- ============================================================
-- 2. TABLE CREATION
-- ============================================================

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(150) UNIQUE,
    city VARCHAR(50),
    signup_date DATE
);

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
    price DECIMAL(10, 2),
    stock INT,
    category VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    order_status VARCHAR(30),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY(order_id) REFERENCES orders(order_id),
    FOREIGN KEY(product_id) REFERENCES products(product_id)
);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    payment_mode VARCHAR(30),
    amount DECIMAL(10, 2),
    payment_date DATE,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

-- ============================================================
-- 3. INSERT SAMPLE DATA
-- ============================================================

-- Customers
INSERT INTO customers (name, email, city, signup_date) VALUES
('Amit Sharma','amit@gmail.com','Delhi','2025-01-01'),
('Neha Verma','neha@gmail.com','Mumbai','2025-01-02'),
('Rahul Khan','rahul@gmail.com','Bangalore','2025-01-03'),
('Pooja Nair','pooja@gmail.com','Chennai','2025-01-04'),
('Rohit Gupta','rohit@gmail.com','Delhi','2025-01-05'),
('Ananya Roy','ananya@gmail.com','Kolkata','2025-01-06'),
('Karan Mehta','karan@gmail.com','Ahmedabad','2025-01-07'),
('Simran Kaur','simran@gmail.com','Chandigarh','2025-01-08'),
('Mohit Jain','mohit@gmail.com','Jaipur','2025-01-09'),
('Sneha Patel','sneha@gmail.com','Surat','2025-01-10'),
('Vikram Singh','vikram@gmail.com','Lucknow','2025-01-11'),
('Alok Mishra','alok@gmail.com','Patna','2025-01-12'),
('Nidhi Agarwal','nidhi@gmail.com','Noida','2025-01-13'),
('Saurabh Verma','saurabh@gmail.com','Ghaziabad','2025-01-14'),
('Riya Sen','riya@gmail.com','Pune','2025-01-15'),
('Aditya Malhotra','aditya@gmail.com','Delhi','2025-01-16'),
('Kritika Shah','kritika@gmail.com','Mumbai','2025-01-17'),
('Yash Tiwari','yash@gmail.com','Kanpur','2025-01-18'),
('Mehul Joshi','mehul@gmail.com','Vadodara','2025-01-19'),
('Isha Kapoor','isha@gmail.com','Gurgaon','2025-01-20');

-- Products
INSERT INTO products (product_name, category, price, stock) VALUES
('Python Hoodie','Clothing',1999,50),
('Java Hoodie','Clothing',1899,40),
('Debugging Mug','Accessories',599,100),
('Code Like a Pro Mug','Accessories',649,80),
('DSA Notebook','Stationery',499,150),
('SQL Cheat Sheet','Stationery',299,200),
('Sticker Pack','Stationery',249,300),
('Algorithm T-Shirt','Clothing',1499,60),
('GitHub Cap','Accessories',799,70),
('Keyboard Mat','Accessories',999,90),
('Linux Hoodie','Clothing',2099,35),
('AI Nerd T-Shirt','Clothing',1599,55),
('Whiteboard Notebook','Stationery',699,120),
('Bug Hunter Mug','Accessories',549,100),
('Terminal Stickers','Stationery',199,250),
('Coder Bottle','Accessories',899,110),
('Late Night Hoodie','Clothing',2199,30),
('Python Socks','Accessories',399,140),
('DSA Flash Cards','Stationery',349,180),
('Clean Code Notebook','Stationery',599,130);

-- Orders
INSERT INTO orders (customer_id, order_date, order_status) VALUES
(1,'2025-02-01','Delivered'),
(2,'2025-02-02','Delivered'),
(3,'2025-02-03','Delivered'),
(4,'2025-02-04','Cancelled'),
(5,'2025-02-05','Delivered'),
(6,'2025-02-06','Pending'),
(7,'2025-02-07','Delivered'),
(8,'2025-02-08','Delivered'),
(9,'2025-02-09','Delivered'),
(10,'2025-02-10','Cancelled'),
(11,'2025-02-11','Delivered'),
(12,'2025-02-12','Delivered'),
(13,'2025-02-13','Pending'),
(14,'2025-02-14','Delivered'),
(15,'2025-02-15','Delivered'),
(16,'2025-02-16','Delivered'),
(17,'2025-02-17','Cancelled'),
(18,'2025-02-18','Delivered'),
(19,'2025-02-19','Delivered'),
(20,'2025-02-20','Delivered');

-- Order Items
INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1,1,1),(1,7,2),
(2,3,1),(2,5,1),
(3,8,1),
(4,2,1),
(5,6,3),
(6,4,1),
(7,10,1),
(8,12,2),
(9,15,3),
(10,9,1),
(11,11,1),
(12,13,1),
(13,14,2),
(14,16,1),
(15,17,1),
(16,18,2),
(17,19,1),
(18,20,1),
(19,1,1),
(20,5,2);

-- Payments
INSERT INTO payments (order_id, payment_mode, amount, payment_date) VALUES
(1,'UPI',2497,'2025-02-01'),
(2,'Credit Card',1098,'2025-02-02'),
(3,'UPI',1499,'2025-02-03'),
(5,'Debit Card',897,'2025-02-05'),
(7,'UPI',999,'2025-02-07'),
(8,'Credit Card',3198,'2025-02-08'),
(9,'UPI',747,'2025-02-09'),
(11,'UPI',2099,'2025-02-11'),
(12,'Debit Card',699,'2025-02-12'),
(14,'UPI',899,'2025-02-14'),
(15,'Credit Card',2199,'2025-02-15'),
(16,'UPI',798,'2025-02-16'),
(18,'Debit Card',599,'2025-02-18'),
(19,'UPI',1999,'2025-02-19'),
(20,'Credit Card',998,'2025-02-20');

-- ============================================================
-- 4. BUSINESS ANALYSIS QUERIES
-- ============================================================

-- Query 1: Total Payment Collected
SELECT 
    SUM(amount) AS total_payment_collected
FROM payments;

-- Query 2: Revenue by Product
SELECT 
    p.product_name,
    SUM(oi.quantity * p.price) AS total_revenue
FROM order_items oi
JOIN products p 
    ON oi.product_id = p.product_id
JOIN orders o 
    ON oi.order_id = o.order_id
WHERE o.order_status = 'Delivered'
GROUP BY p.product_name
ORDER BY total_revenue DESC;

-- Query 3: Best-Selling Products
SELECT 
    p.product_name,
    SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products p 
    ON oi.product_id = p.product_id
JOIN orders o 
    ON oi.order_id = o.order_id
WHERE o.order_status = 'Delivered'
GROUP BY p.product_name
ORDER BY total_sold DESC;

-- Query 4: Monthly Revenue
SELECT 
    DATE_FORMAT(o.order_date, '%Y-%m') AS month,
    SUM(p.price * oi.quantity) AS monthly_revenue
FROM orders o
JOIN order_items oi 
    ON o.order_id = oi.order_id
JOIN products p 
    ON oi.product_id = p.product_id
WHERE o.order_status = 'Delivered'
GROUP BY DATE_FORMAT(o.order_date, '%Y-%m')
ORDER BY month;

-- Query 5: Cancelled Orders Count
SELECT 
    COUNT(CASE WHEN order_status = 'Cancelled' THEN 1 END) AS cancelled_orders
FROM orders;

-- Query 6: Cancelled Orders by City
SELECT 
    c.city,
    COUNT(*) AS cancelled_orders
FROM orders o
JOIN customers c 
    ON o.customer_id = c.customer_id
WHERE o.order_status = 'Cancelled'
GROUP BY c.city
ORDER BY cancelled_orders DESC;

-- Query 7: Top Customers by Spend
SELECT 
    c.name,
    SUM(p.price * oi.quantity) AS total_spent
FROM customers c
JOIN orders o 
    ON c.customer_id = o.customer_id
JOIN order_items oi 
    ON o.order_id = oi.order_id
JOIN products p 
    ON oi.product_id = p.product_id
WHERE o.order_status = 'Delivered'
GROUP BY c.name
ORDER BY total_spent DESC;

-- Query 8: Top Customers by Spend with Ranking
SELECT 
    c.name,
    SUM(p.price * oi.quantity) AS total_spent,
    RANK() OVER (ORDER BY SUM(p.price * oi.quantity) DESC) AS customer_rank
FROM customers c
JOIN orders o 
    ON c.customer_id = o.customer_id
JOIN order_items oi 
    ON o.order_id = oi.order_id
JOIN products p 
    ON oi.product_id = p.product_id
WHERE o.order_status = 'Delivered'
GROUP BY c.name
ORDER BY customer_rank;


-- Query 9: Total Orders by Status
SELECT 
    order_status,
    COUNT(*) AS total_orders
FROM orders
GROUP BY order_status
ORDER BY total_orders DESC;


-- Query 10: Revenue by Category
SELECT 
    p.category,
    SUM(oi.quantity * p.price) AS category_revenue
FROM order_items oi
JOIN products p 
    ON oi.product_id = p.product_id
JOIN orders o 
    ON oi.order_id = o.order_id
WHERE o.order_status = 'Delivered'
GROUP BY p.category
ORDER BY category_revenue DESC;


-- Query 11: Best-Selling Category by Quantity
SELECT 
    p.category,
    SUM(oi.quantity) AS total_quantity_sold
FROM order_items oi
JOIN products p 
    ON oi.product_id = p.product_id
JOIN orders o 
    ON oi.order_id = o.order_id
WHERE o.order_status = 'Delivered'
GROUP BY p.category
ORDER BY total_quantity_sold DESC;


-- Query 12: Average Order Value
SELECT 
    ROUND(AVG(order_total), 2) AS average_order_value
FROM (
    SELECT 
        o.order_id,
        SUM(oi.quantity * p.price) AS order_total
    FROM orders o
    JOIN order_items oi 
        ON o.order_id = oi.order_id
    JOIN products p 
        ON oi.product_id = p.product_id
    WHERE o.order_status = 'Delivered'
    GROUP BY o.order_id
) AS order_summary;


-- Query 13: City-wise Revenue
SELECT 
    c.city,
    SUM(oi.quantity * p.price) AS city_revenue
FROM customers c
JOIN orders o 
    ON c.customer_id = o.customer_id
JOIN order_items oi 
    ON o.order_id = oi.order_id
JOIN products p 
    ON oi.product_id = p.product_id
WHERE o.order_status = 'Delivered'
GROUP BY c.city
ORDER BY city_revenue DESC;


-- Query 14: Payment Mode Usage
SELECT 
    payment_mode,
    COUNT(*) AS total_transactions,
    SUM(amount) AS total_amount
FROM payments
GROUP BY payment_mode
ORDER BY total_amount DESC;


-- Query 15: Products with Low Stock
SELECT 
    product_name,
    category,
    stock
FROM products
WHERE stock < 50
ORDER BY stock ASC;


-- Query 16: Cancellation Rate
SELECT 
    ROUND(
        (SUM(CASE WHEN order_status = 'Cancelled' THEN 1 ELSE 0 END) / COUNT(*)) * 100,
        2
    ) AS cancellation_rate_percentage
FROM orders;

-- Query 17: Delivered Order Percentage
SELECT 
    ROUND(
        (SUM(CASE WHEN order_status = 'Delivered' THEN 1 ELSE 0 END) / COUNT(*)) * 100,
        2
    ) AS delivered_order_percentage
FROM orders;


-- Query 18: Most Expensive Products
SELECT 
    product_name,
    category,
    price
FROM products
ORDER BY price DESC
LIMIT 5;


-- Query 19: Customer Revenue Ranking by City
SELECT 
    city,
    name,
    total_spent,
    RANK() OVER (PARTITION BY city ORDER BY total_spent DESC) AS city_rank
FROM (
    SELECT 
        c.city,
        c.name,
        SUM(oi.quantity * p.price) AS total_spent
    FROM customers c
    JOIN orders o 
        ON c.customer_id = o.customer_id
    JOIN order_items oi 
        ON o.order_id = oi.order_id
    JOIN products p 
        ON oi.product_id = p.product_id
    WHERE o.order_status = 'Delivered'
    GROUP BY c.city, c.name
) AS customer_spend;

-- ============================================================
-- End of Project Script
-- ============================================================
