/*Create a visualization that provides a breakdown between the male and female employees working in the company each year, starting from 1990. */
select EXTRACT(YEAR FROM dept_emp.from_date) as Calendar_year, employees.gender as Gender, count(employees.emp_no) as No_of_employees
from employees 
join dept_emp on employees.emp_no = dept_emp.emp_no
group by Calendar_year, employees.gender
having Calendar_year >= 1990
order by Calendar_year;


