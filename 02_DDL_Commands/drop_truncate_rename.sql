-- ===============================================================
-- Title: DROP, TRUNCATE, and RENAME TABLE
-- Description: Demonstrates how to remove tables, delete table
--              data, and rename existing tables.
-- ===============================================================


/*
==============================================================
DROP TABLE
==============================================================

DROP TABLE is used to permanently remove a table
from the database.

This command deletes:

• Table structure
• All data stored in the table

Once a table is dropped, it cannot be recovered.
*/


-- Example

DROP TABLE orders;



/*
==============================================================
TRUNCATE TABLE
==============================================================

TRUNCATE TABLE removes all rows from a table
but keeps the table structure intact.

Key characteristics:

• Faster than DELETE
• Removes all records
• Cannot be rolled back in many databases
*/


-- Example

TRUNCATE TABLE products;



/*
==============================================================
RENAME TABLE
==============================================================

RENAME TABLE changes the name of an existing table.

This helps when restructuring or improving
database naming conventions.
*/


-- Example

RENAME TABLE products TO product_inventory;



/*
==============================================================
VIEW TABLES IN DATABASE
==============================================================

SHOW TABLES displays all tables present
in the current database.
*/

SHOW TABLES;
