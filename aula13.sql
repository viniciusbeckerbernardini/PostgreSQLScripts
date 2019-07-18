/*
Transações

Utilizamos as transações para que possamos auditar 
se os dados estão transitando de maneira correta

Iniciamos uma transação com o comando BEGIN, caso 
ela seja concluída de maneira correta usamos o comando
COMMIT para que a transação seja concretizada, já se 
houver alguma falha usamos o comando ROLLBACK para que 
ele volte o que estava fazendo até o presente momento.
*/

SELECT * FROM COUNTRY ORDER BY COUNTRY_ID DESC
BEGIN 
	INSERT INTO COUNTRY VALUES (111,'HIE')
-- Sucesso
COMMIT;

BEGIN 
	INSERT INTO COUNTRY VALUES (112,'HIE')
-- Falha
ROLLBACK;

