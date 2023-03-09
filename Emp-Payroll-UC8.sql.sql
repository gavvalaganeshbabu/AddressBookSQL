------- UC 8: Add column department,PhoneNumber and Address -------
Alter table employee_payrolls
add EmployeePhoneNumber BigInt,EmployeeDepartment varchar(200) not null default 'Publish',Address varchar(200) default 'Not Provided';

Update employee_payrolls 
set EmployeePhoneNumber='9440505336',EmployeeDepartment='Editing',Address='Hyderabad,Telangana'
where name='Sita';

Update employee_payrolls 
set EmployeePhoneNumber='7981775066',EmployeeDepartment='Devloper',Address='Banglore,Karnataka'
where name ='Gita';

Update employee_payrolls 
set EmployeePhoneNumber='9441720558',EmployeeDepartment='Management',Address='Chennai,TamilNadu'
where name ='Anil';

Update employee_payrolls 
set EmployeePhoneNumber='8959092723',EmployeeDepartment='Engineer',Address='Vizag,AndhraPradesh'
where name ='Akhil';

select * from employee_payrolls;