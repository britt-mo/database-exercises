use employees;

SELECT first_name, last_name
FROM employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
AND gender = 'M'
ORDER BY first_name, last_name;

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E'
ORDER BY emp_no DESC;

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
ORDER BY emp_no DESC;

SELECT *
FROM employees
WHERE hire_date LIKE '%199' AND birth_date LIKE '%-12-25';

SELECT first_name, last_name
FROM employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
      AND gender = 'M'
ORDER BY first_name, last_name;

select count(*) from employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
 GROUP BY gender;

SELECT concat(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';