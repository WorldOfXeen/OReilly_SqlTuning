-- File called tail.sql:
SELECT LPAD(' ',2*(LEVEL-1))||OPERATION||' '||OPTIONS||' '||
DECODE(OBJECT_INSTANCE, NULL, OBJECT_NAME,
                        TO_CHAR(OBJECT_INSTANCE)||'*'|| OBJECT_NAME) PLAN
FROM PLAN_TABLE
START WITH ID=0
CONNECT BY PRIOR ID = PARENT_ID
ORDER BY ID;
ROLLBACK;
