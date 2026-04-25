# 🛒 E-Commerce Analytics using MySQL

## 📌 Project Overview

This project is a MySQL-based e-commerce database designed to analyze customer behavior, product performance, revenue, and order trends. It simulates a real-world online store and extracts meaningful business insights using SQL queries.

---

## 🧱 Database Structure

The project consists of the following tables:

* **customers** – stores customer details
* **products** – stores product information
* **orders** – stores order details
* **order_items** – stores product-level order data
* **payments** – stores payment information

---

## 🔍 Key Analysis Performed

### 👤 Top Customers by Spend

Identified customers who contributed the most revenue using joins and aggregations.

### 🏆 Best-Selling Products

Analyzed product popularity based on total quantity sold.

### 💰 Revenue by Product

Calculated revenue contribution of each product and ranked them using window functions.

### 📅 Monthly Revenue

Tracked revenue trends over time using date-based grouping.

### ❌ Cancelled Orders Analysis

Calculated total cancelled orders and cancellation percentage to evaluate business performance.

### 🌍 Cancelled Orders by City

Identified cities with the highest cancellation rates.

---

## 🛠️ SQL Concepts Used

* Joins (INNER JOIN)
* Aggregations (`SUM`, `COUNT`)
* GROUP BY & ORDER BY
* Window Functions (`RANK()`)
* Date Functions (`DATE_FORMAT`)
* Filtering with `WHERE`
* Foreign Keys & Relational Design

---

## 📊 Sample Insight

* Top customer identified based on total spending
* Revenue calculated using only **delivered orders** for accuracy
* Cancellation rate analyzed to detect operational issues

---

## 💻 Tools Used

* MySQL
* MySQL Workbench

---

## 🚀 Project Purpose

The goal of this project is to demonstrate practical SQL skills by solving real-world business problems using structured data and queries.

---

## 👨‍💻 Author

Abhijeet Kumar Sinha
