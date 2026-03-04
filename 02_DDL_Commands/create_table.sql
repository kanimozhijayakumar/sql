-- ===============================================================
-- Topic: CREATE TABLE Command
-- Description: Demonstrates how to create tables with different
--              data types and constraints.
-- ===============================================================


/*
==============================================================
WHAT IS DDL?
==============================================================

DDL stands for Data Definition Language.

DDL commands are used to define and modify
the structure of database objects.

Common DDL commands include:

• CREATE
• ALTER
• DROP
• TRUNCATE
*/


/*
==============================================================
CREATE TABLE
==============================================================

CREATE TABLE is used to create a new table
in a database.

Syntax:

CREATE TABLE table_name (
    column_name datatype constraint
);
*/


/*
==============================================================
EXAMPLE: CREATE PRODUCTS TABLE
==============================================================
*/

CREATE TABLE products (

    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock_quantity INT

);



/*
==============================================================
INSERT SAMPLE DATA
==============================================================
*/

INSERT INTO products VALUES
(1,'Laptop','Electronics',50000,10),
(2,'Smartphone','Electronics',25000,15),
(3,'Shoes','Fashion',3000,20),
(4,'Watch','Accessories',5000,12);



/*
==============================================================
VIEW TABLE DATA
==============================================================
*/

SELECT *
FROM products;



/*
==============================================================
CREATE ORDERS TABLE
==============================================================
*/

CREATE TABLE orders (

    order_id INT PRIMARY KEY,
    product_id INT,
    customer_name VARCHAR(100),
    order_date DATE,
    amount DECIMAL(10,2)

);



/*
==============================================================
VIEW ORDERS TABLE STRUCTURE
==============================================================
*/

DESCRIBE orders;
