-- ===============================================================
-- Title: Common Table Expressions (CTE)
-- Description: Demonstrates how to use CTEs to create temporary
--              result sets that simplify complex SQL queries.
-- ===============================================================


/*
==============================================================
WHAT IS A CTE?
==============================================================

A Common Table Expression (CTE) is a temporary
result set defined within a SQL statement.

It is created using the WITH keyword.

CTEs are useful for:

• simplifying complex queries
• improving readability
• replacing subqueries
*/


/*
==============================================================
CTE BASIC SYNTAX
==============================================================

WITH cte_name AS
(
    SELECT columns
    FROM table
)
SELECT *
FROM cte_name;
*/


/*
==============================================================
CTE EXAMPLE
==============================================================

Retrieve employees earning above the average salary.
*/

WITH avg_salary AS
(
    SELECT AVG(salary) AS avg_sal
    FROM employees_salary
)

SELECT *
FROM employees_salary
WHERE salary >
(
    SELECT avg_sal
    FROM avg_salary
);



/*
==============================================================
CTE WITH AGGREGATION
==============================================================

Calculate department average salary
and display employees above that average.
*/

WITH dept_avg_salary AS
(
    SELECT
        department,
        AVG(salary) AS avg_salary
    FROM employees_salary
    GROUP BY department
)

SELECT
    e.employee_name,
    e.department,
    e.salary
FROM employees_salary e
JOIN dept_avg_salary d
ON e.department = d.department
WHERE e.salary > d.avg_salary;



/*
==============================================================
MULTIPLE CTE EXAMPLE
==============================================================
*/

WITH total_sales AS
(
    SELECT login_device,
           SUM(amount) AS revenue
    FROM CustomerTransactions
    GROUP BY login_device
),

high_revenue_devices AS
(
    SELECT *
    FROM total_sales
    WHERE revenue > 50000
)

SELECT *
FROM high_revenue_devices;
