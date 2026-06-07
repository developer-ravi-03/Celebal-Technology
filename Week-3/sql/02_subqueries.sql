/*
====================================================
Query 1
Find orders having sales greater than average sales.

Concept Used:
Subquery

Business Purpose:
Identify high-value orders.
====================================================
*/

SELECT *
FROM orders
WHERE Sales >
(
    SELECT AVG(Sales)
    FROM orders
);

/*
====================================================
Query 2
Find highest sales order for each customer.

Concept Used:
Correlated Subquery

Business Purpose:
Find customer's highest-value order.
====================================================
*/

SELECT *
FROM orders o
WHERE Sales =
(
    SELECT MAX(Sales)
    FROM orders
    WHERE `Customer ID` = o.`Customer ID`
);