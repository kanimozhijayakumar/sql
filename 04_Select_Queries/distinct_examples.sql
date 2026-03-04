-- ===============================================================
-- Title: DISTINCT Keyword
-- Description: Demonstrates how to remove duplicate values
--              from query results using DISTINCT.
-- ===============================================================


/*
==============================================================
WHAT IS DISTINCT?
==============================================================

The DISTINCT keyword is used to remove duplicate
values from the result set.

It ensures that each returned value is unique.

Syntax:

SELECT DISTINCT column_name
FROM table_name;
*/


/*
==============================================================
DISTINCT ON SINGLE COLUMN
==============================================================

Retrieve unique department names from employees table.
*/

SELECT DISTINCT department
FROM employees;



/*
==============================================================
DISTINCT ON MULTIPLE COLUMNS
==============================================================

DISTINCT can also be applied to multiple columns.
*/

SELECT DISTINCT department, salary
FROM employees;



/*
==============================================================
DISTINCT WITH ORDER BY
==============================================================

DISTINCT can be combined with ORDER BY
to sort unique results.
*/

SELECT DISTINCT department
FROM employees
ORDER BY department;



/*
==============================================================
DISTINCT WITH CONDITIONS
==============================================================
*/

SELECT DISTINCT department
FROM employees
WHERE salary > 50000;
