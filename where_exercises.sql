use employees;

select emp_no, first_name, last_name from employees where first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';