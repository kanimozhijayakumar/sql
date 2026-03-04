-- ===============================================================
-- Title: SQL Views
-- Description: Demonstrates how to create, use, and manage views
--              to simplify complex SQL queries.
-- ===============================================================


/*
==============================================================
WHAT IS A VIEW?
==============================================================

A VIEW is a virtual table created from a SQL query.

It does not store data physically but displays data
from one or more tables.

Views are useful for:

• simplifying complex queries
• restricting access to specific columns
• improving readability
*/


/*
==============================================================
CREATE VIEW
==============================================================

Syntax:

CREATE VIEW view_name AS
SELECT columns
FROM table_name
WHERE condition;
*/


/*
==============================================================
CREATE VIEW EXAMPLE
==============================================================

Create a view showing high salary employees.
*/

CREATE VIEW high_salary_employees AS
SELECT employee_id,
       employee_name,
       department,
       salary
FROM employees_salary
WHERE salary > 60000;



/*
==============================================================
VIEW DATA FROM VIEW
==============================================================
*/

SELECT *
FROM high_salary_employees;



/*
==============================================================
UPDATE VIEW
==============================================================

Views can be modified using CREATE OR REPLACE VIEW.
*/

CREATE OR REPLACE VIEW high_salary_employees AS
SELECT employee_id,
       employee_name,
       department,
       salary
FROM employees_salary
WHERE salary > 65000;



/*
==============================================================
DROP VIEW
==============================================================

Used to remove a view from the database.
*/

-- DROP VIEW high_salary_employees;
