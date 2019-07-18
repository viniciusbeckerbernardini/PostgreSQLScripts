/*
Funções de agregação servem para que possamos obter valores consolidados em uma pesquisa.

A função round não se trata de uma função de agregação e sim um função 
para formatar dados, estou usando puramente para não ficar uma montoeira de 
números quebrados. 


A função AVG significa AVERAGE (MÉDIA em português) e serve como o nome 
já diz para calcular uma média dos valores buscados na pesquisa.

*/
SELECT ROUND(AVG(AMOUNT),1) AS MEDIA FROM PAYMENT;

/*
MAX = valor máximo encontrado nas tuplas da pesquisa
MIN = valor mínimo encontrado nas tuplas da pesquisa
SUM = SOMA dos valores encontrados na pesquisa
*/
SELECT ROUND(AVG(AMOUNT),1) AS MEDIA, 
ROUND(MAX(AMOUNT),2) AS MAXIMA, 
ROUND(MIN(AMOUNT),2) AS MINIMA,
ROUND(SUM(AMOUNT),2) AS SOMATORIO
FROM PAYMENT;

/*
A função COUNT() retorna o número de linhas encontradas na pesquisa
*/
SELECT COUNT(*) FROM RENTAL;

/*
Retorno de linhas com apenas valores unicos usando o distinct
*/
SELECT COUNT (DISTINCT INVENTORY_ID) FROM RENTAL;


/* 
Podemos buscar por colunas não agregadas e colunas agregadas na mesma pesquisa desde que 
utilizemos o group by para agrupalas dentro da pesquisa.

No exemplo abaixo traremos o número de id do cliente e o número de registros que ele possui na tabela de aluguéis
*/
SELECT CUSTOMER_ID, COUNT(*)
FROM RENTAL
GROUP BY CUSTOMER_ID
ORDER BY CUSTOMER_ID;

/*
Podemos agrupar por mais de uma coluna, 
neste exemplo estamos agrupando pelo id do cliente 
e pelo id do funcionário que o atendeu
*/
SELECT CUSTOMER_ID,STAFF_ID, COUNT(*)
FROM RENTAL
GROUP BY CUSTOMER_ID,STAFF_ID
ORDER BY CUSTOMER_ID,STAFF_ID;


/*
Mesmo exemplo do acima mas usando a clausula where para filtrar
*/
SELECT CUSTOMER_ID,STAFF_ID,COUNT(*)
FROM RENTAL WHERE CUSTOMER_ID != 10
GROUP BY CUSTOMER_ID,STAFF_ID
ORDER BY CUSTOMER_ID,STAFF_ID


/*
Pesquisa utilizando o HAVING
Utilizando o HAVING para impor condições a pesquisa, having significa havendo
em uma tradução literal desta seleção poderiamos dizer que :

Selecione CUSTOMER_ID,STAFF_ID,COUNT(*)
DE ALUGUEL
AGRUPADO POR CUSTOMER_ID,STAFF_ID
QUANDO COUNT(*) > 20
ORDENDANDO POR CUSTOMER_ID,STAFF_ID

*/
SELECT CUSTOMER_ID,STAFF_ID, COUNT(*)
FROM RENTAL
GROUP BY CUSTOMER_ID,STAFF_ID
HAVING COUNT(*) > 20
ORDER BY CUSTOMER_ID,STAFF_ID;
