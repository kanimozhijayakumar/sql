-- ===============================================================
-- Topic: ALTER TABLE Command
-- Description: Demonstrates how to modify the structure of
--              existing tables using ALTER TABLE.
-- ===============================================================


/*
==============================================================
WHAT IS ALTER TABLE?
==============================================================

ALTER TABLE is used to modify the structure of an
existing table.

Using ALTER TABLE we can:

• Add new columns
• Modify existing columns
• Rename columns
• Drop columns
*/


/*
==============================================================
ADD COLUMN
==============================================================

We can add a new column to an existing table.
*/

ALTER TABLE products
ADD brand VARCHAR(50);



/*
==============================================================
MODIFY COLUMN
==============================================================

Used to change the datatype or size of a column.
*/

ALTER TABLE products
MODIFY price DECIMAL(12,2);



/*
==============================================================
RENAME COLUMN
==============================================================

Used to rename an existing column.
*/

ALTER TABLE products
RENAME COLUMN brand TO product_brand;



/*
==============================================================
DROP COLUMN
==============================================================

Used to remove a column from the table.
*/

ALTER TABLE products
DROP COLUMN stock_quantity;



/*
==============================================================
VIEW UPDATED TABLE STRUCTURE
==============================================================
*/

DESCRIBE products;
