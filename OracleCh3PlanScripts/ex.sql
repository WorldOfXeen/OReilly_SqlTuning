-- File called ex.sql:
!cat head.sql tmp.sql tail.sql > tmp2.sql
spool tmp.out
@tmp2
spool off
