-- ============================================================
-- 01_schema_exploration.sql
-- Customers and Products Analysis
-- Purpose: Explore the database structure and understand the data
-- ============================================================

USE classicmodels;


-- ============================================================
-- 1. List all tables
-- ============================================================

SHOW TABLES;


-- ============================================================
-- 2. Explore table structures
-- ============================================================

DESCRIBE customers;

DESCRIBE employees;

DESCRIBE offices;

DESCRIBE orders;

DESCRIBE orderdetails;

DESCRIBE payments;

DESCRIBE products;

DESCRIBE productlines;


-- ============================================================
-- 3. Check number of records in each table
-- ============================================================

SELECT COUNT(*) AS customer_count
FROM customers;

SELECT COUNT(*) AS employee_count
FROM employees;

SELECT COUNT(*) AS office_count
FROM offices;

SELECT COUNT(*) AS order_count
FROM orders;

SELECT COUNT(*) AS orderdetail_count
FROM orderdetails;

SELECT COUNT(*) AS payment_count
FROM payments;

SELECT COUNT(*) AS product_count
FROM products;

SELECT COUNT(*) AS productline_count
FROM productlines;


-- ============================================================
-- 4. Preview important tables
-- ============================================================

SELECT *
FROM customers
LIMIT 5;

SELECT *
FROM orders
LIMIT 5;

SELECT *
FROM orderdetails
LIMIT 5;

SELECT *
FROM products
LIMIT 5;

SELECT *
FROM productlines
LIMIT 5;


-- ============================================================
-- 5. Check the date range of orders
-- ============================================================

SELECT
    MIN(orderDate) AS first_order_date,
    MAX(orderDate) AS last_order_date
FROM orders;


-- ============================================================
-- 6. Check the date range of payments
-- ============================================================

SELECT
    MIN(paymentDate) AS first_payment_date,
    MAX(paymentDate) AS last_payment_date
FROM payments;