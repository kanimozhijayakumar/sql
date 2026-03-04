-- ===============================================================
-- Title: Aggregate Functions
-- Description: Demonstrates how to perform calculations on
--              groups of rows using SQL aggregate functions. 
-- ===============================================================


/*
==============================================================
WHAT ARE AGGREGATE FUNCTIONS?
==============================================================

Aggregate functions perform calculations on
multiple rows and return a single result.

Common aggregate functions:

COUNT() → Counts rows
SUM()   → Adds values
AVG()   → Calculates average
MIN()   → Finds minimum value
MAX()   → Finds maximum value
*/


/*
==============================================================
CREATE SAMPLE TABLE
==============================================================
*/

CREATE TABLE CustomerTransactions (
    id INT PRIMARY KEY,
    login_device VARCHAR(50),
    customer_name VARCHAR(100),
    ip_address VARCHAR(20),
    product VARCHAR(100),
    amount DECIMAL(10,2),
    is_placed BOOLEAN,
    is_viewed BOOLEAN,
    transaction_status VARCHAR(20)
);



/*
==============================================================
INSERT SAMPLE DATA
==============================================================
*/

INSERT INTO CustomerTransactions VALUES
(1,'Mobile','Ravi','192.168.1.1','Laptop',50000,TRUE,FALSE,'Completed'),
(2,'Desktop','Priya','192.168.1.2','Smartphone',20000,TRUE,TRUE,'Completed'),
(3,'Tablet','Arjun','192.168.1.3','Headphones',1500,FALSE,TRUE,'Failed'),
(4,'Mobile','Meena','192.168.1.4','Shoes',2500,TRUE,FALSE,'Completed'),
(5,'Desktop','Karthik','192.168.1.5','Watch',5000,TRUE,TRUE,'Completed'),
(6,'Mobile','Sowmya','192.168.1.6','Tablet',15000,TRUE,TRUE,'Completed'),
(7,'Tablet','Ramesh','192.168.1.7','Smartphone',25000,FALSE,TRUE,'Failed'),
(8,'Desktop','Divya','192.168.1.8','Laptop',60000,TRUE,FALSE,'Completed'),
(9,'Mobile','Arun','192.168.1.9','Smartwatch',12000,TRUE,TRUE,'Completed'),
(10,'Tablet','Deepa','192.168.1.10','Laptop',55000,FALSE,FALSE,'Pending');



/*
==============================================================
COUNT FUNCTION
==============================================================

Counts total number of rows.
*/

SELECT COUNT(*) AS total_transactions
FROM CustomerTransactions;



/*
==============================================================
SUM FUNCTION
==============================================================

Calculates total transaction amount.
*/

SELECT SUM(amount) AS total_revenue
FROM CustomerTransactions;



/*
==============================================================
AVG FUNCTION
==============================================================

Calculates average transaction value.
*/

SELECT AVG(amount) AS average_transaction
FROM CustomerTransactions;



/*
==============================================================
MIN FUNCTION
==============================================================

Finds the smallest transaction amount.
*/

SELECT MIN(amount) AS minimum_transaction
FROM CustomerTransactions;



/*
==============================================================
MAX FUNCTION
==============================================================

Finds the highest transaction amount.
*/

SELECT MAX(amount) AS maximum_transaction
FROM CustomerTransactions;
