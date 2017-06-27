--Create tables script for Oracle tables for all examples
drop table employees;
create table employees (employee_id number not null, department_id number,
first_name varchar2(40), last_name varchar2(40), retirement_date date,
location_id number, salary number, manager_id number, Nickname varchar2(40),
Phone_Number number, Hire_Date DATE, Exempt_Flag CHAR(1));
drop table orders;
create table orders (order_id number not null,
customer_id number, unpaid_flag char(1), Status_Code CHAR(3),
Region_ID number, Order_Date DATE, Ship_Date DATE, Salesperson_ID NUMBER,
Order_Type_Code CHAR(3), Completed_Flag CHAR(1), Business_Unit_ID NUMBER);
drop table order_details;
create table order_details (order_detail_id number not null,
order_id number not null, product_id number, Item_Count number,
Shipped_Flag CHAR(1), Deferred_Ship_Date DATE, Shipment_ID number,
Status_Code CHAR(3));
drop table customers;
CREATE TABLE Customers(Customer_ID NUMBER NOT NULL,
First_Name VARCHAR2(40), Last_Name VARCHAR2(40), Area_Code NUMBER,
Phone_Number VARCHAR2(20), Address_ID NUMBER, Customer_Name VARCHAR2(80),
Region_ID NUMBER, Customer_Type_Code CHAR(3), Honorific VARCHAR2(15),
Suffix VARCHAR2(10), Active_Flag CHAR(1), Profiled_Flag CHAR(1),
ZIP_Code NUMBER, Customer_Type_ID NUMBER);
drop table departments;
create table departments(department_id number not null,
department_name varchar2(40), US_Based_Flag CHAR(1));
drop table locations;
create table locations(location_ID number not null, Description varchar2(128));
drop table wage_payments;
create table wage_payments(Wage_Payment_ID number not null,
Employee_ID number, Payment_Date DATE);
drop table Persons;
CREATE TABLE Persons(Person_ID NUMBER NOT NULL,
First_Name VARCHAR2(40), Last_Name VARCHAR2(40), Area_Code VARCHAR2(8),
Phone_Number VARCHAR2(15), Address_ID NUMBER);
DROP TABLE Contacts;
CREATE TABLE Contacts(Contact_Number NUMBER NOT NULL, Name VARCHAR2(30));
DROP TABLE Addresses;
CREATE TABLE Addresses(Address_ID NUMBER NOT NULL,
Street_Addr_Line1 VARCHAR2(60), Street_Addr_Line2 VARCHAR2(60),
Street_Addr_Line3 VARCHAR2(60),
City_Name VARCHAR2(50), State_Abbreviation CHAR(2), ZIP_Code NUMBER);
DROP TABLE Regions;
CREATE TABLE Regions(Region_ID NUMBER NOT NULL,
Name VARCHAR2(30));
DROP TABLE dummy;
create table dummy(x number);
DROP TABLE Products;
CREATE TABLE Products(Product_ID NUMBER NOT NULL,
Prod_Description VARCHAR2(60), Product_Line_ID NUMBER,
Txbl_Invntry_Flag CHAR(1), Consignee_ID NUMBER,
Strtgc_Product_Code CHAR(3), Turnover_Rate_Code CHAR(3), 
Consignment_Type_Code CHAR(3), Brand_ID NUMBER, Unit_Cost NUMBER);
DROP TABLE Shipments;
CREATE TABLE Shipments(Shipment_ID NUMBER NOT NULL,
Shipment_Date DATE, Address_ID NUMBER); 
DROP TABLE Code_Translations;
CREATE TABLE Code_Translations(Code CHAR(3) NOT NULL,
Code_Type VARCHAR2(32), Text VARCHAR2(80));
DROP TABLE ZIP_Codes;
CREATE TABLE ZIP_Codes(ZIP_Code NUMBER NOT NULL,
Demographic_ID NUMBER, Region_ID NUMBER);  
DROP TABLE ZIP_Demographics;
CREATE TABLE ZIP_Demographics(Demographic_ID NUMBER NOT NULL,
Name VARCHAR2(32));  
DROP TABLE Customer_Mailings;
CREATE TABLE Customer_Mailings(Customer_ID NUMBER NOT NULL,
Mailing_ID NUMBER NOT NULL);
DROP TABLE Mailings;
CREATE TABLE Mailings(Mailing_ID NUMBER NOT NULL,
Mailing_Date DATE NOT NULL, Catalog_ID NUMBER NOT NULL);  
DROP TABLE Catalogs;
CREATE TABLE Catalogs(Catalog_ID NUMBER NOT NULL,
Title VARCHAR2(32), Brand_ID NUMBER, Creation_Date DATE);  
DROP TABLE Brands;
CREATE TABLE Brands(Brand_ID NUMBER NOT NULL,
Name VARCHAR2(60));
DROP TABLE Product_Lines;
CREATE TABLE Product_Lines(Product_Line_ID NUMBER NOT NULL,
Name VARCHAR2(60));
DROP TABLE Inventory_Values;
CREATE TABLE Inventory_Values(Product_ID NUMBER NOT NULL,
Unit_Value NUMBER, Effective_Start_Date DATE NOT NULL,
Effective_End_Date DATE NOT NULL);
DROP TABLE Product_Locations;
CREATE TABLE Product_Locations(Product_ID NUMBER NOT NULL,
Warehouse_ID NUMBER NOT NULL, Quantity NUMBER);
DROP TABLE Warehouses;
CREATE TABLE Warehouses(Warehouse_ID NUMBER NOT NULL,
Name VARCHAR2(60), Address_ID NUMBER, Inventory_Taxing_Entity_ID NUMBER,
Region_ID NUMBER);
DROP TABLE Inventory_Taxing_Entities;
CREATE TABLE Inventory_Taxing_Entities(Inventory_Taxing_Entity_ID
NUMBER NOT NULL, Name VARCHAR2(60), Address_ID NUMBER,
Tax_Day_Of_Year CHAR(5));
DROP TABLE Inventory_Tax_Rates;
CREATE TABLE Inventory_Tax_Rates(Inventory_Taxing_Entity_ID 
NUMBER NOT NULL, Rate NUMBER, Effective_Start_Date DATE NOT NULL,
Effective_End_Date DATE NOT NULL);
DROP TABLE Consignees;
CREATE TABLE Consignees(Consignee_ID NUMBER NOT NULL,
Name VARCHAR2(60), Address_ID NUMBER);
DROP TABLE Salespersons;
CREATE TABLE Salespersons(Salesperson_ID NUMBER NOT NULL,
Employee_ID NUMBER, Region_ID NUMBER);
DROP TABLE Indexes;
CREATE TABLE Indexes(Index_ID NUMBER NOT NULL,
Table_ID NUMBER NOT NULL, Index_Name VARCHAR2(30) NOT NULL,
Note VARCHAR2(800)); 
DROP TABLE Index_Columns;
CREATE TABLE Index_Columns(Index_ID NUMBER NOT NULL,
Column_Number NUMBER NOT NULL, Index_Position NUMBER NOT NULL); 
DROP TABLE Table_Columns;
CREATE TABLE Table_Columns(Table_ID NUMBER NOT NULL,
Column_Number NUMBER NOT NULL, Column_Name VARCHAR2(30) NOT NULL);
DROP TABLE Customer_Types;
CREATE TABLE Customer_Types(Customer_Type_ID NUMBER NOT NULL,
Text VARCHAR2(30));
DROP TABLE Employees1;
CREATE TABLE Employees1 AS SELECT * FROM Employees;
DROP TABLE Employees2;
CREATE TABLE Employees2 AS SELECT * FROM Employees;
