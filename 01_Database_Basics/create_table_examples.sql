-- ===============================================================
-- Topic: Creating Tables in SQL
-- Description: Demonstrates how to create tables with different
--              column types and constraints.
-- ===============================================================


/*
==============================================================
WHAT IS A TABLE?
==============================================================

A table is a database object used to store data
in rows and columns.

Each table consists of:

• Columns (attributes)
• Rows (records)

Example:
An employee table may store information such as:

employee_id
employee_name
department
salary
hire_date
*/


/*
==============================================================
CREATE TABLE SYNTAX
==============================================================

CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype
);
*/


/*
==============================================================
CREATE EMPLOYEES TABLE
==============================================================
*/

CREATE TABLE employees (

    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE

);



/*
==============================================================
INSERT SAMPLE DATA
==============================================================
*/

INSERT INTO employees VALUES
(1,'Ravi','IT',60000,'2022-01-10'),
(2,'Priya','HR',50000,'2021-05-15'),
(3,'Arjun','Finance',65000,'2020-08-20'),
(4,'Meena','Marketing',55000,'2023-02-12');



/*
==============================================================
VIEW TABLE DATA
==============================================================
*/

SELECT *
FROM employees;



/*
==============================================================
CREATE ANOTHER TABLE
==============================================================

Example: Customers table
*/

CREATE TABLE customers (

    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    email VARCHAR(100)

);



/*
==============================================================
INSERT CUSTOMER DATA
==============================================================
*/

INSERT INTO customers VALUES
(1,'Ramesh','Chennai','ramesh@email.com'),
(2,'Divya','Bangalore','divya@email.com'),
(3,'Karthik','Hyderabad','karthik@email.com');



/*
==============================================================
VIEW CUSTOMER TABLE
==============================================================
*/

SELECT *
FROM customers;
