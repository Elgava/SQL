SELECT employee.employee_fname, employee.employee_lname, department.employee_dept, salaries.annual_salary, 
title.emp_title, salaries_increase.emp_sal_increase, overtime_hours.emp_overtime

from employee
left join department
on employee.departments = department.dept_id
left join title
on employee.title_ = title.title_id
left join salaries
on employee.salaries_ = salaries.salary_id
left join salaries_increase
on employee.salary_ = salaries_increase.sal_inc_id
left join overtime_hours
on employee.overtime_key = overtime_hours.over_hours_id;
