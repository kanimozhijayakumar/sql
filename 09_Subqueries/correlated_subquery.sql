-- ===============================================================
-- Title: Correlated Subqueries
-- Description: Demonstrates how correlated subqueries work by
--              referencing columns from the outer query.
-- ===============================================================


/*
==============================================================
WHAT IS A CORRELATED SUBQUERY?
==============================================================

A correlated subquery is a subquery that refers
to columns from the outer query.

Unlike normal subqueries, it runs once
for every row processed by the outer query.

Because of this, correlated subqueries
are often used for row-by-row comparisons.
*/


/*
==============================================================
EXAMPLE: EMPLOYEES EARNING ABOVE
DEPARTMENT AVERAGE
==============================================================

Retrieve employees whose salary is greater
than the average salary of their department.
*/

SELECT
    e1.employee_id,
    e1.employee_name,
    e1.department,
    e1.salary
FROM employees_salary e1
WHERE salary >
(
    SELECT AVG(e2.salary)
    FROM employees_salary e2
    WHERE e2.department = e1.department
);



/*
==============================================================
EXAMPLE: HIGHEST SALARY IN EACH DEPARTMENT
==============================================================

Retrieve employees who earn the highest salary
within their department.
*/

SELECT
    e1.employee_id,
    e1.employee_name,
    e1.department,
    e1.salary
FROM employees_salary e1
WHERE salary =
(
    SELECT MAX(e2.salary)
    FROM employees_salary e2
    WHERE e2.department = e1.department
);
