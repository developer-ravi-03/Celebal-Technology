/*
Query 5:-

Rank customers based on total sales.
*/

WITH customer_sales AS
(
    SELECT
        `Customer ID`,
        SUM(Sales) AS Total_Sales
    FROM orders
    GROUP BY `Customer ID`
)

SELECT
    `Customer ID`,
    Total_Sales,
    RANK() OVER
    (
        ORDER BY Total_Sales DESC
    ) AS Customer_Rank
FROM customer_sales;


/*
Query 6:-

Assign row numbers to each order
for every customer.
*/

SELECT
    `Customer ID`,
    `Order ID`,
    Sales,

    ROW_NUMBER() OVER
    (
        PARTITION BY `Customer ID`
        ORDER BY Sales DESC
    ) AS Row_Num

FROM orders;


/*
Query 7:-

Display top 3 customers based on total sales.
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
FROM
(
    SELECT
        `Customer ID`,
        Total_Sales,

        RANK() OVER
        (
            ORDER BY Total_Sales DESC
        ) AS Ranking

    FROM customer_sales
) x

WHERE Ranking <= 3;