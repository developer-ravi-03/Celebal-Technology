/*
====================================================
Create Customers Table
Purpose:
Store unique customer information.
====================================================
*/

CREATE TABLE customers AS
SELECT DISTINCT
    `Customer ID`,
    `Customer Name`,
    Segment,
    Country,
    City,
    State,
    Region
FROM superstore_raw;

/*
====================================================
Create Products Table
Purpose:
Store unique product information.
====================================================
*/

CREATE TABLE products AS
SELECT DISTINCT
    `Product ID`,
    `Product Name`,
    Category,
    `Sub-Category`
FROM superstore_raw;

/*
====================================================
Create Orders Table
Purpose:
Store order transaction information.
====================================================
*/

CREATE TABLE orders AS
SELECT DISTINCT
    `Order ID`,
    `Order Date`,
    `Ship Date`,
    `Ship Mode`,
    `Customer ID`,
    `Product ID`,
    Sales,
    Quantity,
    Discount,
    Profit
FROM superstore_raw;