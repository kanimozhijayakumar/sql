-- ===============================================================
-- Title: LEFT JOIN
-- Description: Demonstrates how to retrieve all records from
--              the left table and matching records from the
--              right table using LEFT JOIN.
-- ===============================================================


/*
==============================================================
WHAT IS LEFT JOIN?
==============================================================

LEFT JOIN returns:

• All rows from the LEFT table
• Matching rows from the RIGHT table

If no match exists in the right table,
NULL values are returned.

Syntax:

SELECT columns
FROM table1
LEFT JOIN table2
ON table1.column = table2.column;
*/


/*
==============================================================
LEFT JOIN EXAMPLE
==============================================================

Retrieve all customers and their orders.
If a customer has no orders,
the order columns will contain NULL values.
*/

SELECT
    customers.customer_name,
    customers.city,
    orders.product,
    orders.amount
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id;



/*
==============================================================
LEFT JOIN WITH CONDITION
==============================================================

Retrieve all customers with orders above 10000.
Customers without orders will still appear.
*/

SELECT
    customers.customer_name,
    orders.product,
    orders.amount
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
WHERE orders.amount > 10000;
