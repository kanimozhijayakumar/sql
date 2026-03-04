-- ===============================================================
-- Title: INSERT Command
-- Description: Demonstrates how to insert records into a table
--              using different INSERT techniques.
-- ===============================================================


/*
==============================================================
WHAT IS DML?
==============================================================

DML stands for Data Manipulation Language.

DML commands are used to manage the data
stored inside database tables.

Common DML commands:

• INSERT
• UPDATE
• DELETE
*/


/*
==============================================================
INSERT INTO
==============================================================

INSERT INTO is used to add new rows into a table.

Syntax:

INSERT INTO table_name (column1, column2)
VALUES (value1, value2);
*/


-- Example: Insert single record

INSERT INTO employees
(employee_id, employee_name, department, salary, hire_date)
VALUES
(5,'Karthik','Sales',45000,'2023-04-10');



/*
==============================================================
INSERT MULTIPLE ROWS
==============================================================

Multiple rows can be inserted in a single query.
*/

INSERT INTO employees
VALUES
(6,'Divya','Marketing',52000,'2023-05-01'),
(7,'Ramesh','IT',61000,'2023-05-15');



/*
==============================================================
INSERT SELECT
==============================================================

We can also insert records from another table.
*/

INSERT INTO product_inventory (product_id, product_name, category, price)
SELECT product_id, product_name, category, price
FROM products;



/*
==============================================================
VIEW INSERTED DATA
==============================================================
*/

SELECT *
FROM employees;
