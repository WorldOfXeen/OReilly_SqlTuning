-- File called index.sql
column column_name format a40
set pagesize 999
SELECT INDEX_NAME, COLUMN_NAME
FROM USER_IND_COLUMNS WHERE TABLE_NAME = UPPER('&&1')
ORDER BY INDEX_NAME, COLUMN_POSITION;
