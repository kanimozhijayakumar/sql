-- ===============================================================
-- Title: SELF JOIN
-- Description: Demonstrates how a table can be joined with
--              itself to compare rows within the same table.
-- ===============================================================


/*
==============================================================
WHAT IS SELF JOIN?
==============================================================

A SELF JOIN occurs when a table is joined with itself.

It is commonly used when:

• comparing rows within the same table
• representing hierarchical relationships
• employee-manager relationships

Syntax:

SELECT columns
FROM table_name t1
JOIN table_name t2
ON t1.column = t2.column;
*/


/*
==============================================================
CREATE EMPLOYEE TABLE WITH MANAGER RELATIONSHIP
==============================================================
*/

CREATE TABLE employee_hierarchy (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    manager_id INT
);



/*
==============================================================
INSERT SAMPLE DATA
==============================================================
*/

INSERT INTO employee_hierarchy VALUES
(1,'Ravi',NULL),
(2,'Priya',1),
(3,'Arjun',1),
(4,'Meena',2),
(5,'Karthik',2);



/*
==============================================================
SELF JOIN EXAMPLE
==============================================================

Retrieve employees and their managers.
*/

SELECT
    e.employee_name AS employee,
    m.employee_name AS manager
FROM employee_hierarchy e
LEFT JOIN employee_hierarchy m
ON e.manager_id = m.employee_id;



/*
==============================================================
RESULT
==============================================================

Employee | Manager
--------------------
Priya    | Ravi
Arjun    | Ravi
Meena    | Priya
Karthik  | Priya
*/
