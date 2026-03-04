-- ===============================================================
-- Title: SQL Constraints
-- Description: Demonstrates different types of constraints used
--              to enforce rules on table data.
-- ===============================================================


/*
==============================================================
WHAT ARE CONSTRAINTS?
==============================================================

Constraints are rules applied to table columns
to ensure data accuracy and integrity.

Common constraints:

PRIMARY KEY
FOREIGN KEY
UNIQUE
NOT NULL
CHECK
DEFAULT
*/


/*
==============================================================
PRIMARY KEY
==============================================================

A PRIMARY KEY uniquely identifies each row
in a table.

Rules:

• Must contain unique values
• Cannot contain NULL values
*/

CREATE TABLE customers_constraints (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100)
);



/*
==============================================================
NOT NULL CONSTRAINT
==============================================================

Ensures a column cannot contain NULL values.
*/

CREATE TABLE employees_constraints (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    salary INT
);



/*
==============================================================
UNIQUE CONSTRAINT
==============================================================

Ensures all values in a column are unique.
*/

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50) UNIQUE,
    email VARCHAR(100)
);



/*
==============================================================
DEFAULT CONSTRAINT
==============================================================

Assigns a default value when no value is provided.
*/

CREATE TABLE orders_constraints (
    order_id INT PRIMARY KEY,
    product VARCHAR(100),
    status VARCHAR(20) DEFAULT 'Pending'
);



/*
==============================================================
CHECK CONSTRAINT
==============================================================

Ensures column values satisfy a specific condition.
*/

CREATE TABLE products_constraints (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10,2),
    CHECK (price > 0)
);



/*
==============================================================
FOREIGN KEY CONSTRAINT
==============================================================

A FOREIGN KEY links two tables together.

It ensures referential integrity.
*/

CREATE TABLE orders_fk (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(100),
    FOREIGN KEY (customer_id)
    REFERENCES customers_constraints(customer_id)
);
