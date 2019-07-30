-- SCRIPT PARA CRIAR TABELA QUE ARMAZENARÁ ARQUIVOS CSV
-- DO LOG DO POSTGRESQL.

-- NOTA: NÃO ESQUECER DE ALTERAR O PARÂMETRO LOG_DESTIONATION
-- PARA INCLUIR A OPÇÃO CSVLOG. EXEMPLO:
-- log_destination = 'stderr, csvlog'

 

COPY postgres_log FROM 'C:\fontes_adminpostgresql_aula24_owigr\postgresql-2016-09-30_142829.csv' WITH csv encoding 'windows-1251';


SELECT * FROM postgres_log

SELECT * FROM pg_stat_activity;

SELECT * FROM pg_locks;

select *, pg_encoding_to_char(encoding) from pg_database

select * from pg_stat_database;


SELECT d.datname AS Name,  pg_catalog.pg_get_userbyid(d.datdba) AS Owner,
    CASE WHEN pg_catalog.has_database_privilege(d.datname, 'CONNECT')
        THEN pg_catalog.pg_size_pretty(pg_catalog.pg_database_size(d.datname))
        ELSE 'No Access'
    END AS SIZE
FROM pg_catalog.pg_database d
    ORDER BY
    CASE WHEN pg_catalog.has_database_privilege(d.datname, 'CONNECT')
        THEN pg_catalog.pg_database_size(d.datname)
        ELSE NULL
    END DESC -- nulls first
    LIMIT 20




SELECT *, pg_size_pretty(total_bytes) AS total
    , pg_size_pretty(index_bytes) AS INDEX
    , pg_size_pretty(toast_bytes) AS toast
    , pg_size_pretty(table_bytes) AS TABLE
  FROM (
  SELECT *, total_bytes-index_bytes-COALESCE(toast_bytes,0) AS table_bytes FROM (
      SELECT c.oid,nspname AS table_schema, relname AS TABLE_NAME
              , c.reltuples AS row_estimate
              , pg_total_relation_size(c.oid) AS total_bytes
              , pg_indexes_size(c.oid) AS index_bytes
              , pg_total_relation_size(reltoastrelid) AS toast_bytes
          FROM pg_class c
          LEFT JOIN pg_namespace n ON n.oid = c.relnamespace
          WHERE relkind = 'r'
  ) a
) a;


SELECT * 
FROM PG_STAT_ALL_TABLES;


