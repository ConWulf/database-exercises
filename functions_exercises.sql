use employees;

select hire_date, datediff(now(), hire_date) as 'days worked'
from employees
where hire_date between cast('1990-01-01' as date) and cast('2000-12-31' as date)
  and birth_date like '%12-25'
order by birth_date, hire_date desc;


select *
from employees
where first_name in('Irena', 'Vidya', 'Maya')
order by last_name desc, first_name;

select concat(first_name, ' ', last_name) as 'full name'
from employees
where last_name like 'E%E'
order by emp_no desc;