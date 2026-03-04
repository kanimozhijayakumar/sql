-- ===============================================================
-- Title: GROUP BY and HAVING
-- Description: Demonstrates how to group records and apply
--              conditions on aggregated data using GROUP BY
--              and HAVING clauses.
-- ===============================================================


/*
==============================================================
WHAT IS GROUP BY?
==============================================================

GROUP BY is used to group rows that have the same
values in specified columns.

It is commonly used with aggregate functions
such as SUM(), COUNT(), AVG(), MIN(), and MAX().

Syntax:

SELECT column_name, aggregate_function(column)
FROM table_name
GROUP BY column_name;
*/


/*
==============================================================
TOTAL REVENUE BY DEVICE
==============================================================

Calculate total transaction amount
based on login device.
*/

SELECT login_device,
       SUM(amount) AS total_revenue
FROM CustomerTransactions
GROUP BY login_device;



/*
==============================================================
COUNT TRANSACTIONS BY DEVICE
==============================================================
*/

SELECT login_device,
       COUNT(*) AS total_transactions
FROM CustomerTransactions
GROUP BY login_device;



/*
==============================================================
AVERAGE TRANSACTION BY DEVICE
==============================================================
*/

SELECT login_device,
       AVG(amount) AS average_amount
FROM CustomerTransactions
GROUP BY login_device;



/*
==============================================================
WHAT IS HAVING?
==============================================================

HAVING is used to filter grouped results.

Unlike WHERE, HAVING works with
aggregate functions.

Syntax:

SELECT column_name, aggregate_function(column)
FROM table_name
GROUP BY column_name
HAVING condition;
*/


/*
==============================================================
FILTER GROUPED RESULTS
==============================================================

Retrieve devices where total revenue
is greater than 80000.
*/

SELECT login_device,
       SUM(amount) AS total_revenue
FROM CustomerTransactions
GROUP BY login_device
HAVING SUM(amount) > 80000;



/*
==============================================================
GROUPING WITH MULTIPLE COLUMNS
==============================================================
*/

SELECT login_device,
       transaction_status,
       COUNT(*) AS transaction_count
FROM CustomerTransactions
GROUP BY login_device, transaction_status;
