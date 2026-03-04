-- ===============================================================
-- Title: FULL JOIN
-- Description: Demonstrates how to retrieve all records from
--              both tables using FULL JOIN.
-- ===============================================================


/*
==============================================================
WHAT IS FULL JOIN?
==============================================================

FULL JOIN returns:

• All rows from the LEFT table
• All rows from the RIGHT table

If a row does not have a match in the other table,
NULL values will appear.

Some databases (like MySQL) do not directly support
FULL JOIN, so it can be simulated using UNION.
*/


/*
==============================================================
FULL JOIN EXAMPLE
==============================================================

Retrieve all customers and all orders,
including unmatched records.
*/

SELECT
    customers.customer_name,
    customers.city,
    orders.product,
    orders.amount
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id

UNION

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
RESULT
==============================================================

• Customers without orders will appear
• Orders without customers will appear
• Matching records will appear normally
*/
