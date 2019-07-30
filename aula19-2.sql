select * from pg_stat_activity

select * from pg_backend_pid()
-- 10056

SELECT * FROM TB_TRAN

BEGIN TRANSACTION 

ROLLBACK
UPDATE TB_TRAN SET NAME = 'yyy'
WHERE ID = 3

UPDATE TB_TRAN SET NAME = 'yyy'
WHERE ID = 2

select * from pg_backend_pid()