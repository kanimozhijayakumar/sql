-- ===============================================================
-- Title: Temporary Tables
-- Description: Demonstrates how to create and use temporary
--              tables for storing intermediate query results.
-- ===============================================================


/*
==============================================================
WHAT IS A TEMPORARY TABLE?
==============================================================

A Temporary Table is a table that exists only
during the database session.

It is automatically removed when the session ends.

Temporary tables are useful for:

• storing intermediate results
• simplifying complex queries
• improving query performance
*/


/*
==============================================================
CREATE TEMPORARY TABLE
==============================================================

Syntax:

CREATE TEMPORARY TABLE table_name (
    column_name datatype
);
*/


CREATE TEMPORARY TABLE temp_high_salary (
    employee_id INT,
    employee_name VARCHAR(100),
    salary INT
);



/*
==============================================================
INSERT DATA INTO TEMP TABLE
==============================================================
*/

INSERT INTO temp_high_salary
SELECT
    employee_id,
    employee_name,
    salary
FROM employees_salary
WHERE salary > 60000;



/*
==============================================================
VIEW TEMPORARY TABLE DATA
==============================================================
*/

SELECT *
FROM temp_high_salary;



/*
==============================================================
USE TEMP TABLE IN ANALYSIS
==============================================================

Retrieve average salary from temporary table.
*/

SELECT AVG(salary) AS avg_high_salary
FROM temp_high_salary;



/*
==============================================================
DROP TEMP TABLE
==============================================================

Temporary tables can also be removed manually.
*/

DROP TEMPORARY TABLE temp_high_salary;
