--Creates all indexes in examples applicable to DB2

CREATE INDEX Emp_Mgr_ID ON Employees(Manager_ID);
CREATE INDEX Emp_Last_Name ON Employees(Last_Name);
CREATE INDEX Emp_Location_ID ON Employees(Location_ID);
CREATE INDEX Emp_Department_ID ON Employees(Department_ID);
CREATE INDEX Emp_Hire_Date ON Employees(Hire_Date);
CREATE UNIQUE INDEX Employee_PKey ON Employees(Employee_ID);
CREATE UNIQUE INDEX Department_PKey ON Departments(Department_ID);
CREATE UNIQUE INDEX Location_PKey ON Locations(Location_ID);
CREATE INDEX Loc_Description ON Locations(Description);
CREATE UNIQUE INDEX Wage_Pymnt_PKey ON Wage_Payments(Wage_Payment_ID);
CREATE INDEX Wage_Pymnt_Emp_ID ON Wage_Payments(Employee_ID);
CREATE INDEX Emp_First_Name ON Employees(First_Name);
CREATE INDEX Emp_Nickname ON Employees(Nickname);
CREATE UNIQUE INDEX Ordr_Dtl_PKey on Order_Details(Order_Detail_ID);
CREATE UNIQUE INDEX Order_PKey on Orders(Order_ID);
CREATE INDEX Order_Cust_ID on Orders(Customer_ID);
CREATE INDEX Order_Stts_Code on Orders(Status_Code);
CREATE INDEX Order_Rgn_ID on Orders(Region_ID);
CREATE INDEX Order_Ordr_Date on Orders(Order_Date);
CREATE UNIQUE INDEX Customer_PKey on Customers(Customer_ID);
CREATE INDEX Cust_Cust_Name on Customers(Customer_Name);
CREATE INDEX Order_Dtl_Ord_ID on Order_Details(Order_ID);
CREATE INDEX Prsn_Ph_Number on Persons(Phone_Number);
CREATE UNIQUE INDEX Address_PKey on Addresses(Address_ID);
CREATE UNIQUE INDEX Region_PKey on Regions(Region_ID);
CREATE INDEX Region_Name on Regions(Name);
CREATE INDEX Addr_ZIP_Code on Addresses(ZIP_Code);
CREATE INDEX Ordr_Ship_Date ON Orders(Ship_Date);
CREATE UNIQUE INDEX Product_PKey on Products(Product_ID);
CREATE UNIQUE INDEX Shipment_PKey on Shipments(Shipment_ID);
CREATE UNIQUE INDEX Code_Trans_PKey
on Code_Translations(Code_Type, Code);
CREATE INDEX Cust_Ph_Number on Customers(Phone_Number);
