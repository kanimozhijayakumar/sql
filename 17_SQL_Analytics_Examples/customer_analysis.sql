-- ===============================================================
-- Title: Customer Analysis Queries
-- Description: Demonstrates SQL queries used to analyze
--              customer behavior and spending patterns.
-- ===============================================================


/*
==============================================================
TOTAL TRANSACTIONS PER CUSTOMER
==============================================================

Count the number of transactions made by each customer.
*/

SELECT
    customer_name,
    COUNT(*) AS total_transactions
FROM CustomerTransactions
GROUP BY customer_name
ORDER BY total_transactions DESC;



/*
==============================================================
TOTAL SPENDING PER CUSTOMER
==============================================================

Calculate total amount spent by each customer.
*/

SELECT
    customer_name,
    SUM(amount) AS total_spent
FROM CustomerTransactions
GROUP BY customer_name
ORDER BY total_spent DESC;



/*
==============================================================
TOP SPENDING CUSTOMERS
==============================================================

Retrieve customers who spent more than 30000.
*/

SELECT
    customer_name,
    SUM(amount) AS total_spent
FROM CustomerTransactions
GROUP BY customer_name
HAVING SUM(amount) > 30000
ORDER BY total_spent DESC;



/*
==============================================================
CUSTOMER DEVICE USAGE
==============================================================

Analyze which devices customers use most.
*/

SELECT
    login_device,
    COUNT(*) AS usage_count
FROM CustomerTransactions
GROUP BY login_device
ORDER BY usage_count DESC;



/*
==============================================================
FAILED TRANSACTIONS BY CUSTOMER
==============================================================

Identify customers with failed transactions.
*/

SELECT
    customer_name,
    COUNT(*) AS failed_transactions
FROM CustomerTransactions
WHERE transaction_status = 'Failed'
GROUP BY customer_name;
