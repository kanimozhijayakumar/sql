-- ===============================================================
-- Title: INNER JOIN
-- Description: Demonstrates how to combine data from multiple
--              tables using INNER JOIN based on matching columns.
-- ===============================================================


/*
==============================================================
WHAT IS INNER JOIN?
==============================================================

INNER JOIN is used to retrieve records that have
matching values in both tables.

Only the rows that satisfy the join condition
are returned.

Syntax:

SELECT columns
FROM table1
INNER JOIN table2
ON table1.column = table2.column;
*/


/*
==============================================================
CREATE SAMPLE TABLES
==============================================================
*/

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(100),
    amount DECIMAL(10,2)
);



/*
==============================================================
INSERT SAMPLE DATA
==============================================================
*/

INSERT INTO customers VALUES
(1,'Ravi','Chennai'),
(2,'Priya','Bangalore'),
(3,'Arjun','Hyderabad'),
(4,'Meena','Chennai');

INSERT INTO orders VALUES
(101,1,'Laptop',50000),
(102,2,'Phone',20000),
(103,1,'Tablet',15000),
(104,3,'Headphones',3000);



/*
==============================================================
INNER JOIN EXAMPLE
==============================================================

Retrieve customer order details.
*/

SELECT
    customers.customer_name,
    customers.city,
    orders.product,
    orders.amount
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id;



/*
==============================================================
INNER JOIN WITH FILTER
==============================================================

Retrieve orders above 10000.
*/

SELECT
    customers.customer_name,
    orders.product,
    orders.amount
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id
WHERE orders.amount > 10000;
