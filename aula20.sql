CREATE TABLE IMPORTCSV
(
	NAME VARCHAR(100),
	AGE INT 
)

COPY IMPORTCSV 
FROM 'C:\aula20.csv' 
WITH DELIMITER ',';

SELECT * FROM IMPORTCSV;

COPY (SELECT * FROM customer) TO
'C:\post\CUSTOMER.csv' WITH CSV;

/*
usando pelo terminal

CSV
psql -U postgres -d DVDRental -t -A -F "," -c "SELECT * FROM CUSTOMER" > CUSTOMER2.csv


PGSQL
pg_dump -U postgres --table=CUSTOMER --data-only --column-inserts DVDRental > CUSTOMER4.txt
*/