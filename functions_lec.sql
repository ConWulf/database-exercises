use employees;

select concat(first_name,' ', Last_name) as 'all employees'
from employees;

select first_name, last_name
from employees
where last_name like 'A%a';

select current_time;

 select unix_timestamp(now());

select concat(
    'time ',
    from_unixtime(1820554660)
    )