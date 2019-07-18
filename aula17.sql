SELECT * FROM PG_LANGUAGE
SELECT * FROM PG_PROC


create function soma(p1 int, p2 int) returns integer as
	'select p1 + p2;'
language 'sql'

create function multiplica(p1 int, p2 int) returns integer as
	'select p1 * p2;'
language 'sql'

select soma(5,2);

select multiplica(121,121);

drop function soma(p1 int, p2 int);

drop function multiplica(p1 int, p2 int);


CREATE OR REPLACE FUNCTION CLIENTES_ATIVOS()
RETURNS SETOF CUSTOMER AS
'SELECT * FROM CUSTOMER WHERE ACTIVE = 1;'
LANGUAGE 'sql';

SELECT CLIENTES_ATIVOS();

SELECT FIRST_NAME, ACTIVE FROM CLIENTES_ATIVOS();

SELECT * FROM CLIENTES_ATIVOS();

CREATE TABLE PERSON
(
id SERIAL PRIMARY KEY,
first_name TEXT,
last_name TEXT
);

CREATE OR REPLACE FUNCTION insert_person(text,text)
RETURNS void AS
$delimiter$
INSERT INTO PERSON (first_name,last_name) VALUES($1,$2)
$delimiter$
LANGUAGE sql;


CREATE OR REPLACE FUNCTION format_person(person)
RETURNS text AS
$$
	SELECT $1.first_name||' '|| $1.last_name;
$$
LANGUAGE sql;

SELECT insert_person('Jonh','caraquejó');

SELECT format_person(person.*) FROM person;


CREATE FUNCTION a_function () RETURNS int4 AS
'
DECLARE 
	an_integer int4;
BEGIN
	an_integer:=10 * 10;
	return an_integer;
END;
'
LANGUAGE 'plpgsql';

select a_function() as output;

CREATE OR REPLACE FUNCTION fib (fib_for integer) RETURNS integer as $$
BEGIN
	IF fib_for < 2 THEN
		return fib_for;
	END IF;
	RETURN fib(fib_for - 2) + fib(fib_for - 1);
	END;
	$$
	LANGUAGE plpgsql;

select fib(8)
