/*
1. Top 5 customers based on total sales.
*/

WITH customer_sales AS
(
    SELECT
        `Customer ID`,
        SUM(Sales) AS Total_Sales
    FROM orders
    GROUP BY `Customer ID`
)

SELECT *
FROM customer_sales
ORDER BY Total_Sales DESC
LIMIT 5;



/*
2. Bottom 5 customers based on total sales.
*/

WITH customer_sales AS
(
    SELECT
        `Customer ID`,
        SUM(Sales) AS Total_Sales
    FROM orders
    GROUP BY `Customer ID`
)

SELECT *
FROM customer_sales
ORDER BY Total_Sales ASC
LIMIT 5;



/*
3. Customers who placed only one order.
*/

SELECT
    `Customer ID`,
    COUNT(`Order ID`) AS Total_Orders
FROM orders
GROUP BY `Customer ID`
HAVING COUNT(`Order ID`) = 1;



/*
4. Customers whose total sales are above average.
*/

WITH customer_sales AS
(
    SELECT
        `Customer ID`,
        SUM(Sales) AS Total_Sales
    FROM orders
    GROUP BY `Customer ID`
)

SELECT *
FROM customer_sales
WHERE Total_Sales >
(
    SELECT AVG(Total_Sales)
    FROM customer_sales
);



/*
5. Highest order value for each customer.
*/

SELECT o.*
FROM orders o
JOIN
(
    SELECT
        `Customer ID`,
        MAX(Sales) AS max_sales
    FROM orders
    GROUP BY `Customer ID`
) m
ON o.`Customer ID` = m.`Customer ID`
AND o.Sales = m.max_sales;