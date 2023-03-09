-----UC-3 Insert values in Table-----
Insert into employee_payrolls(name,salary,startDate) values
('Sita',20000,'2021-03-12'),
('Gita',25000,'2021-04-18'),
('Nita',10000,'2020-05-13'),
('Rita',30000,'2020-08-19');

--UC-4 Retrieve All data--
select * from employee_payrolls;
------- UC 5: Select Query using Cast() an GetDate() -------
select salary from employee_payrolls where name='Gita';
select salary from employee_payrolls where startDate BETWEEN Cast('2018-01-01' as Date) and GetDate();
------- UC 6: Add Gender Column and Update Table Values -------
Alter table employee_payrolls
add Gender char(1);

Update employee_payrolls 
set name='Anil'
where name='Nita';

Update employee_payrolls 
set name='Akhil'
where name='Rita';

Update employee_payrolls 
set Gender='F'
where name='Sita' or name='Gita';

Update employee_payrolls 
set Gender='M'
where name='Anil' or name='Akhil';

select * from employee_payrolls;