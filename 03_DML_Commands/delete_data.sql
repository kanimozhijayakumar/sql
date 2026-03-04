-- ===============================================================
-- Title: DELETE Command
-- Description: Demonstrates how to remove records from a table
--              using the DELETE statement with different conditions.
-- ===============================================================


/*
==============================================================
WHAT IS DELETE?
==============================================================

DELETE is used to remove records from a table.

Unlike TRUNCATE, DELETE allows removing specific
rows using conditions.

Syntax:

DELETE FROM table_name
WHERE condition;
*/


/*
==============================================================
DELETE A SPECIFIC RECORD
==============================================================
*/

DELETE FROM employees
WHERE employee_id = 7;



/*
==============================================================
DELETE MULTIPLE ROWS
==============================================================

This removes all employees belonging
to a specific department.
*/

DELETE FROM employees
WHERE department = 'Sales';



/*
==============================================================
DELETE ALL RECORDS FROM A TABLE
==============================================================

If DELETE is used without a WHERE clause,
all rows in the table will be removed.
*/

-- Example

-- DELETE FROM employees;



/*
==============================================================
VIEW REMAINING DATA
==============================================================
*/

SELECT *
FROM employees;
