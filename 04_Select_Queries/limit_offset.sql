-- ===============================================================
-- Title: LIMIT and OFFSET
-- Description: Demonstrates how to restrict the number of rows
--              returned in a query and implement pagination.
-- ===============================================================


/*
==============================================================
WHAT IS LIMIT?
==============================================================

LIMIT is used to restrict the number of rows
returned by a query.

It is commonly used when displaying
large datasets in applications.

Syntax:

SELECT column_name
FROM table_name
LIMIT number_of_rows;
*/


/*
==============================================================
LIMIT EXAMPLE
==============================================================

Retrieve only the first 3 employees.
*/

SELECT *
FROM employees
LIMIT 3;



/*
==============================================================
LIMIT WITH ORDER BY
==============================================================

Retrieve the top 5 highest paid employees.
*/

SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 5;



/*
==============================================================
WHAT IS OFFSET?
==============================================================

OFFSET is used to skip a specific number
of rows before starting to return results.

It is useful for pagination in applications.
*/


/*
==============================================================
LIMIT WITH OFFSET
==============================================================

Skip the first 3 records and retrieve
the next 3 records.
*/

SELECT *
FROM employees
LIMIT 3 OFFSET 3;



/*
==============================================================
PAGINATION EXAMPLE
==============================================================

Page size = 5

Page 1
*/

SELECT *
FROM employees
LIMIT 5 OFFSET 0;


/*
Page 2
*/

SELECT *
FROM employees
LIMIT 5 OFFSET 5;
