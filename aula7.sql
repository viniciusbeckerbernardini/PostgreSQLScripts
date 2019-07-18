/*
Seleção básica buscando por colunas especificas
*/
SELECT first_name, last_name FROM customer

/*
Seleção básica buscando por todas as colunas 
*/
SELECT * FROM film

SELECT * FROM film_actor

SELECT * FROM film_category
/* 
Seleção apelidando as colunas 
*/
SELECT first_name as PrimeiroNome, last_name as SegundoNome
FROM customer
-- Exemplo 2 de como apelidar
SELECT first_name PrimeiroNome, last_name SegundoNome
FROM customer
-- Exemplo 3
SELECT first_name “Primeiro Nome” , last_name "Segundo Nome"
FROM customer

/* 
Seleção efetuando operação matemática
*/
SELECT payment_id,  customer_id,  amount,  
amount + 10.0 as NovoValor
FROM payment

/*
Seleção concatenando informações
*/
SELECT customer_id, first_name || last_name
FROM customer
-- Exemplo 2
SELECT customer_id, first_name || ' ' || last_name as NomeCompleto
FROM customer

/*
Seleção apenas com dados únicos utilizando o distinct
*/
SELECT distinct actor_id FROM film_actor

SELECT distinct category_id FROM film_category

/*
Seleção limitando o número de registros
*/
SELECT * FROM film LIMIT 100

/*
Seleção limitando o número de registros e retirando os primeiros 3 registros encontrados da listagem
*/
SELECT * FROM film limit 100 offset 3
