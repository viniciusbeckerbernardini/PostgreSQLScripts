/*
Seleção usando JOIN
Com este comando podemos juntar informações de duas ou mais tabelas através de dados que existam em ambas, exemplo: chaves estrangeiras
O INNER JOIN traz os dados selecionados quando houver igualdade nas tabelas comparadas
*/
SELECT c.customer_id, c.first_name, c.last_name, c.email,
		p.amount, p.payment_date, s.first_name, s.last_name
from customer c INNER JOIN payment p on p.customer_id = c.customer_id
INNER JOIN staff s 
ON p.staff_id = s.staff_id


/*
O left join funciona da maneira basicamente igual ao inner join, mas,
ele traz todos os dados da tabela e à esquerda da pequisa o que seria nesse caso film,
os dados que não houverem igualdade por parte da tabela à direita serão retornados como dados nulos
*/
SELECT F.film_id, F.title, I.inventory_id
FROM film F LEFT JOIN inventory I
ON F.film_id = I.film_id

-- Exemplo de left outer join com clausula where
SELECT F.film_id, F.title, I.inventory_id
FROM film F LEFT JOIN inventory I
ON F.film_id = I.film_id
WHERE I.inventory_id IS NULL

/*
O right join funciona da maneira basicamente igual ao inner join, mas,
ele traz todos os dados da tabela e à direita da pequisa o que seria nesse caso film,
os dados que não houverem igualdade por parte da tabela à esquerda serão retornados como dados nulos
*/
SELECT F.film_id, F.title, I.inventory_id
FROM inventory I RIGHT JOIN film F
ON F.film_id = I.film_id

-- Exemplo de right outer join com clausula where
SELECT F.film_id, F.title, I.inventory_id
FROM inventory I RIGHT JOIN film F
ON F.film_id = I.film_id 
WHERE I.inventory_id IS NULL


/*
O full join traz todos os dados mesmo que eles não existam em ambas as tabelas, neste caso, 
os dados que não existirem em ambas as tabelas retornam como valores nulos
*/
SELECT F.film_id, F.title, I.inventory_id
FROM film F FULL JOIN inventory I
ON F.film_id = I.film_id
