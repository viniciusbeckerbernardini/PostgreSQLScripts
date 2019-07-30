VACUUM (FULL,VERBOSE) rental

CREATE TABLE copy_rental 
AS SELECT * FROM rental

SELECT 
pg_size_pretty(pg_relation_size('copy_rental'));

DELETE from copy_rental;

VACUUM (FULL,VERBOSE) rental;

ANALYSE VERBOSE rental

REINDEX TABLE rental;

EXPLAIN SELECT 
c.customer_id, 
c.first_name, 
p.amount, 
p.payment_date,
s.first_name,
s.last_name
FROM CUSTOMER C
INNER JOIN PAYMENT P
ON p.customer_id = c.customer_id
INNER JOIN staff s on p.staff_id = s.staff_id
