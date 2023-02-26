-- 1.INTRODUCTION
-- ###################################################
-- What is Data? -In simple words, data can be facts related to any object.
-- For example:
--              Your name, age, and height are related to you
--              Pictures, images and files are considered to be data
-- So, to store data, we need a database.
-- What is Database? A database is a collection of information that is organized so 
--                  that it can easily accessed, managed and updated.
--                  To manage the data properly in database, we need 
--                  database management system.
-- What is Database Management System? A system sw for creating and manging databases
-- Provides users and programmers a systematic way to create, retrieve, update, and delete data.
-- Popular DBMS: MySQL, MSAccess, Teradata, Oracle, ...
-- Use cases of DBMS:Telephone system users' info database, Electric Bill System DBMS
-- Table: A table is a collection of related data held in a table format within a database. 
--        It consists of coulumns/ fields/ variables and rows/ records/ observations.

-----------------------------------------
-- WHat is SQLite? 
--                  An open source embedded DB
--                  Serverless and lightweight DB
--                  Installed as one of the python3 modules
-- Usecase:
--          SQLite is used likely more than all other DB engines combined.
--          SQLite is found in:
--                              Every Android Device
--                              Every iPhone and iOS device
--                              Every Mac
--                              Every Winows 10 Machine
--                              Every Firefox, Chrome, and Safari web browser
--                              Every Instance of Skype.

-- Features of SQLite
--                SQLIte doesn't require a separate server process or system to operate (serverless)
--                SQLite comes with zero-configuration, which means no setup or administration needed.
--                SQLite is self-contained, which means no external dependencies.
-- Install SQLite:
--                Install as standard python module
--                >SQLite3
-- Create DB:
--            > sqlite3 alem.db
--            > .databases
--                       /home/alem/0_Alem/sqlite/alem.db
--Tools:
--      DB Browser
--      SQLIteStudio

-------------------------------------
-- primary key: Uniquely identifies each record in the table.
--              We can have only one Primary key in a table.
--              Must contain UNIQUE values, and cannot contain NULL values.
-- Foreign key: Used to link two tables together. 
--              A field or set of fieldsin one table that refers to the PKin another table
--              Important for joining tables
-- Constraints: rules enforced on the columns of a table
--              used to limit the type of data that can go into a table.
--              column level or table level
--              Types:
/**                 NOT NULL Constraint − Ensures that a column cannot have NULL value.
                    DEFAULT Constraint − Provides a default value for a column when none is specified.
                    UNIQUE Constraint − Ensures that all values in a column are different.
                    PRIMARY Key − Uniquely identifies each row/record in a database table.
                    CHECK Constraint − Ensures that all values in a column satisfies certain conditions.
**/
-- Var_name, Type, Not Null, Primary Key, Autoincrement, Unique, Default, Collation, Foreign Key
-- COnstraints: Not Null, Primary Key, Autoincrement, Unique, Default, Collation, Foreign Key
-- Collation: Binary, Nocase, RTRIM, UTF16, UTF16CI
-- Type: Integer, Text, BLOB, Real Numeric

------------------------------------------

-- 2. DDL and DML Commands
-- ###################################################
-- DDL or Data Definition Language: used to create and modify the structure of database objects in database.
                                 -- Example: CREATE,ALTER,DROP,TRUNCATE

-- DML(Data Manipulation Language): The SQL commands that deal with the manipulation of data present in database belong to DML.
                                 -- Example: SELECT,INSERT,UPDATE,DELETE
                                 
CREATE TABLE cc
(
  id int PRIMARY KEY not NULL,
  Name varchar(10) NOt NULL,
  age int CHECK(age<40),
  Address varchar(10) UNIQUE,
  Salary int DEFAULT 1000
  
)

INSERT INTO cc VALUES(123, "Alem", 40, "ABC", 100000)

CREATE TABLE cc.bb(
  emp_no int PRIMARY KEY Not NULL,
  fn Text,
  ln Text,
  salary int,
  Dpt_ID int,
 );
                                 
INSERT INTO cc.bb VALUES(123, "Alem", "Fitwi", 10000, 200) 
INSERT INTO cc.bb VALUES(124, "Emma", "Haddush", 33, 201) 

-- Show Results
SELECT * FROM cc.bb; 

-- Delete and Drop
DELETE FROM cc.bb -- Deletes the whole table rows, but table is not deleted
DELETE FROM cc.bb
WHERE emp_no = 123 -- deletes rows selectively

DROP TABLE cc.bb -- table gets dropped/deleted
SELECT * FROM cc.bb -- gives error because it was dropped.

-- Alter
ALTER TABLE cc RENAME to emp -- renames tbl cc to emp; cc no longer exists
ALTER TABLE emp ADD af Text -- adds a new column

-- Update: updates existing values in DB
UPDATE emp
SET af='FALSE'
WHERE id IN (123, 128, 127);
SELECT * FROM emp

UPDATE emp
SET af='TRUE'
WHERE id 124;
SELECT * FROM emp

-- UNION/UNION ALL: UNION removes duplicate while UNION ALL keeps all
SELECT Name FROM emp
UNION -- Drops Duplicates; expensive in terms of performance
SELECT LastName FROM employees;

SELECT Name FROM emp
UNION ALL -- All are included;better in terms of performance
SELECT LastName FROM employees;

-- 3. STRING MANIPULATION
-- ###################################################                                 
-- substr: col, start_index, length
SELECT LastName, SUBSTR(LastName, 1, 2) AS substrs FROM employees;
-- 

-- 4. OPERATORS
-- ################################################### 


-- 5. AGGREGATE FUNCTIONS
-- ################################################### 



-- 6. JOINS
-- ################################################### 



-- 7. SUBQUERY
-- ################################################### 
                                 

-- 8. ANALYTICAL FUNCTIONS
-- ###################################################


-- 9. TRIGGERS IN SQL
-- ###################################################


-- 10. ADVANCED CONCEPTS
-- ###################################################
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
