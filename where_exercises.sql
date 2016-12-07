use employees;

select emp_no, first_name, last_name from employees where last_name LIKE "e%" OR last_name LIKE "%e";