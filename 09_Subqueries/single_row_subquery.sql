-- ===============================================================
-- Title: Single Row Subquery
-- Description: Demonstrates how to use subqueries that return
--              a single value in SQL queries.
-- ===============================================================


/*
==============================================================
WHAT IS A SUBQUERY?
==============================================================

A subquery is a query nested inside another SQL query.

It is used to retrieve data that will be used
by the main query.

Subqueries are often used with:

• WHERE clause
• FROM clause
• SELECT clause
*/


/*
==============================================================
WHAT IS A SINGLE ROW SUBQUERY?
==============================================================

A single row subquery returns exactly one value.

It is typically used with comparison operators
such as:

=   Equal
>   Greater than
<   Less than
*/


/*
==============================================================
CREATE SAMPLE TABLE
==============================================================
*/

CREATE TABLE employees_salary (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary INT
);



/*
==============================================================
INSERT SAMPLE DATA
==============================================================
*/

INSERT INTO employees_salary VALUES
(1,'Ravi','IT',60000),
(2,'Priya','HR',50000),
(3,'Arjun','Finance',70000),
(4,'Meena','IT',65000),
(5,'Karthik','Sales',45000);



/*
==============================================================
SUBQUERY EXAMPLE
==============================================================

Retrieve employees who earn more than
the average salary.
*/

SELECT *
FROM employees_salary
WHERE salary >
(
    SELECT AVG(salary)
    FROM employees_salary
);



/*
==============================================================
SUBQUERY WITH MAX VALUE
==============================================================

Retrieve the employee with the highest salary.
*/

SELECT *
FROM employees_salary
WHERE salary =
(
    SELECT MAX(salary)
    FROM employees_salary
);
