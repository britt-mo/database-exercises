use employees;

select emp_no, first_name, last_name from employees where last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

select emp_no, first_name, last_name from employees where birth_date LIKE '%-12-25' AND hire_date LIKE '199%';