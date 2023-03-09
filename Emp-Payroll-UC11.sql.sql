------- UC 11: Implement the ER Diagram into Payroll Service DB -------

--Create Table for Company
Create Table Company
(CompanyID int identity(1,1) primary key,
CompanyName varchar(100))

--Insert Values in Company
Insert into Company values ('ABC'),('XYZ');
Select * from Company;

--Create Employee Table
drop table employee_payrolls;
create table Employee
(EmployeeID int identity(1,1) primary key,
CompanyIdentity int,
EmployeeName varchar(200),
EmployeePhoneNumber bigInt,
EmployeeAddress varchar(200),
StartDate date,
Gender char,
Foreign key (CompanyIdentity) references Company(CompanyID)
)
--Insert Values in Employee
insert into Employee values
(1,'Anu',9842905050,'5298 Wild Indigo, Georgia,340002','2012-03-28','F'),
(2,'Chinni',9842905550,'Constitution Ave Fairfield, California(CA), 94533','2017-04-22','F'),
(1,'Kanna',7812905050,'Bernard Shaw, Georgia,132001 ','2015-08-22','M'),
(2,'Abhi',7812905000,'Bernard Shaw, PB Marg Bareilly','2012-08-29','M');

Select * from Employee;

--Create Payroll Table
create table PayrollCalculate
(BasicPay float,
Deductions float,
TaxablePay float,
IncomeTax float,
NetPay float,
EmployeeIdentity int,
Foreign key (EmployeeIdentity) references Employee(EmployeeID)
)
--Insert Values in Payroll Table
insert into PayrollCalculate(BasicPay,Deductions,IncomeTax,EmployeeIdentity) values 
(4000000,1000000,20000,1),
(4500000,200000,4000,2),
(6000000,10000,5000,3),
(9000000,399994,6784,4);

select * from PayrollCalculate;

--Update Derived attribute values 
update PayrollCalculate
set TaxablePay=BasicPay-Deductions;

update PayrollCalculate
set NetPay=TaxablePay-IncomeTax;

select * from PayrollCalculate;

-----Create Department Table-----
create table Department
(
DepartmentId int identity(1,1) primary key,
DepartName varchar(100)
)
-----Insert Values in Department Table-----
insert into Department values
('Marketing'),
('Sales'),
('Publishing');

select * from Department;

-----Create table EmployeeDepartment-----
create table EmployeeDepartment
(
DepartmentIdentity int ,
EmployeeIdentity int,
Foreign key (EmployeeIdentity) references Employee(EmployeeID),
Foreign key (DepartmentIdentity) references Department(DepartmentID)
)

-----Insert Values in EmployeeDepartment-----
insert into EmployeeDepartment values
(3,1),
(2,2),
(1,3),
(3,4);

select * from EmployeeDepartment;