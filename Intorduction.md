# Database Fundamentals

This section explains the **basic concepts of databases and SQL**.
Understanding these concepts is important before writing SQL queries.

---

# 📌 What is Data?

**Data** refers to raw facts or information that can be stored and processed.

### Examples of Data

* Name
* Age
* Phone number
* Marks
* Address

Data is the **basic building block of any database system**.

---

# 📌 What is a Database?

A **Database** is an organized collection of data that is stored electronically and can be accessed, managed, and updated efficiently.

### Simple Meaning

> A database is like a **digital notebook used to store information safely**.

### Examples

* Student records in a school system
* Bank customer details
* Online shopping product data
* College result systems

---

# 📌 Why Do We Need a Database?

Without a database:

* Data can be lost easily
* Searching for information becomes slow
* Updating records becomes difficult
* Managing large amounts of data becomes messy

With a database:

* Data is stored safely
* Searching becomes faster
* Updating information is easy
* Large volumes of data can be managed efficiently

---

# 📌 What is a Table?

A **Table** is the structure used to store data in a database.

Data inside a table is stored in **rows and columns**, similar to an Excel sheet.

### Example Table

| Roll No | Name  | Marks |
| ------- | ----- | ----- |
| 1       | Arun  | 85    |
| 2       | Meena | 90    |

Each table represents a **specific type of data**, such as students, customers, or orders.

---

# 📌 What is a Column?

A **Column** represents a specific attribute or field in a table.

Each column stores **one type of data**.

### Examples

* Name column → stores student names
* Marks column → stores marks
* Phone column → stores phone numbers

In the example table:

* `Roll No` → column
* `Name` → column
* `Marks` → column

---

# 📌 What is a Row?

A **Row** represents a single record in the table.

Each row contains **complete information about one entity**.

### Example

| Roll No | Name | Marks |
| ------- | ---- | ----- |
| 1       | Arun | 85    |

This row represents **Arun's full record**.

---

# 📌 What is a Primary Key?

A **Primary Key** is a column used to uniquely identify each row in a table.

### Rules of a Primary Key

* Values must be **unique**
* Values **cannot be NULL**
* Each row must have a different value

### Example

In a student table:

| Roll No | Name  |
| ------- | ----- |
| 1       | Arun  |
| 2       | Meena |

Here, **Roll No** acts as the **Primary Key**.

Two students may have the same name, but they **cannot share the same Roll Number**.

---

# 📌 What is DBMS?

**DBMS (Database Management System)** is software that helps users create, manage, and interact with databases.

A DBMS allows users to:

* Create databases
* Store data
* Retrieve data
* Update records
* Delete records

### Popular DBMS Examples

* MySQL
* Oracle
* PostgreSQL
* SQL Server

---

# 📌 What is SQL?

**SQL (Structured Query Language)** is the language used to communicate with databases.

Using SQL we can:

* Retrieve data
* Insert new records
* Update existing records
* Delete records

### Simple Meaning

> SQL is the **language used to interact with databases**.

---

# 📌 4 Main SQL Commands (CRUD)

CRUD represents the four basic database operations.

| Operation | SQL Command | Purpose              |
| --------- | ----------- | -------------------- |
| Create    | INSERT      | Add new data         |
| Read      | SELECT      | Retrieve data        |
| Update    | UPDATE      | Modify existing data |
| Delete    | DELETE      | Remove data          |

### Memory Trick

**CRUD**

* **C** → Create → INSERT
* **R** → Read → SELECT
* **U** → Update → UPDATE
* **D** → Delete → DELETE

---

# 📌 Example: Student Table Operations

### Initial Table

| Roll No | Name  | Marks |
| ------- | ----- | ----- |
| 1       | Arun  | 85    |
| 2       | Meena | 90    |

---

### INSERT (Add Student)

| Roll No | Name  | Marks |
| ------- | ----- | ----- |
| 1       | Arun  | 85    |
| 2       | Meena | 90    |
| 3       | Kumar | 75    |

---

### UPDATE (Change Marks)

| Roll No | Name  | Marks |
| ------- | ----- | ----- |
| 3       | Kumar | 80    |

---

### DELETE (Remove Student)

| Roll No | Name  | Marks |
| ------- | ----- | ----- |
| 1       | Arun  | 85    |
| 2       | Meena | 90    |

---

This section provides a **foundation for learning SQL and relational databases**.
