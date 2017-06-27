Here are the explanations of the included files for the zip file that goes with the SQL Tuning book from O'Reilly, by Dan Tow:

DB2Ch3PlanScripts: folder of scripts to go with showing execution plans and indexes for DB2 in Chapter 3:
	head.sql: as shown in Ch. 3
	tail.sql: as shown in Ch. 3
	explainit.sql: command line as shown in Ch. 3 to use head.sql, tail.sql, and tmp.sql
	inddb2.sql: as shown in Ch. 3

OracleCh3PlanScripts:  folder of scripts to go with showing execution plans and indexes for Oracle in Chapter 3:
	head.sql: as shown in Ch. 3
	tail.sql: as shown in Ch. 3
	ex.sql: as shown in Ch. 3
	index.sql: as shown in Ch. 3

AllCode.doc: This is pretty much all the SQL and SQL snippets from the book.
This comes from an earlier draft, so you'll find some minor differences, such as insignificant differences in case and in a few other details, but it should save you a lot of typing if you find that you want to flesh out one of the hypothetical examples with real data in a real database. For the end-to-end example in Appendix B I include all the SQL to create the tables and indexes, and to populate them with data, separately. For cases where I show reusable scripts, such as head.sql, tail.sql, and index.sql in chapter 3, I've generally included these as separate files in the same zip file.

I actually created tables to make all these examples parse against a real database, though, mostly to achieve consistency between table and column names throughout the book. In a few cases, however, I might not have reflected those changes (which I made in the book) back to this source file - refer to the book if something doesn't work.

To create the Oracle tables and indexes:

Ctab.sql
Cind.sql

To create the DB2 tables and indexes:

Ctabdb2.sql
Cinddb2.sql

To create the SQL Server tables and indexes:

Ctabss.sql
Cindss.sql

To populate the tables necessary for Appendix B:

Cdata.sql: for Oracle
Cdatadb2.sql: for DB2
Cdatass.sql: for SQL Server

DResults: Actual output from testing for all three database vendors for the Appendix B example

Inddb2.sql: gets indexes on DB2, from Chapter 3

runstats_schema.sql: SQL that generates SQL to statistics on a whole schema for SQL Server, from Chapter 3

updateall.sql: SQL that generates SQL that updates statistics for a whole database on DB2, from Chapter 3

