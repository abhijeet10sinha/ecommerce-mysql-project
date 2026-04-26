# 🛒 E-Commerce Analytics using MySQL

📌 Project Overview

This project simulates a real-world e-commerce analytics database using MySQL. It focuses on extracting meaningful business insights related to customer behavior, product performance, revenue trends, and order cancellations.


🎯 Business Objectives

Identify high-value customers
Analyze product performance
Track revenue trends over time
Detect operational issues through cancellations


🧱 Database Schema

The project uses a relational database with the following tables:
  customers – Customer information
  products – Product details and pricing
  orders – Order transactions and status
  order_items – Product-level order data
  payments – Payment transactions

  
🔍 Key Analysis

👤 Top Customers by Spend
Identified customers contributing the highest revenue
Calculated using joins and aggregation functions

🏆 Best-Selling Products
Determined top products based on total quantity sold
Helps understand customer demand

💰 Revenue by Product
Calculated revenue using price × quantity
Ranked products using RANK() window function

📅 Monthly Revenue Trend
Analyzed revenue trends using DATE_FORMAT()
Helps identify growth patterns and seasonality

❌ Order Cancellation Analysis
Calculated total cancelled orders
Measured cancellation percentage

🌍 Cancellation by City
Identified cities with the highest cancellations
Useful for detecting operational issues

📊 Key Insights
A small number of customers generate a large portion of revenue
Top products significantly impact total sales
Revenue trends fluctuate monthly
High cancellations may indicate logistics or service issues

🛠️ SQL Skills Used
Joins (INNER JOIN)
Aggregations (SUM, COUNT)
GROUP BY & ORDER BY
Window Functions (RANK)
Date Functions (DATE_FORMAT)
Filtering (WHERE clause)
Relational Database Design

💻 Tools
MySQL
MySQL Workbench

📂 Project Structure
ecommerce-analytics/
│
├── schema.sql      # Table creation scripts
├── data.sql        # Sample data
├── analysis.sql    # Business queries
└── README.md

🚀 Project Outcome
This project demonstrates the ability to:
  Work with structured relational data
  Write optimized SQL queries
  Generate business insights from raw data


The goal of this project is to demonstrate practical SQL skills by solving real-world business problems using structured data and queries.

---

## 👨‍💻 Author

Abhijeet Kumar Sinha
