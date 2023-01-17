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


/*C. ALTER TABLE lets you add column to a table in db
--------------------------------------------------*/
ALTER TABLE test
ADD r6 TEXT;

;-----------------------------------------------------------------------
; D. AND is an operator that combines two conditions. Both conditions must
;    be true for the row to be included in the result set.

;-----------------------------------------------------------------------
