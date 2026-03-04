-- ===============================================================
-- Title: UPDATE Command
-- Description: Demonstrates how to modify existing records
--              in a database table using the UPDATE statement.
-- ===============================================================


/*
==============================================================
WHAT IS UPDATE?
==============================================================

UPDATE is used to modify existing records in a table.

This command allows you to change one or more
column values for rows that match a specific condition.

Syntax:

UPDATE table_name
SET column1 = value1
WHERE condition;
*/


/*
==============================================================
UPDATE A SINGLE COLUMN
==============================================================
*/

UPDATE employees
SET salary = 65000
WHERE employee_id = 1;



/*
==============================================================
UPDATE MULTIPLE COLUMNS
==============================================================
*/

UPDATE employees
SET department = 'Management',
    salary = 70000
WHERE employee_id = 3;



/*
==============================================================
UPDATE MULTIPLE ROWS
==============================================================

When the WHERE condition matches multiple rows,
all matching rows will be updated.
*/

UPDATE employees
SET salary = salary + 2000
WHERE department = 'IT';



/*
==============================================================
VIEW UPDATED DATA
==============================================================
*/

SELECT *
FROM employees;
