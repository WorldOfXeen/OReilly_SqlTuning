--Creates data for the SQL Server example in Appendix B

DELETE FROM dummy2
GO
INSERT INTO dummy2 values (0)
GO
INSERT INTO dummy2 values (1)
GO
INSERT INTO dummy2 values (2)
GO
INSERT INTO dummy2 values (3)
GO
INSERT INTO dummy2 values (4)
GO
INSERT INTO dummy2 values (5)
GO
INSERT INTO dummy2 values (6)
GO
INSERT INTO dummy2 values (7)
GO
INSERT INTO dummy2 values (8)
GO
INSERT INTO dummy2 values (9)
GO
COMMIT
GO
DELETE FROM Orders
GO
INSERT INTO Orders SELECT 
(d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
FLOOR(1.25*((d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+
(d4.x*10)+d5.x)),
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
DATEADD(DAY, -(100-FLOOR(2.5*((d0.x*10)+d1.x))), GETDATE()),
CASE FLOOR(0.25*((d0.x*10)+d1.x)) WHEN 9 THEN CAST(NULL AS DATETIME) ELSE
       DATEADD(DAY, -(90-FLOOR(0.25*((d0.x*100)+(d1.x*10)+d2.x))), GETDATE())
END,
(d3.x*100)+(d4.x*10)+d5.x,'HOM',
CASE d0.x WHEN 3 THEN 
                    CASE d1.x WHEN 9 THEN 'N' WHEN 8 THEN 'N'
                              WHEN 7 THEN 'N' WHEN 6 THEN 'N' ELSE 'Y'
                    END
          ELSE 'Y'
END,
10+FLOOR(d5.x/2)
FROM dummy2 d5, dummy2 d4, dummy2 d3, dummy2 d2, dummy2 d1, dummy2 d0
WHERE d0.x<4
GO

DELETE FROM Customers
GO
INSERT INTO Customers SELECT 
(d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
'Tracy'+CHAR((d3.x*100)+(d4.x*10)+d5.x),
'Smith'+CHAR((d3.x*100)+(d4.x*10)+d5.x),
(d3.x*100)+(d4.x*10)+d5.x,
'6505'+CHAR(300000+
 FLOOR(
  ((d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)*3/4)),
FLOOR(0.3*((d0.x*100000)+(d1.x*10000)+(d2.x*1000)+
(d3.x*100)+(d4.x*10)+d5.x)),
'Tracy'+CHAR((d3.x*100)+(d4.x*10)+d5.x)+' '+
         'Smith'+CHAR((d3.x*100)+(d4.x*10)+d5.x),
FLOOR(((d3.x*100)+(d4.x*10)+d5.x % 125)*0.8),
'HOM', 'M.', CAST(NULL AS VARCHAR),'Y','Y',
(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
1
FROM dummy2 d5, dummy2 d4, dummy2 d3, dummy2 d2, dummy2 d1, dummy2 d0
WHERE d0.x<5
GO
COMMIT
GO
DELETE FROM Order_Details
GO
INSERT INTO Order_Details SELECT 
(dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
FLOOR(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/3),
(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)%12000),
1,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN 'N' ELSE 'Y' END,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN
 DATEADD(DAY, 10, GETDATE()) ELSE CAST(NULL AS DATETIME)
END,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN CAST(NULL AS INT)
  ELSE FLOOR(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/2)
END,
'OK'
FROM dummy2 d5, dummy2 d4, dummy2 d3, dummy2 d2, dummy2 d1, dummy2 d0, dummy2 dx
WHERE dx.x<1 AND (dx.x*10+d0.x)<1
GO
COMMIT
GO
INSERT INTO Order_Details SELECT
(dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
FLOOR(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/3),
(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)%12000),
1,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN 'N' ELSE 'Y' END,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN
 DATEADD(DAY, 10, GETDATE()) ELSE CAST(NULL as DATETIME)
END,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN CAST(NULL AS INT)
  ELSE FLOOR(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/2)
END,
'OK'
FROM dummy2 d5, dummy2 d4, dummy2 d3, dummy2 d2, dummy2 d1, dummy2 d0, dummy2 dx
WHERE dx.x<1 AND (dx.x*10+d0.x)>=1 AND (dx.x*10+d0.x)<2
GO           
COMMIT
GO
INSERT INTO Order_Details SELECT
(dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
FLOOR(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/3),
(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)%12000),
1,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN 'N' ELSE 'Y' END,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN
 DATEADD(DAY, 10, GETDATE()) ELSE CAST(NULL as DATETIME)
END,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN CAST(NULL AS INT)
  ELSE FLOOR(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/2)
END,
'OK'
FROM dummy2 d5, dummy2 d4, dummy2 d3, dummy2 d2, dummy2 d1, dummy2 d0, dummy2 dx
WHERE dx.x<1 AND (dx.x*10+d0.x)>=2 AND (dx.x*10+d0.x)<3
GO
COMMIT
GO
INSERT INTO Order_Details SELECT
(dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
FLOOR(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/3),
(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)%12000),
1,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN 'N' ELSE 'Y' END,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN
 DATEADD(DAY, 10, GETDATE()) ELSE CAST(NULL AS DATETIME)
END,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN CAST(NULL AS INT)
  ELSE FLOOR(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/2)
END,
'OK'
FROM dummy2 d5, dummy2 d4, dummy2 d3, dummy2 d2, dummy2 d1, dummy2 d0, dummy2 dx
WHERE dx.x<1 AND (dx.x*10+d0.x)>=3 AND (dx.x*10+d0.x)<4
GO
COMMIT
GO
INSERT INTO Order_Details SELECT
(dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
FLOOR(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/3),
(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)%12000),
1,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN 'N' ELSE 'Y' END,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN
 DATEADD(DAY, 10, GETDATE()) ELSE CAST(NULL as DATETIME)
END,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN CAST(NULL AS INT)
  ELSE FLOOR(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/2)
END,
'OK'
FROM dummy2 d5, dummy2 d4, dummy2 d3, dummy2 d2, dummy2 d1, dummy2 d0, dummy2 dx
WHERE dx.x<1 AND (dx.x*10+d0.x)>=4 AND (dx.x*10+d0.x)<5
GO
COMMIT               
GO
INSERT INTO Order_Details SELECT
(dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
FLOOR(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/3),
(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)%12000),
1,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN 'N' ELSE 'Y' END,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN
 DATEADD(DAY, 10, GETDATE()) ELSE CAST(NULL AS DATETIME)
END,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN CAST(NULL AS INT)
  ELSE FLOOR(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/2)
END,
'OK'
FROM dummy2 d5, dummy2 d4, dummy2 d3, dummy2 d2, dummy2 d1, dummy2 d0, dummy2 dx
WHERE dx.x<1 AND (dx.x*10+d0.x)>=5 AND (dx.x*10+d0.x)<6
GO
COMMIT      
GO
INSERT INTO Order_Details SELECT
(dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
FLOOR(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/3),
(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)%12000),
1,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN 'N' ELSE 'Y' END,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN
 DATEADD(DAY, 10, GETDATE()) ELSE CAST(NULL AS DATETIME)
END,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN CAST(NULL AS INT)
  ELSE FLOOR(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/2)
END,
'OK'
FROM dummy2 d5, dummy2 d4, dummy2 d3, dummy2 d2, dummy2 d1, dummy2 d0, dummy2 dx
WHERE dx.x<1 AND (dx.x*10+d0.x)>=6 AND (dx.x*10+d0.x)<7
GO
COMMIT                  
GO
INSERT INTO Order_Details SELECT
(dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
FLOOR(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/3),
(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)%12000),
1,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN 'N' ELSE 'Y' END,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN
 DATEADD(DAY, 10, GETDATE()) ELSE CAST(NULL AS DATETIME)
END,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN CAST(NULL AS INT)
  ELSE FLOOR(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/2)
END,
'OK'
FROM dummy2 d5, dummy2 d4, dummy2 d3, dummy2 d2, dummy2 d1, dummy2 d0, dummy2 dx
WHERE dx.x<1 AND (dx.x*10+d0.x)>=7 AND (dx.x*10+d0.x)<8
GO
COMMIT           
GO
INSERT INTO Order_Details SELECT
(dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
FLOOR(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/3),
(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)%12000),
1,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN 'N' ELSE 'Y' END,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN
 DATEADD(DAY, 10, GETDATE()) ELSE CAST(NULL AS DATETIME)
END,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN CAST(NULL AS INT)
  ELSE FLOOR(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/2)
END,
'OK'
FROM dummy2 d5, dummy2 d4, dummy2 d3, dummy2 d2, dummy2 d1, dummy2 d0, dummy2 dx
WHERE dx.x<1 AND (dx.x*10+d0.x)>=8 AND (dx.x*10+d0.x)<9
GO
COMMIT  
GO
INSERT INTO Order_Details SELECT
(dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
FLOOR(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/3),
(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)%12000),
1,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN 'N' ELSE 'Y' END,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN
 DATEADD(DAY, 10, GETDATE()) ELSE CAST(NULL AS DATETIME)
END,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN CAST(NULL AS INT)
  ELSE FLOOR(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/2)
END,
'OK'
FROM dummy2 d5, dummy2 d4, dummy2 d3, dummy2 d2, dummy2 d1, dummy2 d0, dummy2 dx
WHERE dx.x<1 AND (dx.x*10+d0.x)>=9 AND (dx.x*10+d0.x)<10
GO
COMMIT  
GO
INSERT INTO Order_Details SELECT
(dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
FLOOR(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/3),
(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)%12000),
1,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN 'N' ELSE 'Y' END,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN
 DATEADD(DAY, 10, GETDATE()) ELSE CAST(NULL AS DATETIME)
END,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN CAST(NULL AS INT)
  ELSE FLOOR(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/2)
END,
'OK'
FROM dummy2 d5, dummy2 d4, dummy2 d3, dummy2 d2, dummy2 d1, dummy2 d0, dummy2 dx
WHERE dx.x=1 AND (dx.x*10+d0.x)>=10 AND (dx.x*10+d0.x)<11
GO
COMMIT 
GO
INSERT INTO Order_Details SELECT
(dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
FLOOR(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/3),
(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)%12000),
1,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN 'N' ELSE 'Y' END,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN
 DATEADD(DAY, 10, GETDATE()) ELSE CAST(NULL AS DATETIME)
END,
CASE FLOOR(((dx.x*100)+(d0.x*10)+d1.x)/12) WHEN 9 THEN CAST(NULL AS INT)
  ELSE FLOOR(((dx.x*1000000)+
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/2)
END,
'OK'
FROM dummy2 d5, dummy2 d4, dummy2 d3, dummy2 d2, dummy2 d1, dummy2 d0, dummy2 dx
WHERE dx.x=1 AND (dx.x*10+d0.x)>=11 AND (dx.x*10+d0.x)<12
GO
COMMIT 
GO
DELETE FROM Shipments
GO
INSERT INTO Shipments SELECT 
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
DATEADD(DAY, -(90-FLOOR(0.16666667*((d0.x*100)+(d1.x*10)+d2.x))), GETDATE()),
FLOOR((
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)/4)
FROM dummy2 d5, dummy2 d4, dummy2 d3, dummy2 d2, dummy2 d1, dummy2 d0
WHERE d0.x<6 AND (d0.x*10+d1.x)<54
GO
DELETE FROM Addresses
GO
INSERT INTO Addresses SELECT 
     (d0.x*100000)+(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
     CHAR((d0.x*100000)+
             (d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x)+' Amy Ave.',
CAST(NULL AS VARCHAR), CAST(NULL AS VARCHAR),
'ABCVille'+CHAR((d3.x*100)+(d4.x*10)+d5.x),
CAST(FLOOR(((d3.x*10)+d4.x)/2) AS VARCHAR),
(d3.x*10000)+(d4.x*1000)+(d5.x*100)+(d2.x*10)
FROM dummy2 d5, dummy2 d4, dummy2 d3, dummy2 d2, dummy2 d1, dummy2 d0
WHERE d0.x<2 AND ((d0.x*100)+(d1.x*10)+d2.x)<135
GO
      
DELETE FROM Products
GO
INSERT INTO Products SELECT 
(d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x,
'Widget' + CHAR((d1.x*10000)+(d2.x*1000)+(d3.x*100)+(d4.x*10)+d5.x),
(d3.x*100)+(d4.x*10)+d5.x,
'Y',CAST(NULL AS INT) ,'NO','01','NC',
(d4.x*10)+d5.x,
(d5.x*100)+(d4.x*10)
FROM dummy2 d5, dummy2 d4, dummy2 d3, dummy2 d2, dummy2 d1
WHERE d1.x<2 AND ((d1.x*10)+d2.x)<12
GO   
UPDATE STATISTICS Addresses
GO
UPDATE STATISTICS Shipments
GO
UPDATE STATISTICS Order_Details
GO
UPDATE STATISTICS Orders
GO
UPDATE STATISTICS Products
GO
UPDATE STATISTICS Customers
GO
UPDATE STATISTICS Locations
GO
UPDATE STATISTICS Employees
GO
