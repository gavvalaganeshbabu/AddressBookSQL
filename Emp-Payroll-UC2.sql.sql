-----UC-2 creating Table-----
create Table employee_payrolls
(
id int identity(1, 1) primary key,
name varchar(200) not null,
salary float,
startDate date
)
