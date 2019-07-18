/*
Sele��o b�sica buscando por colunas especificas
*/
SELECT first_name, last_name FROM customer

/*
Sele��o b�sica buscando por todas as colunas 
*/
SELECT * FROM film

SELECT * FROM film_actor

SELECT * FROM film_category
/* 
Sele��o apelidando as colunas 
*/
SELECT first_name as PrimeiroNome, last_name as SegundoNome
FROM customer
-- Exemplo 2 de como apelidar
SELECT first_name PrimeiroNome, last_name SegundoNome
FROM customer
-- Exemplo 3
SELECT first_name �Primeiro Nome� , last_name "Segundo Nome"
FROM customer

/* 
Sele��o efetuando opera��o matem�tica
*/
SELECT payment_id,  customer_id,  amount,  
amount + 10.0 as NovoValor
FROM payment

/*
Sele��o concatenando informa��es
*/
SELECT customer_id, first_name || last_name
FROM customer
-- Exemplo 2
SELECT customer_id, first_name || ' ' || last_name as NomeCompleto
FROM customer

/*
Sele��o apenas com dados �nicos utilizando o distinct
*/
SELECT distinct actor_id FROM film_actor

SELECT distinct category_id FROM film_category

/*
Sele��o limitando o n�mero de registros
*/
SELECT * FROM film LIMIT 100

/*
Sele��o limitando o n�mero de registros e retirando os primeiros 3 registros encontrados da listagem
*/
SELECT * FROM film limit 100 offset 3
