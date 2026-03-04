-- ===============================================================
-- Title: Window Functions
-- Description: Window functions perform calculations across
--              a set of table rows related to the current row
--              without collapsing the result set.
-- ===============================================================


/*
==============================================================
WHAT IS A WINDOW FUNCTION?
==============================================================

A Window Function performs calculations across a
set of rows that are related to the current row.

Unlike GROUP BY, window functions do not reduce
the number of rows returned.

Common clauses used:
- PARTITION BY → divides rows into groups
- ORDER BY → defines the order inside each partition
*/


/*
==============================================================
EXAMPLE DATASET
==============================================================
*/

DROP TABLE IF EXISTS Sales;

CREATE TABLE Sales (
    TransactionID INT,
    Store VARCHAR(50),
    SalesAmount DECIMAL(10,2)
);

INSERT INTO Sales VALUES
(1,'A',100),
(2,'A',200),
(3,'A',150),
(4,'B',250),
(5,'B',300);



/*
==============================================================
AGGREGATE WINDOW FUNCTION
==============================================================

Calculate running total of sales per store.
*/

SELECT
TransactionID,
Store,
SalesAmount,
SUM(SalesAmount) OVER(
    PARTITION BY Store
    ORDER BY TransactionID
) AS RunningTotal
FROM Sales;



/*
==============================================================
ROW_NUMBER()
==============================================================

Assigns a unique sequential number to each row.
*/

SELECT
TransactionID,
Store,
SalesAmount,
ROW_NUMBER() OVER(
    PARTITION BY Store
    ORDER BY SalesAmount DESC
) AS RowNumber
FROM Sales;



/*
==============================================================
RANK()
==============================================================

Assigns rank with gaps if values are tied.
*/

DROP TABLE IF EXISTS Students;

CREATE TABLE Students (
StudentID INT,
StudentName VARCHAR(100),
ExamScore INT
);

INSERT INTO Students VALUES
(1,'Alice',95),
(2,'Bob',90),
(3,'Charlie',95),
(4,'David',85),
(5,'Eva',90);


SELECT
StudentID,
StudentName,
ExamScore,
RANK() OVER(
ORDER BY ExamScore DESC
) AS ScoreRank
FROM Students;



/*
==============================================================
DENSE_RANK()
==============================================================

Assigns ranking without gaps.
*/

SELECT
StudentID,
StudentName,
ExamScore,
DENSE_RANK() OVER(
ORDER BY ExamScore DESC
) AS DenseRank
FROM Students;



/*
==============================================================
NTILE()
==============================================================

Divides rows into equal groups.
*/

DROP TABLE IF EXISTS EmployeeSales;

CREATE TABLE EmployeeSales(
EmployeeID INT,
EmployeeName VARCHAR(100),
SalesAmount DECIMAL(10,2)
);

INSERT INTO EmployeeSales VALUES
(1,'Alice',10000),
(2,'Bob',8500),
(3,'Charlie',7500),
(4,'David',6000),
(5,'Eva',11000),
(6,'Frank',4500),
(7,'Grace',3000),
(8,'Hank',4000),
(9,'Ivy',8000),
(10,'Jack',9500);


SELECT
EmployeeID,
EmployeeName,
SalesAmount,
NTILE(4) OVER(
ORDER BY SalesAmount DESC
) AS PerformanceGroup
FROM EmployeeSales;



/*
==============================================================
PERCENT_RANK()
==============================================================

Calculates the relative rank of rows.
*/

SELECT
EmployeeID,
EmployeeName,
SalesAmount,
PERCENT_RANK() OVER(
ORDER BY SalesAmount DESC
) AS PercentRank
FROM EmployeeSales;



/*
==============================================================
LAG()
==============================================================

Accesses data from the previous row.
*/

DROP TABLE IF EXISTS EmployeeSalaries;

CREATE TABLE EmployeeSalaries(
EmployeeID INT,
EmployeeName VARCHAR(100),
Salary DECIMAL(10,2),
Year INT
);

INSERT INTO EmployeeSalaries VALUES
(1,'Alice',5000,2023),
(1,'Alice',5500,2024),
(2,'Bob',4500,2023),
(2,'Bob',4800,2024);


SELECT
EmployeeID,
EmployeeName,
Year,
Salary,
LAG(Salary) OVER(
PARTITION BY EmployeeID
ORDER BY Year
) AS PreviousSalary
FROM EmployeeSalaries;



/*
==============================================================
LEAD()
==============================================================

Accesses data from the next row.
*/

SELECT
EmployeeID,
EmployeeName,
Year,
Salary,
LEAD(Salary) OVER(
PARTITION BY EmployeeID
ORDER BY Year
) AS NextSalary
FROM EmployeeSalaries;



/*
==============================================================
FIRST_VALUE()
==============================================================

Returns the first value within the partition.
*/

SELECT
EmployeeID,
EmployeeName,
Year,
Salary,
FIRST_VALUE(Salary) OVER(
PARTITION BY EmployeeID
ORDER BY Year
) AS FirstSalary
FROM EmployeeSalaries;



/*
==============================================================
LAST_VALUE()
==============================================================

Returns the last value in the partition.
*/

SELECT
EmployeeID,
EmployeeName,
Year,
Salary,
LAST_VALUE(Salary) OVER(
PARTITION BY EmployeeID
ORDER BY Year
ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING
) AS LastSalary
FROM EmployeeSalaries;



/*
==============================================================
NTH_VALUE()
==============================================================

Returns the Nth value from the partition.
*/

SELECT
EmployeeID,
EmployeeName,
Salary,
NTH_VALUE(Salary,2) OVER(
PARTITION BY EmployeeID
ORDER BY Year
ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
) AS SecondSalary
FROM EmployeeSalaries;
