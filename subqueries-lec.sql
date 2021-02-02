use employees;

SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
)
LIMIT 10;

select dept_no
from departments
where dept_name like 'Customer Service';

select *
from departments
where dept_no like (
    select dept_no
    from departments
    where dept_name like 'Customer%'
    );

select emp_no
from dept_manager
where dept_no in (
    select dept_no
    from departments
    where dept_name like 'Sales'
    )
and to_date > now();

select concat(
    (
        select max(salary)
        from salaries
        where emp_no = 10001
    ),
    ' ',
    (
        select max(salary)
        from salaries
        where emp_no = 10002
    )
        );

select concat(em.first_name, ' ', em.last_name) Managers
from employees em
join dept_manager dm
    on em.emp_no = dm.emp_no;

select concat(first_name, ' ', last_name) Managers
from employees
where emp_no in (
        select emp_no from dept_manager
    );
