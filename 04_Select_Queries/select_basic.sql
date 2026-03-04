-- ===============================================================
-- Title: Basic SELECT Query
-- Description: Demonstrates how to retrieve data from tables
--              using the SELECT statement.
-- ===============================================================


/*
==============================================================
WHAT IS SELECT?
==============================================================

The SELECT statement is used to retrieve data
from one or more tables in a database.

It is the most commonly used SQL command
for querying data.

Syntax:

SELECT column_name
FROM table_name;
*/


/*
==============================================================
SELECT ALL COLUMNS
==============================================================

The asterisk (*) symbol retrieves all columns
from the specified table.
*/

SELECT *
FROM employees;



/*
==============================================================
SELECT SPECIFIC COLUMNS
==============================================================

We can retrieve only specific columns instead
of the entire table.
*/

SELECT employee_name, department, salary
FROM employees;



/*
==============================================================
SELECT WITH CALCULATED COLUMN
==============================================================

We can perform calculations while retrieving data.
*/

SELECT employee_name,
       salary,
       salary * 12 AS annual_salary
FROM employees;



/*
==============================================================
RETRIEVE DATA FROM ANOTHER TABLE
==============================================================
*/

SELECT *
FROM products;



/*
==============================================================
ALIAS IN SELECT
==============================================================

Aliases are used to give temporary names
to columns in the result.
*/

SELECT employee_name AS name,
       salary AS monthly_salary
FROM employees;
