--creates all the tables for the examples applicable to SQL Server
use yourschemahere
GO
DROP TABLE Employees
CREATE TABLE Employees (Employee_ID INT not null, Department_ID INT,
First_Name VARCHAR(40), Last_Name VARCHAR(40), Retirement_Date DATETIME,
Location_ID INT, Salary INT, Manager_ID INT, Nickname VARCHAR(40),
Phone_Number INT, Hire_Date DATETIME, Exempt_Flag CHAR(1))
DROP TABLE Orders
CREATE TABLE Orders (Order_ID INT not null,
Customer_ID INT, Unpaid_Flag char(1), Status_Code CHAR(3),
Region_ID INT, Order_Date DATETIME, Ship_Date DATETIME,
Salesperson_ID INT,
Order_Type_Code CHAR(3), Completed_Flag CHAR(1), Business_Unit_ID INT)
DROP TABLE Order_Details
CREATE TABLE Order_Details (Order_Detail_ID INT not null,
Order_ID INT not null, Product_ID INT, Item_Count INT,
Shipped_Flag CHAR(1), Deferred_Ship_Date DATETIME, Shipment_ID INT,
Status_Code CHAR(3))
DROP TABLE Customers
CREATE TABLE Customers(Customer_ID INT NOT NULL,
First_Name VARCHAR(40), Last_Name VARCHAR(40), Area_Code INT,
Phone_Number VARCHAR(20), Address_ID INT, Customer_Name VARCHAR(80),
Region_ID INT, Customer_Type_Code CHAR(3), Honorific VARCHAR(15),
Suffix VARCHAR(10), Active_Flag CHAR(1), Profiled_Flag CHAR(1),
ZIP_Code INT, Customer_Type_ID INT)
DROP TABLE Departments
CREATE TABLE Departments(Department_ID INT not null,
Department_Name VARCHAR(40), US_Based_Flag CHAR(1))
DROP TABLE Locations
CREATE TABLE Locations(Location_ID INT not null, Description VARCHAR(128))
DROP TABLE Wage_Payments
CREATE TABLE Wage_Payments(Wage_Payment_ID INT not null,
Employee_ID INT, Payment_Date DATETIME)
DROP TABLE Persons
CREATE TABLE Persons(Person_ID INT NOT NULL,
First_Name VARCHAR(40), Last_Name VARCHAR(40), Area_Code VARCHAR(8),
Phone_Number VARCHAR(15), Address_ID INT)
DROP TABLE Contacts
CREATE TABLE Contacts(Contact_Number INT NOT NULL, Name VARCHAR(30))
DROP TABLE Addresses
CREATE TABLE Addresses(Address_ID INT NOT NULL,
Street_Addr_Line1 VARCHAR(60), Street_Addr_Line2 VARCHAR(60),
Street_Addr_Line3 VARCHAR(60),
City_Name VARCHAR(50), State_Abbreviation CHAR(2), ZIP_Code INT)
DROP TABLE Regions
CREATE TABLE Regions(Region_ID INT NOT NULL,
Name VARCHAR(30))
DROP TABLE dummy2
CREATE TABLE dummy2(x INT)
DROP TABLE Products
CREATE TABLE Products(Product_ID INT NOT NULL,
Prod_Description VARCHAR(60), Product_Line_ID INT,
Txbl_Invntry_Flag CHAR(1), Consignee_ID INT,
Strtgc_Product_Code CHAR(3), Turnover_Rate_Code CHAR(3), 
Consignment_Type_Code CHAR(3), Brand_ID INT, Unit_Cost INT)
DROP TABLE Shipments
CREATE TABLE Shipments(Shipment_ID INT NOT NULL,
Shipment_Date DATETIME, Address_ID INT) 
DROP TABLE Code_Translations
CREATE TABLE Code_Translations(Code CHAR(3) NOT NULL,
Code_Type VARCHAR(32), Text VARCHAR(80))
DROP TABLE ZIP_Codes
CREATE TABLE ZIP_Codes(ZIP_Code INT NOT NULL,
Demographic_ID INT, Region_ID INT)  
DROP TABLE ZIP_Demographics
CREATE TABLE ZIP_Demographics(Demographic_ID INT NOT NULL,
Name VARCHAR(32))  
DROP TABLE Customer_Mailings
CREATE TABLE Customer_Mailings(Customer_ID INT NOT NULL,
Mailing_ID INT NOT NULL)
DROP TABLE Mailings
CREATE TABLE Mailings(Mailing_ID INT NOT NULL,
Mailing_Date DATETIME NOT NULL, Catalog_ID INT NOT NULL)  
DROP TABLE Catalogs
CREATE TABLE Catalogs(Catalog_ID INT NOT NULL,
Title VARCHAR(32), Brand_ID INT, Creation_Date DATETIME)  
DROP TABLE Brands
CREATE TABLE Brands(Brand_ID INT NOT NULL,
Name VARCHAR(60))
DROP TABLE Product_Lines
CREATE TABLE Product_Lines(Product_Line_ID INT NOT NULL,
Name VARCHAR(60))
DROP TABLE Inventory_Values
CREATE TABLE Inventory_Values(Product_ID INT NOT NULL,
Unit_Value INT, Effective_Start_Date DATETIME NOT NULL,
Effective_End_Date DATETIME NOT NULL)
DROP TABLE Product_Locations
CREATE TABLE Product_Locations(Product_ID INT NOT NULL,
Warehouse_ID INT NOT NULL, Quantity INT)
DROP TABLE Warehouses
CREATE TABLE Warehouses(Warehouse_ID INT NOT NULL,
Name VARCHAR(60), Address_ID INT, Inventory_Taxing_Entity_ID INT,
Region_ID INT)
DROP TABLE Inventory_Taxing_Entities
CREATE TABLE Inventory_Taxing_Entities(Inventory_Taxing_Entity_ID
INT NOT NULL, Name VARCHAR(60), Address_ID INT,
Tax_Day_Of_Year CHAR(5))
DROP TABLE Inventory_Tax_Rates
CREATE TABLE Inventory_Tax_Rates(Inventory_Taxing_Entity_ID 
INT NOT NULL, Rate INT, Effective_Start_Date DATETIME NOT NULL,
Effective_End_Date DATETIME NOT NULL)
DROP TABLE Consignees
CREATE TABLE Consignees(Consignee_ID INT NOT NULL,
Name VARCHAR(60), Address_ID INT)
DROP TABLE Salespersons
CREATE TABLE Salespersons(Salesperson_ID INT NOT NULL,
Employee_ID INT, Region_ID INT)
DROP TABLE Indexes
CREATE TABLE Indexes(Index_ID INT NOT NULL,
Table_ID INT NOT NULL, Index_Name VARCHAR(30) NOT NULL,
Note VARCHAR(800)) 
DROP TABLE Index_Columns
CREATE TABLE Index_Columns(Index_ID INT NOT NULL,
Column_Number INT NOT NULL, Index_Position INT NOT NULL) 
DROP TABLE Table_Columns
CREATE TABLE Table_Columns(Table_ID INT NOT NULL,
Column_Number INT NOT NULL, Column_Name VARCHAR(30) NOT NULL)
DROP TABLE Customer_Types
CREATE TABLE Customer_Types(Customer_Type_ID INT NOT NULL,
Text VARCHAR(30))
GO
