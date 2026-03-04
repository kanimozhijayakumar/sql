-- ===============================================================
-- Title: ORDER BY Clause
-- Description: Demonstrates how to sort query results using
--              the ORDER BY clause.
-- ===============================================================


/*
==============================================================
WHAT IS ORDER BY?
==============================================================

ORDER BY is used to sort the result set of a query
based on one or more columns.

Sorting can be done in:

ASC  → Ascending order (default)
DESC → Descending order

Syntax:

SELECT column_name
FROM table_name
ORDER BY column_name ASC|DESC;
*/


/*
==============================================================
SORT DATA IN ASCENDING ORDER
==============================================================

Ascending order sorts values from lowest to highest.
*/

SELECT *
FROM employees
ORDER BY salary ASC;



/*
==============================================================
SORT DATA IN DESCENDING ORDER
==============================================================

Descending order sorts values from highest to lowest.
*/

SELECT *
FROM employees
ORDER BY salary DESC;



/*
==============================================================
SORT BY MULTIPLE COLUMNS
==============================================================

Sorting can be applied to multiple columns.
*/

SELECT *
FROM employees
ORDER BY department ASC, salary DESC;



/*
==============================================================
SORT USING COLUMN POSITION
==============================================================

Columns can also be referenced by their position
in the SELECT statement.
*/

SELECT employee_name, department, salary
FROM employees
ORDER BY 3 DESC;
