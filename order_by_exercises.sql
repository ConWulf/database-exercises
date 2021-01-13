use employees;

select *
from employees
where gender like 'M' and (
            first_name like 'Irena'
        or first_name like 'Vidya'
        or first_name like 'Maya'
    );

select *
from employees
where first_name in('Irena', 'Vidya', 'Maya')
order by last_name desc, first_name;

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
where last_name like 'E%E'
order by emp_no desc;

select *
from employees
where last_name like '%E'
  and last_name like 'E%';

describe employees;

select *
from employees
where hire_date between cast('1990-01-01' as date) and cast('1999-12-31' as date);



select *
from employees
where hire_date between cast('1990-01-01' as date) and cast('2000-12-31' as date)
  and birth_date like '%12-25'
order by birth_date, hire_date desc;

select *
from employees
where birth_date like '%12-25';

select *
from employees
where last_name like '%q%';

select *
from employees
where last_name like '%q%'
  and last_name not like '%qu%';