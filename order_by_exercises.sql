use employees;

SELECT first_name, last_name
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' AND last_name ='Majewski' OR last_name = 'Schaft';