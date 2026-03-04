-- ===============================================================
-- Title: SQL Window Functions
-- Description: Demonstrates advanced analytical functions
--              such as ROW_NUMBER, RANK, DENSE_RANK, LAG, and LEAD.
-- ===============================================================


/*
==============================================================
WHAT ARE WINDOW FUNCTIONS?
==============================================================

Window functions perform calculations across
a set of rows related to the current row.

Unlike GROUP BY, they do NOT collapse rows.

They are commonly used in analytics for:

• ranking
• running totals
• trend analysis
• comparing rows
*/


/*
==============================================================
ROW_NUMBER()
==============================================================

Assigns a unique row number to each row
within a result set.
*/

SELECT
    employee_name,
    department,
    salary,
    ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
FROM employees_salary;



/*
==============================================================
RANK()
==============================================================

Assigns ranking to rows.

If two rows have the same value,
the next rank will skip numbers.
*/

SELECT
    employee_name,
    department,
    salary,
    RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees_salary;



/*
==============================================================
DENSE_RANK()
==============================================================

Similar to RANK but does NOT skip numbers.
*/

SELECT
    employee_name,
    department,
    salary,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees_salary;



/*
==============================================================
PARTITION BY
==============================================================

Used to divide rows into partitions
before applying window functions.
*/

SELECT
    employee_name,
    department,
    salary,
    ROW_NUMBER() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS department_rank
FROM employees_salary;



/*
==============================================================
LAG()
==============================================================

Access data from the previous row.
*/

SELECT
    employee_name,
    salary,
    LAG(salary) OVER (ORDER BY salary) AS previous_salary
FROM employees_salary;



/*
==============================================================
LEAD()
==============================================================

Access data from the next row.
*/

SELECT
    employee_name,
    salary,
    LEAD(salary) OVER (ORDER BY salary) AS next_salary
FROM employees_salary;
