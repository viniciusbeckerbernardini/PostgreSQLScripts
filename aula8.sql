/*
Sele��o com clausula WHERE
Traz resultados onde o que for especificado existir
*/
-- Exemplo 1
SELECT * FROM customer where active = 1
-- Exemplo 2
SELECT * FROM customer where active = 0
-- Exemplo 3 com strings
SELECT * FROM customer where last_name = �Smith�
-- Exemplo 4 com strings e invertido
SELECT * FROM customer where �Smith�  = last_name
-- Exemplo 5 com datas
SELECT * FROM customer where create_date = �2006-02-14�
-- Exemplo 6 com comparadores l�gicos
SELECT * FROM film where length >= 120
-- Exemplo 7 com comparador de n�o igualdade
SELECT * FROM film where rating <> 'NC-17'

/*
Sele��o com between
Traz os dados entre o intervalo dos dados especificados, incluindo os extremos
*/
SELECT * FROM film
WHERE rental_duration BETWEEN 2 AND 4


/*
Sele��o com in
Traz os dados que tenham os valores especificados
*/
SELECT * FROM film
WHERE rental_rate IN (0.99,2.99)

/*
Sele��o com like nos permite buscar a partir de express�es.
Exemplo: %a = qualquer texto que termine com a
*/
-- Exemplo 1 onde a busca tem de ser exata
SELECT * FROM CUSTOMER WHERE LAST_NAME LIKE 'King'
-- Exemplo 2 onde pode precisa come�ar com outro caracter, deve ter a em algum momento e pode terminar com qualquer caracter
SELECT * FROM CUSTOMER WHERE LAST_NAME LIKE '_a%'
-- Exemplo 3 pode come�ar de qualquer forma desde que termine com a
SELECT * FROM CUSTOMER WHERE LAST_NAME LIKE '%a'
-- Exemplo 4 pode come�ar de qualquer forma desde que tenha duas letras a no intervalo, como Garcia
SELECT * FROM CUSTOMER WHERE LAST_NAME LIKE '%a%a%'

/*
Sele��o com and e or
Permite-nos especificar mais de uma condi��o quando estivermos efetuando a pesquisa
and = as duas condi��es precisam ser verdadeiras
or = apenas uma das condi��es precisam ser verdadeiras
*/
-- Exemplo 1 com and contendo um sobrenome e o store_id
SELECT * FROM CUSTOMER WHERE LAST_NAME LIKE '%a' AND STORE_ID = 1
-- Exempplo 2 com or contendo um sobrenome e o store_id
SELECT * FROM CUSTOMER WHERE LAST_NAME LIKE '%a'
OR STORE_ID = 1

/*
Sele��o com operador not
Especificamos o not quando n�o queremos que aquele resultado seja retornado:
Exemplo: not like '%a' trar� todos os resultados que n�o correspondam com %a
*/
SELECT * FROM CUSTOMER WHERE  LAST_NAME NOT LIKE '%a'

/*
Sele��o com order by
Nos permite filtrar a ordem dos dados a partir de uma coluna.
Exemplo: SELECT * FROM CUSTOMER ORDER BY LAST_NAME trar� os dados ordenados alfab�ticamente pela coluna last_name.
Os argumentos DESC e ASC s�o para que possamos trazer estes dados ordenados em ordem descrecente (DESC) e ascendente (ASC)
*/
SELECT * FROM CUSTOMER ORDER BY LAST_NAME

SELECT * FROM CUSTOMER ORDER BY LAST_NAME DESC

SELECT * FROM CUSTOMER ORDER BY STORE_ID DESC

SELECT * FROM CUSTOMER ORDER BY STORE_ID, LAST_NAME


