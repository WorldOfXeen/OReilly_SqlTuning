--Creates all tables in DB2 for all text examples that apply to DB2.

drop table employees;
create table employees (employee_id INTEGER not null, department_id INTEGER,
first_name VARCHAR(40), last_name VARCHAR(40), retirement_date date,
location_id INTEGER, salary INTEGER, manager_id INTEGER, Nickname VARCHAR(40),
Phone_Number INTEGER, Hire_Date DATE, Exempt_Flag CHAR(1));
drop table orders;
create table orders (order_id INTEGER not null,
customer_id INTEGER, unpaid_flag char(1), Status_Code CHAR(3),
Region_ID INTEGER, Order_Date DATE, Ship_Date DATE, Salesperson_ID INTEGER,
Order_Type_Code CHAR(3), Completed_Flag CHAR(1), Business_Unit_ID INTEGER);
drop table order_details;
create table order_details (order_detail_id INTEGER not null,
order_id INTEGER not null, product_id INTEGER, Item_Count INTEGER,
Shipped_Flag CHAR(1), Deferred_Ship_Date DATE, Shipment_ID INTEGER,
Status_Code CHAR(3));
drop table customers;
CREATE TABLE Customers(Customer_ID INTEGER NOT NULL,
First_Name VARCHAR(40), Last_Name VARCHAR(40), Area_Code INTEGER,
Phone_Number VARCHAR(20), Address_ID INTEGER, Customer_Name VARCHAR(80),
Region_ID INTEGER, Customer_Type_Code CHAR(3), Honorific VARCHAR(15),
Suffix VARCHAR(10), Active_Flag CHAR(1), Profiled_Flag CHAR(1),
ZIP_Code INTEGER, Customer_Type_ID INTEGER);
drop table departments;
create table departments(department_id INTEGER not null,
department_name VARCHAR(40), US_Based_Flag CHAR(1));
drop table locations;
create table locations(location_ID INTEGER not null, Description VARCHAR(128));
drop table wage_payments;
create table wage_payments(Wage_Payment_ID INTEGER not null,
Employee_ID INTEGER, Payment_Date DATE);
drop table Persons;
CREATE TABLE Persons(Person_ID INTEGER NOT NULL,
First_Name VARCHAR(40), Last_Name VARCHAR(40), Area_Code VARCHAR(8),
Phone_Number VARCHAR(15), Address_ID INTEGER);
DROP TABLE Contacts;
CREATE TABLE Contacts(Contact_Number INTEGER NOT NULL, Name VARCHAR(30));
DROP TABLE Addresses;
CREATE TABLE Addresses(Address_ID INTEGER NOT NULL,
Street_Addr_Line1 VARCHAR(60), Street_Addr_Line2 VARCHAR(60),
Street_Addr_Line3 VARCHAR(60),
City_Name VARCHAR(50), State_Abbreviation CHAR(2), ZIP_Code INTEGER);
DROP TABLE Regions;
CREATE TABLE Regions(Region_ID INTEGER NOT NULL,
Name VARCHAR(30));
DROP TABLE dummy;
create table dummy(x INTEGER);
DROP TABLE Products;
CREATE TABLE Products(Product_ID INTEGER NOT NULL,
Prod_Description VARCHAR(60), Product_Line_ID INTEGER,
Tax_Invtry_Flag CHAR(1), Consignee_ID INTEGER,
Strtgc_Prod_Code CHAR(3), Trnvr_Rate_Code CHAR(3), 
Cnsgnmnt_Typ_Code CHAR(3), Brand_ID INTEGER, Unit_Cost INTEGER);
DROP TABLE Shipments;
CREATE TABLE Shipments(Shipment_ID INTEGER NOT NULL,
Shipment_Date DATE, Address_ID INTEGER); 
DROP TABLE Code_Translations;
CREATE TABLE Code_Translations(Code CHAR(3) NOT NULL,
Code_Type VARCHAR(32), Text VARCHAR(80));
DROP TABLE ZIP_Codes;
CREATE TABLE ZIP_Codes(ZIP_Code INTEGER NOT NULL,
Demographic_ID INTEGER, Region_ID INTEGER);  
DROP TABLE ZIP_Demographics;
CREATE TABLE ZIP_Demographics(Demographic_ID INTEGER NOT NULL,
Name VARCHAR(32));  
DROP TABLE Customer_Mailings;
CREATE TABLE Customer_Mailings(Customer_ID INTEGER NOT NULL,
Mailing_ID INTEGER NOT NULL);
DROP TABLE Mailings;
CREATE TABLE Mailings(Mailing_ID INTEGER NOT NULL,
Mailing_Date DATE NOT NULL, Catalog_ID INTEGER NOT NULL);  
DROP TABLE Catalogs;
CREATE TABLE Catalogs(Catalog_ID INTEGER NOT NULL,
Title VARCHAR(32), Brand_ID INTEGER, Creation_Date DATE);  
DROP TABLE Brands;
CREATE TABLE Brands(Brand_ID INTEGER NOT NULL,
Name VARCHAR(60));
DROP TABLE Product_Lines;
CREATE TABLE Product_Lines(Product_Line_ID INTEGER NOT NULL,
Name VARCHAR(60));
DROP TABLE Inventory_Values;
CREATE TABLE Inventory_Values(Product_ID INTEGER NOT NULL,
Unit_Value INTEGER, Effctv_Start_Date DATE NOT NULL,
Effctv_End_Date DATE NOT NULL);
DROP TABLE Product_Locations;
CREATE TABLE Product_Locations(Product_ID INTEGER NOT NULL,
Warehouse_ID INTEGER NOT NULL, Quantity INTEGER);
DROP TABLE Warehouses;
CREATE TABLE Warehouses(Warehouse_ID INTEGER NOT NULL,
Name VARCHAR(60), Address_ID INTEGER, Inventory_Taxing_Entity_ID INTEGER,
Region_ID INTEGER);
DROP TABLE Invntry_Txng_Nttys;
CREATE TABLE Invntry_Txng_Nttys(Inv_Txng_Ntty_ID
INTEGER NOT NULL, Name VARCHAR(60), Address_ID INTEGER,
Tax_Day_Of_Year CHAR(5));
DROP TABLE Invntry_Tax_Rates;
CREATE TABLE Invntry_Tax_Rates(Inv_Txng_Ntty_ID 
INTEGER NOT NULL, Rate INTEGER, Effctv_Start_Date DATE NOT NULL,
Effctv_End_Date DATE NOT NULL);
DROP TABLE Consignees;
CREATE TABLE Consignees(Consignee_ID INTEGER NOT NULL,
Name VARCHAR(60), Address_ID INTEGER);
DROP TABLE Salespersons;
CREATE TABLE Salespersons(Salesperson_ID INTEGER NOT NULL,
Employee_ID INTEGER, Region_ID INTEGER);
DROP TABLE Indexes;
CREATE TABLE Indexes(Index_ID INTEGER NOT NULL,
Table_ID INTEGER NOT NULL, Index_Name VARCHAR(30) NOT NULL,
Note VARCHAR(800)); 
DROP TABLE Index_Columns;
CREATE TABLE Index_Columns(Index_ID INTEGER NOT NULL,
Column_Number INTEGER NOT NULL, Index_Position INTEGER NOT NULL); 
DROP TABLE Table_Columns;
CREATE TABLE Table_Columns(Table_ID INTEGER NOT NULL,
Column_Number INTEGER NOT NULL, Column_Name VARCHAR(30) NOT NULL);
DROP TABLE Customer_Types;
CREATE TABLE Customer_Types(Customer_Type_ID INTEGER NOT NULL,
Text VARCHAR(30));
DROP TABLE Employees1;
CREATE TABLE Employees1 AS SELECT * FROM Employees;
DROP TABLE Employees2;
CREATE TABLE Employees2 AS SELECT * FROM Employees;
commit;
