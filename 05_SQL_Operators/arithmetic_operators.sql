-- ===============================================================
-- Title: Arithmetic Operators
-- Description: Demonstrates arithmetic operations such as
--              addition, subtraction, multiplication, and division
--              in SQL queries.
-- ===============================================================


/*
==============================================================
WHAT ARE ARITHMETIC OPERATORS?
==============================================================

Arithmetic operators are used to perform mathematical
calculations on numeric columns.

Common arithmetic operators:

+  Addition
-  Subtraction
*  Multiplication
/  Division
*/


/*
==============================================================
ADDITION OPERATOR
==============================================================

Calculate salary bonus by adding a fixed amount.
*/

SELECT
    employee_name,
    salary,
    salary + 5000 AS bonus_salary
FROM employees;



/*
==============================================================
SUBTRACTION OPERATOR
==============================================================

Calculate salary after deduction.
*/

SELECT
    employee_name,
    salary,
    salary - 2000 AS salary_after_deduction
FROM employees;



/*
==============================================================
MULTIPLICATION OPERATOR
==============================================================

Calculate annual salary from monthly salary.
*/

SELECT
    employee_name,
    salary,
    salary * 12 AS annual_salary
FROM employees;



/*
==============================================================
DIVISION OPERATOR
==============================================================

Divide annual salary to calculate monthly average.
*/

SELECT
    employee_name,
    salary,
    (salary * 12) / 12 AS calculated_salary
FROM employees;
