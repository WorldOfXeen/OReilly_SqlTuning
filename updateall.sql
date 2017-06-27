-- file called updateall.sql 
-- update your whole database
SELECT ’UPDATE STATISTICS ’, name 
FROM sysobjects 
WHERE type = ’U’ 