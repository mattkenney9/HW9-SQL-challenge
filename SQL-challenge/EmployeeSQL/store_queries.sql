--(1)
SELECT employees.emp_no, employees.last_name, employees.sex, salaries.salary
FROM employees
inner join salaries on
employees.emp_no = salaries.emp_no;

--(2)
SELECT first_name, last_name, hire_date
FROM employees
WHERE DATE_PART('year', hire_date)= 1986

--(3)
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.first_name, employees.last_name
FROM employees
inner join dept_manager
ON employees.emp_no = dept_manager.emp_no
inner join departments
on departments.dept_no = dept_manager.dept_no
order by dept_no

--(4)
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
inner join employees
on employees.emp_no = dept_emp.emp_no
inner join departments
on dept_emp.dept_no = departments.dept_no

--(5)
SELECT first_name, last_name, sex
FROM employees
WHERE first_name= 'Hercules'
AND last_name LIKE 'B%'

--(6)
SELECT dept_emp.emp_no, departments.dept_name, employees.first_name, employees.last_name
FROM dept_emp
inner join employees
on employees.emp_no = dept_emp.emp_no
inner join departments
on dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales' 

--(7)
SELECT dept_emp.emp_no, departments.dept_name, employees.first_name, employees.last_name
FROM dept_emp
inner join employees
on employees.emp_no = dept_emp.emp_no
inner join departments 
on dept_emp.dept_no = departments.dept_no
WHERE dept_name in ('Sales', 'Development')

--(8)
SELECT last_name, COUNT(last_name) as last_name
FROM employees
GROUP BY last_name
ORDER BY last_name_count DESC
