-- File called inddb2.sql
SELECT IndName, ColNames
FROM SYSCAT.INDEXES 
WHERE TabName = UCASE('EMPLOYEES');
