
create table employee (
id serial,
employee_fname varchar(30),
employee_lname varchar(30),
id_number varchar(13),
age smallserial,
date_of_birth date,
marital_status varchar(15),
constraint emp_id primary key(id)
);

alter table employee
add column departments integer references department(dept_id);

create table department(
dept_id serial,
employee_dept varchar(30),
constraint dep_id primary key(dept_id)
);

alter table employee
add column salary_ integer references salaries(salary_id);

create table Salaries (
salary_id serial,
annual_salary money, --or numeric
constraint salary Primary key(salary_id)
);

alter table employee
add column title_ integer references title(title_id);

create table title(
title_id serial,
emp_title varchar(20),
constraint title_ Primary key(title_id)
);


alter table employee
add column salaries_ integer references salaries_increase(sal_inc_id);

create table salaries_increase(
sal_inc_id serial,
emp_sal_increase money ,--or numeric
constraint salar_y Primary key(sal_inc_id)
);

alter table employee
add column overtime_key integer references overtime_hours(over_hours_id);


create table overtime_hours(
over_hours_id serial,
emp_overtime varchar(5),
constraint over_time Primary key(over_hours_id)
);

alter table employee
add column overtime_key integer references overtime_hours(over_hours_id);

INSERT into employee(employee_fname, employee_lname, id_number, age, date_of_birth, marital_status)
VALUES('John', 'Smith', '0112275262082', 19, '2001-12-27', 'single'),
	  ('Jane', 'Smith', '0112272324041', 19, '2001-12-27', 'single'),
	  ('ashlyn', 'Govender', '0205207535064', 18, '2002-05-20', 'single'),
	  ('sudhir', 'badhesi', '0106266891024', 19, '2001-06-26', 'single');

INSERT into department(employee_dept)
VALUES('front office'),
	  ('housekeeping'),
	  ('food and beverage service'),
	  ('kitchen and food production');

INSERT INTO salaries(annual_salary)
VALUES(225000.00),
      (175000.00),
	  (250000.00),
	  (300000.00);
	  
INSERT INTO title(emp_title)
VALUES('admin'),
	  ('cleaner'),
	  ('waiter'),
	  ('chef');
	  
INSERT INTO salaries_increase(sal_inc_id)
VALUES(27500),
	  (25000),
	  (50000),
	  (55000);
	  
INSERT INTO overtime_hours(emp_overtime)
VALUES(3.0),
	  (2.0),
	  (1.0),
	  (4.0);

