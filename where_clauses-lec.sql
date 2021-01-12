use employees;

describe departments;

select dept_no, dept_name from departments;

# select * from employees;

# select * from departments where dept_no = '%009%';

select * from titles;

select * from salaries;

select distinct first_name, last_name
from employees
where first_name like '%es%';

select emp_no, first_name, last_name
from employees
where last_name in ('Pearson', 'Luks','Peyn');

select emp_no, to_date
from titles
where to_date is not null

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name IN ('Herber','Baek')
  AND emp_no < 20000;

SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no < 20000
    AND last_name IN ('Herber','Baek')
   OR first_name = 'Shridhar';

SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no < 20000
  AND (
            last_name IN ('Herber','Baek')
        OR first_name = 'Shridhar'
    );