-- ===============================================================
-- Title: Sales Analysis Queries
-- Description: Demonstrates real-world SQL analytics queries
--              used for business and sales insights.
-- ===============================================================


/*
==============================================================
TOTAL SALES REVENUE
==============================================================

Calculate total revenue from all transactions.
*/

SELECT
    SUM(amount) AS total_revenue
FROM CustomerTransactions;



/*
==============================================================
TOTAL TRANSACTIONS
==============================================================
*/

SELECT
    COUNT(*) AS total_transactions
FROM CustomerTransactions;



/*
==============================================================
TOP SELLING PRODUCTS
==============================================================

Find products generating the highest revenue.
*/

SELECT
    product,
    SUM(amount) AS product_revenue
FROM CustomerTransactions
GROUP BY product
ORDER BY product_revenue DESC;



/*
==============================================================
SALES BY DEVICE
==============================================================

Analyze revenue generated from different devices.
*/

SELECT
    login_device,
    SUM(amount) AS total_revenue
FROM CustomerTransactions
GROUP BY login_device
ORDER BY total_revenue DESC;



/*
==============================================================
AVERAGE ORDER VALUE
==============================================================

Calculate average transaction value.
*/

SELECT
    AVG(amount) AS average_order_value
FROM CustomerTransactions;



/*
==============================================================
SUCCESSFUL TRANSACTIONS
==============================================================

Retrieve completed transactions.
*/

SELECT *
FROM CustomerTransactions
WHERE transaction_status = 'Completed';
