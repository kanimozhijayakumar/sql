-- ===============================================================
-- Title: Comparison Operators
-- Description: Demonstrates comparison operators used in SQL
--              to filter data based on conditions.
-- ===============================================================


/*
==============================================================
WHAT ARE COMPARISON OPERATORS?
==============================================================

Comparison operators are used to compare two values
in a SQL query.

They are commonly used with the WHERE clause
to filter records.

Common comparison operators:

=   Equal
>   Greater than
<   Less than
>=  Greater than or equal
<=  Less than or equal
!=  Not equal
*/


/*
==============================================================
EQUAL TO (=)
==============================================================

Retrieve employees working in the IT department.
*/

SELECT *
FROM employees
WHERE department = 'IT';



/*
==============================================================
GREATER THAN (>)
==============================================================

Retrieve employees with salary greater than 60000.
*/

SELECT *
FROM employees
WHERE salary > 60000;



/*
==============================================================
LESS THAN (<)
==============================================================

Retrieve employees with salary less than 50000.
*/

SELECT *
FROM employees
WHERE salary < 50000;



/*
==============================================================
GREATER THAN OR EQUAL (>=)
==============================================================

Retrieve employees earning at least 60000.
*/

SELECT *
FROM employees
WHERE salary >= 60000;



/*
==============================================================
LESS THAN OR EQUAL (<=)
==============================================================

Retrieve employees earning up to 50000.
*/

SELECT *
FROM employees
WHERE salary <= 50000;



/*
==============================================================
NOT EQUAL (!=)
==============================================================

Retrieve employees not working in HR department.
*/

SELECT *
FROM employees
WHERE department != 'HR';
