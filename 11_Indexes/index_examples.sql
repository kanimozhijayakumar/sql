-- ===============================================================
-- Title: SQL Indexes
-- Description: Demonstrates how indexes improve query performance
--              by allowing faster data retrieval.
-- ===============================================================


/*
==============================================================
WHAT IS AN INDEX?
==============================================================

An index is a database object used to improve
the speed of data retrieval operations.

Indexes work similar to an index in a book.
Instead of scanning the entire table,
the database uses the index to locate data faster.

Indexes are commonly created on:

• Primary keys
• Foreign keys
• Frequently searched columns
*/


/*
==============================================================
CREATE INDEX
==============================================================

Syntax:

CREATE INDEX index_name
ON table_name(column_name);
*/


-- Example: Create index on employee_name

CREATE INDEX idx_employee_name
ON employees_salary(employee_name);



/*
==============================================================
CREATE UNIQUE INDEX
==============================================================

A UNIQUE index ensures that the indexed column
contains only unique values.
*/

CREATE UNIQUE INDEX idx_employee_id
ON employees_salary(employee_id);



/*
==============================================================
VIEW TABLE DATA
==============================================================
*/

SELECT *
FROM employees_salary;



/*
==============================================================
DROP INDEX
==============================================================

Used to remove an index from a table.
*/

-- Example

-- DROP INDEX idx_employee_name;
