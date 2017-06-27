--Create data script for Appendix B, Oracle example
--Run after creating tables with Ctab.sql and 
--creating indexes with Cind.sql
delete from dummy;
insert into dummy values (0);
insert into dummy values (1);
insert into dummy values (2);
insert into dummy values (3);
insert into dummy values (4);
insert into dummy values (5);
insert into dummy values (6);
insert into dummy values (7);
insert into dummy values (8);
insert into dummy values (9);
commit;
--Commented out SQL to create data with data 
--distributions matching an earlier hypothetical example in the text, 
--not relevant to Appendix B.

--truncate table employees;
--insert into employees select /*+ rule */
--(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
--decode((d4.x*10)+d5.x,99,to_number(null),98,to_number(null),
--TRUNC(((d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/2.0408)),
--to_char((d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x),
--to_char((d1.x*1000)+(d2.x*100)+(d3.x*10)+d4.x),
--decode(d5.x, 0,
             --sysdate-(10000-((d1.x*1000)+(d2.x*100)+(d3.x*10)+(d4.x*1))/2),
             --to_date(null)),
--(d3.x*100)+(d4.x*10)+d5.x,
--150000-((d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x),
--(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
--to_char((d2.x*1000)+(d3.x*100)+(d4.x*10)),
--6509600000+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
--sysdate-(10000-((d1.x*1000)+(d2.x*100)+(d3.x*10)+(d4.x*1))),
--decode(d5.x,0,'Y','N')
--from dummy d5, dummy d4, dummy d3, dummy d2, dummy d1;
--truncate table locations;
--insert into locations select /*+ rule */
--(d3.x*100)+(d4.x*10)+d5.x,
--to_char((d3.x*100)+(d4.x*10)+d5.x)
--from dummy d5, dummy d4, dummy d3;
--truncate table Departments;
--insert into Departments select /*+ rule */
--(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
--to_char((d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x),
--decode(TRUNC(d5.x/5),0,'Y','N')
--from dummy d5, dummy d4, dummy d3, dummy d2 where d2.x*10+d3.x < 49;
truncate table orders;
insert into orders select /*+ rule */
(d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
TRUNC(1.25*((d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)),
decode(d0.x,3,decode(d1.x,9,'Y',8,'Y',7,'Y',6,'Y','N'),'N'),
decode(d0.x,3,decode(d1.x,9,'NEW',8,'PRC',7,'SHP',6,'SHP','COM'),'COM'),
(d4.x*10)+d5.x,
trunc(sysdate)-(100-trunc(2.5*((d0.x*10)+d1.x))),
decode(trunc(0.25*((d0.x*10)+d1.x)),9,to_date(null),
       trunc(sysdate)-(90-trunc(0.25*((d0.x*100)+(d1.x*10)+d2.x)))),
(d3.x*100)+(d4.x*10)+d5.x,'HOM',
decode(d0.x,3,decode(d1.x,9,'N',8,'N',7,'N',6,'N','Y'),'Y'),
10+TRUNC(d5.x/2)
from dummy d5, dummy d4, dummy d3, dummy d2, dummy d1, dummy d0
where d0.x<4
;

truncate table customers;
insert into customers select /*+ rule */
(d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
'Tracy'||to_char((d3.x*100)+(d4.x*10)+d5.x),
'Smith'||to_char((d3.x*100)+(d4.x*10)+d5.x),
(d3.x*100)+(d4.x*10)+d5.x,
'6505'||to_char(300000+
   TRUNC(
    ((d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)*3/4)),
TRUNC(0.3*((d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)),
'Tracy'||to_char((d3.x*100)+(d4.x*10)+d5.x)||' '||
         'Smith'||to_char((d3.x*100)+(d4.x*10)+d5.x),
TRUNC(MOD((d3.x*100)+(d4.x*10)+d5.x,125)*0.8),
'HOM', 'M.', NULL,'Y','Y',
(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
1
from dummy d5, dummy d4, dummy d3, dummy d2, dummy d1, dummy d0
where d0.x<5
;
 
commit;
truncate table order_details;
insert into order_details select /*+ rule */
(dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
TRUNC(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/3),
MOD(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x),12000),
1,
DECODE(TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12),9,'N','Y'),
DECODE(TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12),9,sysdate+10,to_date(null)),
DECODE(TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12),9,to_number(null),
 TRUNC(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/2)),
'OK'
from dummy d5, dummy d4, dummy d3, dummy d2, dummy d1, dummy d0, dummy dx
where dx.x<2 and (dx.x*10+d0.x)<12
;

commit;   
truncate table shipments;
insert into shipments select /*+ rule */
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
trunc(sysdate)-(90-trunc(0.16666667*((d0.x*100)+(d1.x*10)+d2.x))),
TRUNC((
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/4)
from dummy d5, dummy d4, dummy d3, dummy d2, dummy d1, dummy d0
where d0.x<6 and (d0.x*10+d1.x)<54
;
truncate table addresses;
insert into addresses select /*+ rule */
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
     to_char((d0.x*100000)+
             (d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)||' Amy Ave.',
null, null,
'ABCVille'||to_char((d3.x*100)+(d4.x*10)+d5.x),
trunc(((d3.x*10)+d4.x)/2),
(d3.x*10000)+(d4.x*1000)+(d5.x*100)+(d2.x*10)
from dummy d5, dummy d4, dummy d3, dummy d2, dummy d1, dummy d0
where d0.x<2 and ((d0.x*100)+(d1.x*10)+d2.x)<135
;
      
truncate table products;
insert into products select /*+ rule */
(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
'Widget'||to_char((d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x),
(d3.x*100)+(d4.x*10)+d5.x,
'Y',to_number(null),'NO','01','NC',
(d4.x*10)+d5.x,
(d5.x*100)+(d4.x*10)
from dummy d5, dummy d4, dummy d3, dummy d2, dummy d1
where d1.x<2 and ((d1.x*10)+d2.x)<12
;   
commit; 

analyze table addresses compute statistics;
analyze table shipments compute statistics;
analyze table order_details compute statistics;
analyze table orders compute statistics;
analyze table products compute statistics;
analyze table customers compute statistics;

