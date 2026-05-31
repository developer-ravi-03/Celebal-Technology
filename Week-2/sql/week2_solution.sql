-- Create Database and Use it  
CREATE DATABASE celebal_week2;
USE celebal_week2;

-- =====================
-- SECTION A
-- =====================

-- Q1: Write a query to display all columns and rows from the customer's table. 
SELECT * FROM customers;

-- Q2: Retrieve only the first_name, last_name, and city of all customers.
SELECT
first_name,
last_name,
city
FROM customers;

-- Q3: List all unique categories available in the products table. 
SELECT DISTINCT category
FROM products; 

-- Q6: Try inserting a product with unit_price = -50.
INSERT INTO products
VALUES
(
209,
'Test Product',
'Electronics',
'TestBrand',
-50,
100
); 

-- =====================
-- SECTION B
-- =====================

-- Q7: Retrieve all orders with status = 'Delivered'.
SELECT *
FROM orders
WHERE status='Delivered';

-- Q8: Find all products in the 'Electronics' category with a unit_price greater than ₹2000.
SELECT *
FROM products
WHERE category='Electronics'
AND unit_price > 2000;

-- Q9: List all customers who joined in the year 2024 and belong to the state 'Maharashtra'. 
SELECT *
FROM customers
WHERE state='Maharashtra'
AND join_date
BETWEEN '2024-01-01'
AND '2024-12-31';

-- Q10: Find all orders placed between '2024-08-10' and '2024-08-25' (inclusive) that are NOT cancelled.
SELECT *
FROM orders
WHERE order_date
BETWEEN '2024-08-10'
AND '2024-08-25'
AND status <> 'Cancelled';

