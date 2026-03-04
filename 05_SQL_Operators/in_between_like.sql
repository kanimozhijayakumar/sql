-- ===============================================================
-- Title: IN, BETWEEN, and LIKE Operators
-- Description: Demonstrates how to filter records using
--              IN, BETWEEN, and LIKE operators in SQL queries.
-- ===============================================================


/*
==============================================================
IN OPERATOR
==============================================================

The IN operator allows you to specify multiple values
in a WHERE clause.

It is useful when checking if a column value matches
any value from a list.

Syntax:

SELECT column_name
FROM table_name
WHERE column_name IN (value1, value2, value3);
*/


-- Example: Retrieve employees from IT or HR departments

SELECT *
FROM employees
WHERE department IN ('IT', 'HR');



/*
==============================================================
BETWEEN OPERATOR
==============================================================

BETWEEN is used to filter records within a range.

The range includes the starting and ending values.

Syntax:

SELECT column_name
FROM table_name
WHERE column_name BETWEEN value1 AND value2;
*/


-- Example: Employees with salary between 50000 and 70000

SELECT *
FROM employees
WHERE salary BETWEEN 50000 AND 70000;



/*
==============================================================
LIKE OPERATOR
==============================================================

LIKE is used for pattern matching in text columns.

Common wildcards:

%  → Represents multiple characters
_  → Represents a single character
*/


-- Example: Employees whose names start with 'R'

SELECT *
FROM employees
WHERE employee_name LIKE 'R%';



-- Example: Employees whose names end with 'a'

SELECT *
FROM employees
WHERE employee_name LIKE '%a';



-- Example: Employees whose name contains 'vi'

SELECT *
FROM employees
WHERE employee_name LIKE '%vi%';
