use employees;


select distinct title from titles;

select last_name, first_name
from employees
where last_name like 'E%E'
group by last_name, first_name;


select last_name
from employees
where last_name like '%q%'
and last_name not like '%qu%'
group by last_name;

select last_name, count(*) as unusual_names
from employees
where last_name like 'E%E'
   or ( last_name like '%q%'
    and last_name not like '%qu%'
    )
group by last_name
order by unusual_names desc;


select count(gender) as gender_counts,  gender
from employees
where first_name in('Irena', 'Vidya', 'Maya')
group by gender;
