use employees;

describe employees;

select *
from employees
where gender like 'M' and (
        first_name like 'Irena'
        or first_name like 'Vidya'
        or first_name like 'Maya'
    );

select *
from employees
where first_name like 'Irena'
        or first_name like 'Vidya'
        or first_name like 'Maya';

select first_name, last_name as 'last name start with e'
from employees
where last_name like 'E%';

select *
from employees
where last_name like '%E'
    or last_name like 'E%';

select *
from employees
where last_name like '%E'
   and last_name like 'E%';

select *
from employees
where hire_date between cast('1990-01-01' as date) and cast('1999-12-31' as date);

select *
from employees
where birth_date like '%12-25';

select *
from employees
where last_name like '%q%';

