-- ===============================================================
-- Title: WHERE Clause
-- Description: Demonstrates how to filter records using the
--              WHERE clause with different conditions.
-- ===============================================================


/*
==============================================================
WHAT IS WHERE?
==============================================================

The WHERE clause is used to filter records
based on specific conditions.

Only rows that satisfy the condition
will be returned.

Syntax:

SELECT column_name
FROM table_name
WHERE condition;
*/


/*
==============================================================
FILTER BY SINGLE CONDITION
==============================================================
*/

SELECT *
FROM employees
WHERE department = 'IT';



/*
==============================================================
FILTER USING COMPARISON OPERATORS
==============================================================

Common operators:

=   Equal
>   Greater than
<   Less than
>=  Greater than or equal
<=  Less than or equal
!=  Not equal
*/

SELECT *
FROM employees
WHERE salary > 60000;



/*
==============================================================
AND CONDITION
==============================================================

Returns records that satisfy both conditions.
*/

SELECT *
FROM employees
WHERE department = 'IT'
AND salary > 60000;



/*
==============================================================
OR CONDITION
==============================================================

Returns records that satisfy at least one condition.
*/

SELECT *
FROM employees
WHERE department = 'HR'
OR department = 'Finance';



/*
==============================================================
NOT CONDITION
==============================================================

Returns records that do NOT match the condition.
*/

SELECT *
FROM employees
WHERE NOT department = 'Sales';
