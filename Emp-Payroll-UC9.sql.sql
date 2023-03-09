-------UC 9: Rename Salary to BasicPay and Add Deduction, Taxable pay, Income Pay , Netpay -------

EXEC sp_RENAME 'employee_payrolls.salary' , 'Basic Pay', 'COLUMN';

Alter table employee_payrolls
add Deduction varchar(255), TaxablePay varchar(255), IncomeTax varchar(255), NetPay varchar(255);

Update employee_payrolls 
set Deduction=1000
where Gender='F';

Update employee_payrolls 
set Deduction=2000
where Gender='M';

update employee_payrolls
set NetPay=(Basic Pay - Deduction);

update employee_payrolls
set TaxablePay=0, IncomeTax = 0;

select * from employee_payrolls;