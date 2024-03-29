CREATE TABLE DEPT
(
	DEPT INT,
	DNAME VARCHAR(20),
	LOC VARCHAR(50)
);

SELECT * FROM DEPT;

CREATE TABLE CUSTOMER_AUX AS 
SELECT * FROM CUSTOMER WHERE CUSTOMER_ID IN
(10,33,55)

SELECT * FROM CUSTOMER_AUX;

ALTER TABLE CUSTOMER_AUX ADD LOC_ID INT;

ALTER TABLE CUSTOMER_AUX ALTER LOC_ID SET DATA TYPE VARCHAR(10);

ALTER TABLE CUSTOMER_AUX RENAME LOC_ID TO TUELOQUI_ID;

ALTER TABLE CUSTOMER_AUX DROP TUELOQUI_ID;

ALTER TABLE CUSTOMER_AUX RENAME  TO JARBATOR;

SELECT * FROM JARBATOR;

DROP TABLE JARBATOR;

TRUNCATE TABLE CUSTOMER_AUX;