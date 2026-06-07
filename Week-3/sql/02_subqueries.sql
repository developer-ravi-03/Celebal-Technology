/*
Query 1:-

Find orders having sales greater than average sales.
Using Subquery.
*/

SELECT *
FROM orders
WHERE Sales >
(
    SELECT AVG(Sales)
    FROM orders
);

/*
Query 2:-

Find highest sales order for each customer.
Using Subquery.
*/

SELECT *
FROM orders o
WHERE Sales =
(
    SELECT MAX(Sales)
    FROM orders
    WHERE `Customer ID` = o.`Customer ID`
);