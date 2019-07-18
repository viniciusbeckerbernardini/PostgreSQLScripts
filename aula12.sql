/*
Exemplos de inserção

Podemos inserir um dado no banco através do comando INSERTO INTO [nome da tabela]
Temos duas formas que inserir, não especificando as colunas e especificando
*/
-- Apenas especificando os valors
INSERT INTO country VALUES(110,'TOPPEN');

-- Especificando as colunas que serão populadas
INSERT INTO ACTOR(ACTOR_ID,FIRST_NAME,LAST_NAME)
VALUES(300,'Luan','Vieira');

-- Passando funções como values, a função now() retorna um datetime do dia e hora atuais
INSERT INTO CUSTOMER 
VALUES(600, 1, 'teste','testando',NULL,5,true,now(),now(),1);

/*
Exemplo de atualização
Podemos atualizar a tabela através do comando UPDATE [nome da tabela] SET [nome das colunas que serão atualizadas = valores] 
É crucial destacar que estas operações devem ser feitas com a clausula where para especificar o registro que você deseja alterar, 
uma vez que, caso você não faça isso o comando irá atualizar todos os registros de maneira igual
*/
UPDATE CUSTOMER SET EMAIL = 'teste@insercao.com' WHERE CUSTOMER_ID = 600;

-- Exemplo de atualização com operação aritmética
UPDATE PAYMENT SET AMOUNT = AMOUNT * 1.1
WHERE PAYMENT_ID = 17507;

-- Exemplo de atualização para o valor default especificado na criação do banco
UPDATE FILM SET RENTAL_DURATION = DEFAULT
WHERE FILM_ID = 133;


/*
Exemplo de exclusão
Podemos excluir um registro através do comando DELETE FROM [nome da tabela]
É crucial destacar que estas operações devem ser feitas com a clausula where para especificar o registro que você deseja deletar, 
uma vez que, caso você não faça isso o comando irá deletar todos os registros
*/
DELETE FROM COUNTRY WHERE COUNTRY LIKE 'TOPPEN';