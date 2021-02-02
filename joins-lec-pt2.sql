use employees;

select * from employees;
select * from titles;

select concat(employees.first_name, ' ', employees.last_name) e, title
from employees
join titles on employees.emp_no = titles.emp_no
where to_date > now();

-- using alias
select concat(e.first_name, ' ', e.last_name) as full_name, title
from employees as e
join titles as t on e.emp_no = t.emp_no
where to_date > now();

select concat(e.first_name, ' ', e.last_name) as full_name, d.dept_name, de.from_date
from employees e
join dept_emp de
    on e.emp_no = de.emp_no
join departments d
    on d.dept_no = de.dept_no
where de.to_date = '9999-01-01' and e.emp_no = 10001;