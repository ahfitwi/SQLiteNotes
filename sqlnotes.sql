/*CREATE TABLE creates a table
--------------------------------------------------*/
CREATE TABLE "test" (
	"r1"	INTEGER,
	"r2"	INTEGER,
	"r3"	INTEGER,
	"r4"	INTEGER,
	"r5"	TEXT,
	"r6"	TEXT
   );

/*B. INSERT INTO statements are used to add a new row 
  to a table.
--------------------------------------------------*/
INSERT INTO test (r1, r2, r3, r4, r5, r6)
VALUES (1,2,3,1,'alem', 'fitwi');

INSERT INTO test (r1, r2, r3, r4, r5, r6)
VALUES (2,5,2,3,'brook', 'haddush');

INSERT INTO test (r1, r2, r3, r4, r5, r6)
VALUES (1,4,5,1,'emma', 'haddush');

/*
1	2	3	1	alem	fitwi
5	2	3	1	brook	haddush
1	4	5	1	emma	haddush
1	4	5	1	emma	haddush

*/


/*C. ALTER TABLE lets you add column to a table in db
--------------------------------------------------*/
ALTER TABLE test
ADD r6 TEXT;

/*-----------------------------------------------------------------------
D. AND is an operator that combines two conditions. Both conditions must
    be true for the row to be included in the result set.*/
SELECT * FROM test
where r1 > 1 AND r3 >= 2;
/*-----------------------------------------------------------------------
E. WITH  clause lets you store the result of a query in a temporary table
   using an alias. You can also define multiple temporary tables using a
   comma and with one instance of the WITH keyword.
*/
WITH test1 AS (SELECT * FROM test)
SELECT * from test1
WHERE r3>=2;

/*-----------------------------------------------------------------------
WHERE is a clause that indicates you want to filter the result set to 
include only rows where the following condition is true.
*/
SELECT * from test1
WHERE r3==4;
/*-----------------------------------------------------------------------
SELECT DISTINCT specifies that the statement is gonna ne a query that 
returns unique values in the specified column(s)
*/
SELECT DISTINCT r1 FROM test;
SELECT DISTINCT * FROM test;
/*-----------------------------------------------------------------------
SUM()
*/
SELECT SUM(r1) from test;

/*-----------------------------------------------------------------------
UPDATE statements allow you to edit rows in a table.
*/
 
UPDATE table_name
SET r1 = 7
WHERE r1 == 1;

