-- ===============================================================
-- Title: Stored Procedures
-- Description: Demonstrates how to create and execute stored
--              procedures for reusable SQL logic.
-- ===============================================================


/*
==============================================================
WHAT IS A STORED PROCEDURE?
==============================================================

A Stored Procedure is a precompiled SQL program
stored in the database.

It allows developers to:

• reuse SQL logic
• improve performance
• reduce repeated SQL code
• enforce business rules
*/


/*
==============================================================
CREATE STORED PROCEDURE
==============================================================

Syntax:

CREATE PROCEDURE procedure_name()
BEGIN
    SQL statements
END;
*/


DELIMITER $$

CREATE PROCEDURE get_all_employees()
BEGIN
    SELECT *
    FROM employees_salary;
END $$

DELIMITER ;



/*
==============================================================
EXECUTE STORED PROCEDURE
==============================================================
*/

CALL get_all_employees();



/*
==============================================================
PROCEDURE WITH PARAMETERS
==============================================================

Stored procedures can accept input parameters.
*/

DELIMITER $$

CREATE PROCEDURE get_employee_by_department(
    IN dept_name VARCHAR(50)
)
BEGIN
    SELECT *
    FROM employees_salary
    WHERE department = dept_name;
END $$

DELIMITER ;



/*
==============================================================
CALL PROCEDURE WITH PARAMETER
==============================================================
*/

CALL get_employee_by_department('IT');



/*
==============================================================
DROP STORED PROCEDURE
==============================================================
*/

-- DROP PROCEDURE get_all_employees;
