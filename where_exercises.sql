use employees;


select emp_no, first_name, last_name from employees where first_name OR last_name LIKE '%q%';