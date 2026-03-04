-- ===============================================================
-- Title: Multi Row Subqueries
-- Description: Demonstrates subqueries that return multiple rows
--              and how to use operators like IN, ANY, and ALL.
-- ===============================================================


/*
==============================================================
WHAT IS A MULTI ROW SUBQUERY?
==============================================================

A multi-row subquery returns more than one row.

Because multiple values are returned, special
operators must be used to compare them.

Common operators used with multi-row subqueries:

IN
ANY
ALL
*/


/*
==============================================================
IN OPERATOR WITH SUBQUERY
==============================================================

Retrieve employees working in departments
that exist in another table.
*/

CREATE TABLE departments (
    department_name VARCHAR(50)
);

INSERT INTO departments VALUES
('IT'),
('Finance');

SELECT *
FROM employees_salary
WHERE department IN
(
    SELECT department_name
    FROM departments
);



/*
==============================================================
ANY OPERATOR
==============================================================

Retrieve employees whose salary is greater
than ANY salary in the Sales department.
*/

SELECT *
FROM employees_salary
WHERE salary > ANY
(
    SELECT salary
    FROM employees_salary
    WHERE department = 'Sales'
);



/*
==============================================================
ALL OPERATOR
==============================================================

Retrieve employees whose salary is greater
than ALL salaries in the Sales department.
*/

SELECT *
FROM employees_salary
WHERE salary > ALL
(
    SELECT salary
    FROM employees_salary
    WHERE department = 'Sales'
);
