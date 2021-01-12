use employees;

describe employees;

select *
from employees
where first_name
in ('Irena', 'Vidya', 'Maya');

select first_name, last_name as 'last name start with e'
from employees
where last_name like 'E%';

select *
from employees
where hire_date like '199%';

select *
from employees
where birth_date like '%12-25';

select *
from employees
where last_name like '%q%';