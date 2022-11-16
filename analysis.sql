create table dept_employee(
	emp_no int ,
	dept_no varchar(30) not NULL

);
select * from salaries

select employees.emp_no, employees.last_name, employees.first_name, employees.sex,salaries.salary
from salaries
inner join employees on
employees.emp_no=salaries.emp_no;

select employees.first_name, employees.last_name, employees.hire_date
from employees
where hire_date = 1986;

select * from employees;