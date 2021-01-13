use employees;

SELECT DISTINCT last_name
FROM employees
order by last_name desc
limit 10;

select concat(first_name, ' ', last_name) as 'full name'
from employees
where hire_date between cast('1990-01-01' as date) and cast('2000-12-31' as date)
  and birth_date like '%12-25'
order by birth_date, hire_date desc
limit 5 offset 45;