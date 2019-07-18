/*
Seleção com clausula WHERE
Traz resultados onde o que for especificado existir
*/
-- Exemplo 1
SELECT * FROM customer where active = 1
-- Exemplo 2
SELECT * FROM customer where active = 0
-- Exemplo 3 com strings
SELECT * FROM customer where last_name = ‘Smith’
-- Exemplo 4 com strings e invertido
SELECT * FROM customer where ‘Smith’  = last_name
-- Exemplo 5 com datas
SELECT * FROM customer where create_date = ‘2006-02-14’
-- Exemplo 6 com comparadores lógicos
SELECT * FROM film where length >= 120
-- Exemplo 7 com comparador de não igualdade
SELECT * FROM film where rating <> 'NC-17'

/*
Seleção com between
Traz os dados entre o intervalo dos dados especificados, incluindo os extremos
*/
SELECT * FROM film
WHERE rental_duration BETWEEN 2 AND 4


/*
Seleção com in
Traz os dados que tenham os valores especificados
*/
SELECT * FROM film
WHERE rental_rate IN (0.99,2.99)

/*
Seleção com like nos permite buscar a partir de expressões.
Exemplo: %a = qualquer texto que termine com a
*/
-- Exemplo 1 onde a busca tem de ser exata
SELECT * FROM CUSTOMER WHERE LAST_NAME LIKE 'King'
-- Exemplo 2 onde pode precisa começar com outro caracter, deve ter a em algum momento e pode terminar com qualquer caracter
SELECT * FROM CUSTOMER WHERE LAST_NAME LIKE '_a%'
-- Exemplo 3 pode começar de qualquer forma desde que termine com a
SELECT * FROM CUSTOMER WHERE LAST_NAME LIKE '%a'
-- Exemplo 4 pode começar de qualquer forma desde que tenha duas letras a no intervalo, como Garcia
SELECT * FROM CUSTOMER WHERE LAST_NAME LIKE '%a%a%'

/*
Seleção com and e or
Permite-nos especificar mais de uma condição quando estivermos efetuando a pesquisa
and = as duas condições precisam ser verdadeiras
or = apenas uma das condições precisam ser verdadeiras
*/
-- Exemplo 1 com and contendo um sobrenome e o store_id
SELECT * FROM CUSTOMER WHERE LAST_NAME LIKE '%a' AND STORE_ID = 1
-- Exempplo 2 com or contendo um sobrenome e o store_id
SELECT * FROM CUSTOMER WHERE LAST_NAME LIKE '%a'
OR STORE_ID = 1

/*
Seleção com operador not
Especificamos o not quando não queremos que aquele resultado seja retornado:
Exemplo: not like '%a' trará todos os resultados que não correspondam com %a
*/
SELECT * FROM CUSTOMER WHERE  LAST_NAME NOT LIKE '%a'

/*
Seleção com order by
Nos permite filtrar a ordem dos dados a partir de uma coluna.
Exemplo: SELECT * FROM CUSTOMER ORDER BY LAST_NAME trará os dados ordenados alfabéticamente pela coluna last_name.
Os argumentos DESC e ASC são para que possamos trazer estes dados ordenados em ordem descrecente (DESC) e ascendente (ASC)
*/
SELECT * FROM CUSTOMER ORDER BY LAST_NAME

SELECT * FROM CUSTOMER ORDER BY LAST_NAME DESC

SELECT * FROM CUSTOMER ORDER BY STORE_ID DESC

SELECT * FROM CUSTOMER ORDER BY STORE_ID, LAST_NAME


