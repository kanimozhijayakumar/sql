-- ===============================================================
-- Topic: Database Fundamentals
-- Description: Introduction to databases, DBMS, and SQL basics.
-- ===============================================================


/*
==============================================================
1. WHAT IS A DATABASE?
==============================================================

A database is an organized collection of structured data
stored electronically in a computer system.

Databases allow users to efficiently store, retrieve,
update, and manage large volumes of data.

Example:
A company database may store:

• Employee details
• Customer records
• Product information
• Sales transactions
*/


/*
==============================================================
2. WHAT IS DBMS?
==============================================================

DBMS stands for Database Management System.

It is software that allows users to interact with databases
by providing tools to create, maintain, and manipulate data.

Popular DBMS systems include:

• MySQL
• PostgreSQL
• Oracle Database
• Microsoft SQL Server
• SQLite
*/


/*
==============================================================
3. WHAT IS SQL?
==============================================================

SQL stands for Structured Query Language.

SQL is used to communicate with relational databases.

Using SQL we can:

• Create databases
• Create tables
• Insert data
• Retrieve data
• Update records
• Delete records
*/


/*
==============================================================
4. CREATE DATABASE
==============================================================
*/

CREATE DATABASE company_db;


/*
==============================================================
5. USE DATABASE
==============================================================
*/

USE company_db;


/*
==============================================================
6. CREATE TABLE
==============================================================

Tables store data in rows and columns.
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
7. INSERT DATA
==============================================================
*/

INSERT INTO employees VALUES
(1,'Ravi','IT',60000,'2022-01-10'),
(2,'Priya','HR',50000,'2021-05-15'),
(3,'Arjun','Finance',65000,'2020-08-20'),
(4,'Meena','IT',70000,'2023-02-12');


/*
==============================================================
8. RETRIEVE DATA
==============================================================
*/

SELECT * FROM employees;


/*
==============================================================
9. SELECT SPECIFIC COLUMNS
==============================================================
*/

SELECT employee_name, salary
FROM employees;


/*
==============================================================
10. FILTER DATA
==============================================================
*/

SELECT *
FROM employees
WHERE department = 'IT';


/*
==============================================================
11. SORT DATA
==============================================================
*/

SELECT *
FROM employees
ORDER BY salary DESC;
