use employees;

select * from departments;
select * from salaries;
select * from titles;

select d.dept_name department_name, concat(em.first_name, ' ', em.last_name) Department_manager
from employees em
join dept_manager dm
    on em.emp_no = dm.emp_no
join departments d
    on d.dept_no = dm.dept_no
where dm.to_date = '9999-01-01'
group by Department_name, Department_manager;

-- departments managed by women
select d.dept_name department_name, concat(em.first_name, ' ', em.last_name) Department_manager
from employees em
join dept_manager dm
    on em.emp_no = dm.emp_no
join departments d
    on d.dept_no = dm.dept_no
where dm.to_date = '9999-01-01' and em.gender like 'F'
group by Department_name, Department_manager;

-- count of all customer service titles
select t.title, count(d.dept_name) Count
from titles t
join employees e
    on t.emp_no = e.emp_no
join dept_emp de
    on e.emp_no = de.emp_no
join departments d
    on de.dept_no = d.dept_no
where t.to_date = '9999-01-01'
  and d.dept_name = 'Customer Service'
group by title;


-- all current manager salaries

select d.dept_name department_name,
       concat(em.first_name, ' ', em.last_name) Department_manager,
       s.salary
from employees em
join dept_manager dm
    on em.emp_no = dm.emp_no
join departments d
    on d.dept_no = dm.dept_no
join salaries s
    on em.emp_no = s.emp_no
where s.to_date = '9999-01-01'
  and  dm.to_date = '9999-01-01'
group by Department_name, Department_manager, salary;

-- bonus

select concat(em.first_name, ' ', em.last_name) Employee_name,
       d.dept_name Department_name,
       concat(m.first_name, ' ', m.last_name) Manager_name
from employees em
join dept_emp de
    on em.emp_no = de.emp_no
join departments d
    on d.dept_no = de.dept_no
join dept_manager dm
    on dm.dept_no = d.dept_no
join employees m
    on dm.emp_no = m.emp_no
where de.to_date = '9999-01-01'
and dm.to_date = '9999-01-01'
group by Department_name, Employee_name, Manager_name desc;