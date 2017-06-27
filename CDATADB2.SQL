--Creates data for the DB2 example in Appendix B

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
delete from orders;
insert into orders select 
(d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
TRUNC(1.25*((d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+
(d4.x*10)+d5.x),0),
CASE d0.x WHEN 3 THEN 
    CASE d1.x WHEN 9 THEN 'Y' WHEN 8 THEN 'Y' WHEN 7 THEN 'Y'
              WHEN 6 THEN 'Y' ELSE 'N'
    END
          ELSE 'N'
END,
CASE d0.x WHEN 3 THEN
    CASE d1.x WHEN 9 THEN 'NEW' WHEN 8 THEN 'PRC' WHEN 7 THEN 'SHP'
              WHEN 6 THEN 'SHP' ELSE 'COM'
    END 
         ELSE 'COM'
END,
(d4.x*10)+d5.x,
(CURRENT DATE)-(100-TRUNC(2.5*((d0.x*10)+d1.x),0)) DAYS,
CASE TRUNC(0.25*((d0.x*10)+d1.x),0) WHEN 9 THEN cast(null as date) ELSE
       (CURRENT DATE)-(90-TRUNC(0.25*((d0.x*100)+(d1.x*10)+d2.x),0)) DAYS
END,
(d3.x*100)+(d4.x*10)+d5.x,'HOM',
CASE d0.x WHEN 3 THEN 
                    CASE d1.x WHEN 9 THEN 'N' WHEN 8 THEN 'N'
                              WHEN 7 THEN 'N' WHEN 6 THEN 'N' ELSE 'Y'
                    END
          ELSE 'Y'
END,
10+TRUNC(d5.x/2,0)
from dummy d5, dummy d4, dummy d3, dummy d2, dummy d1, dummy d0
where d0.x<4
;

delete from customers;
insert into customers select 
(d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
'Tracy'||CHAR((d3.x*100)+(d4.x*10)+d5.x),
'Smith'||CHAR((d3.x*100)+(d4.x*10)+d5.x),
(d3.x*100)+(d4.x*10)+d5.x,
'6505'||CHAR(300000+
 TRUNC(
  ((d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)*3/4,0)),
TRUNC(0.3*((d0.x*100000)+(d1.x*10000)+(d2.x*1000)+
(d3.x*100)+(d4.x*10)+d5.x),0),
'Tracy'||CHAR((d3.x*100)+(d4.x*10)+d5.x)||' '||
         'Smith'||CHAR((d3.x*100)+(d4.x*10)+d5.x),
TRUNC(MOD((d3.x*100)+(d4.x*10)+d5.x,125)*0.8,0),
'HOM', 'M.', CAST(NULL AS CHAR),'Y','Y',
(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
1
from dummy d5, dummy d4, dummy d3, dummy d2, dummy d1, dummy d0
where d0.x<5
;
 
commit;
delete from order_details;
insert into order_details select 
(dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
TRUNC(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/3,0),
MOD(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x),12000),
1,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN 'N' ELSE 'Y' END,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN
 CURRENT DATE+10 DAYS ELSE cast(null as date)
END,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN cast(null as integer)
  ELSE TRUNC(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/2,0)
END,
'OK'
from dummy d5, dummy d4, dummy d3, dummy d2, dummy d1, dummy d0, dummy dx
where dx.x<1 and (dx.x*10+d0.x)<1
;
commit;

insert into order_details select
(dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
TRUNC(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/3,0),
MOD(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x),12000),
1,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN 'N' ELSE 'Y' END,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN
 CURRENT DATE+10 DAYS ELSE cast(null as date)
END,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN cast(null as integer)
  ELSE TRUNC(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/2,0)
END,
'OK'
from dummy d5, dummy d4, dummy d3, dummy d2, dummy d1, dummy d0, dummy dx
where dx.x<1 and (dx.x*10+d0.x)>=1 and (dx.x*10+d0.x)<2
;           
commit;
insert into order_details select
(dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
TRUNC(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/3,0),
MOD(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x),12000),
1,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN 'N' ELSE 'Y' END,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN
 CURRENT DATE+10 DAYS ELSE cast(null as date)
END,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN cast(null as integer)
  ELSE TRUNC(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/2,0)
END,
'OK'
from dummy d5, dummy d4, dummy d3, dummy d2, dummy d1, dummy d0, dummy dx
where dx.x<1 and (dx.x*10+d0.x)>=2 and (dx.x*10+d0.x)<3
;
commit;
insert into order_details select
(dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
TRUNC(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/3,0),
MOD(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x),12000),
1,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN 'N' ELSE 'Y' END,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN
 CURRENT DATE+10 DAYS ELSE cast(null as date)
END,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN cast(null as integer)
  ELSE TRUNC(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/2,0)
END,
'OK'
from dummy d5, dummy d4, dummy d3, dummy d2, dummy d1, dummy d0, dummy dx
where dx.x<1 and (dx.x*10+d0.x)>=3 and (dx.x*10+d0.x)<4
;
commit;
insert into order_details select
(dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
TRUNC(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/3,0),
MOD(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x),12000),
1,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN 'N' ELSE 'Y' END,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN
 CURRENT DATE+10 DAYS ELSE cast(null as date)
END,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN cast(null as integer)
  ELSE TRUNC(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/2,0)
END,
'OK'
from dummy d5, dummy d4, dummy d3, dummy d2, dummy d1, dummy d0, dummy dx
where dx.x<1 and (dx.x*10+d0.x)>=4 and (dx.x*10+d0.x)<5
;
commit;               
insert into order_details select
(dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
TRUNC(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/3,0),
MOD(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x),12000),
1,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN 'N' ELSE 'Y' END,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN
 CURRENT DATE+10 DAYS ELSE cast(null as date)
END,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN cast(null as integer)
  ELSE TRUNC(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/2,0)
END,
'OK'
from dummy d5, dummy d4, dummy d3, dummy d2, dummy d1, dummy d0, dummy dx
where dx.x<1 and (dx.x*10+d0.x)>=5 and (dx.x*10+d0.x)<6
;
commit;      
insert into order_details select
(dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
TRUNC(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/3,0),
MOD(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x),12000),
1,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN 'N' ELSE 'Y' END,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN
 CURRENT DATE+10 DAYS ELSE cast(null as date)
END,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN cast(null as integer)
  ELSE TRUNC(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/2,0)
END,
'OK'
from dummy d5, dummy d4, dummy d3, dummy d2, dummy d1, dummy d0, dummy dx
where dx.x<1 and (dx.x*10+d0.x)>=6 and (dx.x*10+d0.x)<7
;
commit;                  
insert into order_details select
(dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
TRUNC(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/3,0),
MOD(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x),12000),
1,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN 'N' ELSE 'Y' END,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN
 CURRENT DATE+10 DAYS ELSE cast(null as date)
END,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN cast(null as integer)
  ELSE TRUNC(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/2,0)
END,
'OK'
from dummy d5, dummy d4, dummy d3, dummy d2, dummy d1, dummy d0, dummy dx
where dx.x<1 and (dx.x*10+d0.x)>=7 and (dx.x*10+d0.x)<8
;
commit;           
insert into order_details select
(dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
TRUNC(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/3,0),
MOD(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x),12000),
1,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN 'N' ELSE 'Y' END,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN
 CURRENT DATE+10 DAYS ELSE cast(null as date)
END,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN cast(null as integer)
  ELSE TRUNC(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/2,0)
END,
'OK'
from dummy d5, dummy d4, dummy d3, dummy d2, dummy d1, dummy d0, dummy dx
where dx.x<1 and (dx.x*10+d0.x)>=8 and (dx.x*10+d0.x)<9
;
commit;  
insert into order_details select
(dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
TRUNC(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/3,0),
MOD(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x),12000),
1,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN 'N' ELSE 'Y' END,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN
 CURRENT DATE+10 DAYS ELSE cast(null as date)
END,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN cast(null as integer)
  ELSE TRUNC(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/2,0)
END,
'OK'
from dummy d5, dummy d4, dummy d3, dummy d2, dummy d1, dummy d0, dummy dx
where dx.x<1 and (dx.x*10+d0.x)>=9 and (dx.x*10+d0.x)<10
;
commit;  
insert into order_details select
(dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
TRUNC(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/3,0),
MOD(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x),12000),
1,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN 'N' ELSE 'Y' END,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN
 CURRENT DATE+10 DAYS ELSE cast(null as date)
END,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN cast(null as integer)
  ELSE TRUNC(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/2,0)
END,
'OK'
from dummy d5, dummy d4, dummy d3, dummy d2, dummy d1, dummy d0, dummy dx
where dx.x=1 and (dx.x*10+d0.x)>=10 and (dx.x*10+d0.x)<11
;
commit; 
insert into order_details select
(dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
TRUNC(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/3,0),
MOD(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x),12000),
1,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN 'N' ELSE 'Y' END,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN
 CURRENT DATE+10 DAYS ELSE cast(null as date)
END,
CASE TRUNC(((dx.x*100)+(d0.x*10)+d1.x)/12,0) WHEN 9 THEN cast(null as integer)
  ELSE TRUNC(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/2,0)
END,
'OK'
from dummy d5, dummy d4, dummy d3, dummy d2, dummy d1, dummy d0, dummy dx
where dx.x=1 and (dx.x*10+d0.x)>=11 and (dx.x*10+d0.x)<12
;
commit; 
delete from shipments;
insert into shipments select 
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
(CURRENT DATE)-(90-TRUNC(0.16666667*((d0.x*100)+(d1.x*10)+d2.x),0)) DAYS,
TRUNC((
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/4,0)
from dummy d5, dummy d4, dummy d3, dummy d2, dummy d1, dummy d0
where d0.x<6 and (d0.x*10+d1.x)<54
;
delete from addresses;
insert into addresses select 
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
     CHAR((d0.x*100000)+
             (d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)||' Amy Ave.',
CAST(NULL AS CHAR), CAST(NULL AS CHAR),
'ABCVille'||CHAR((d3.x*100)+(d4.x*10)+d5.x),
CAST(TRUNC(((d3.x*10)+d4.x)/2,0) as CHAR),
(d3.x*10000)+(d4.x*1000)+(d5.x*100)+(d2.x*10)
from dummy d5, dummy d4, dummy d3, dummy d2, dummy d1, dummy d0
where d0.x<2 and ((d0.x*100)+(d1.x*10)+d2.x)<135
;
      
delete from products;
insert into products select 
(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
'Widget' || CHAR((d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x),
(d3.x*100)+(d4.x*10)+d5.x,
'Y',cast(null as integer) ,'NO','01','NC',
(d4.x*10)+d5.x,
(d5.x*100)+(d4.x*10)
from dummy d5, dummy d4, dummy d3, dummy d2, dummy d1
where d1.x<2 and ((d1.x*10)+d2.x)<12
;   
commit; 

runstats on table tfdbddev.addresses and indexes all;
runstats on table tfdbddev.shipments and indexes all;
runstats on table tfdbddev.order_details and indexes all;
runstats on table tfdbddev.orders and indexes all;
runstats on table tfdbddev.products and indexes all;
runstats on table tfdbddev.customers and indexes all;
runstats on table tfdbddev.locations and indexes all;
runstats on table tfdbddev.employees and indexes all;
