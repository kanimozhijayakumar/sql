-- ===============================================================
-- Topic: Creating and Managing Databases
-- Description: Demonstrates how to create, use, and remove databases.
-- ===============================================================


/*
==============================================================
WHAT IS A DATABASE?
==============================================================

A database is a structured collection of data stored
electronically for efficient access, management,
and updating.

Databases are used in many applications such as:

• Banking systems
• E-commerce platforms
• Employee management systems
• Customer relationship management systems
*/


/*
==============================================================
CREATE DATABASE
==============================================================

CREATE DATABASE is used to create a new database
in the database management system.

Syntax:

CREATE DATABASE database_name;
*/

CREATE DATABASE company_database;


/*
==============================================================
USE DATABASE
==============================================================

USE command selects a database so that
all subsequent SQL operations are executed
within that database.

Syntax:

USE database_name;
*/

USE company_database;


/*
==============================================================
SHOW DATABASES
==============================================================

SHOW DATABASES displays all databases
available in the database server.
*/

SHOW DATABASES;


/*
==============================================================
DROP DATABASE
==============================================================

DROP DATABASE removes the database permanently.

Note:
This operation deletes all tables and data
stored inside the database.
*/

-- Example

-- DROP DATABASE company_database;
