-- Primeiro criar um grupo 
CREATE GROUP meuGrupo

-- Inserir usuário no grupo
GRANT vini to meuGrupo


-- Remover usuário do grupo
REVOKE vini FROM meuGrupo

/* 
Verificar os membros do grupo usamos as tabela
pg_auth_members e pg_roles
*/
SELECT * FROM pg_auth_members

SELECT * FROM pg_roles

-- Garantir permissões para o usuário vini
-- GRANT [permissão] on [tabela] to [usuario]
GRANT SELECT on film to vini
-- Dando permissão total
GRANT ALL on customer to vini
-- REVOVENDO PERMISSÕES
REVOKE SELECT ON CUSTOMER FROM vini


CREATE TABLE myTableVini(c1 int);

CREATE SCHEMA mySchema;

CREATE TABLE mySchema.myTable1(c1 int);
	INSERT INTO mySchema.myTable1 VALUES(10);
	SELECT * FROM mySchema.myTable1;





