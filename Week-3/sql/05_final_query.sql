/*
Final query:-

Shows customer name,
total sales and rank.
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
    c.`Customer Name`,
    cs.Total_Sales,

    RANK() OVER
    (
        ORDER BY cs.Total_Sales DESC
    ) AS Customer_Rank

FROM customer_sales cs

JOIN customers c
ON cs.`Customer ID` = c.`Customer ID`;