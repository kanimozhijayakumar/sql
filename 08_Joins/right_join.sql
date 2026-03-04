-- ===============================================================
-- Title: RIGHT JOIN
-- Description: Demonstrates how to retrieve all records from
--              the right table and matching records from the
--              left table using RIGHT JOIN.
-- ===============================================================


/*
==============================================================
WHAT IS RIGHT JOIN?
==============================================================

RIGHT JOIN returns:

• All rows from the RIGHT table
• Matching rows from the LEFT table

If there is no match in the left table,
NULL values will appear for the left table columns.

Syntax:

SELECT columns
FROM table1
RIGHT JOIN table2
ON table1.column = table2.column;
*/


/*
==============================================================
RIGHT JOIN EXAMPLE
==============================================================

Retrieve all orders and their customer details.

Even if an order has no matching customer,
the order will still appear in the result.
*/

SELECT
    customers.customer_name,
    customers.city,
    orders.product,
    orders.amount
FROM customers
RIGHT JOIN orders
ON customers.customer_id = orders.customer_id;



/*
==============================================================
RIGHT JOIN WITH FILTER
==============================================================

Retrieve all orders with amount greater than 10000.
*/

SELECT
    customers.customer_name,
    orders.product,
    orders.amount
FROM customers
RIGHT JOIN orders
ON customers.customer_id = orders.customer_id
WHERE orders.amount > 10000;
