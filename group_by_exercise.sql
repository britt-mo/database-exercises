USE employees;

SELECT DISTINCT title, from_date
FROM titles;

SELECT title
FROM titles
GROUP BY title;

SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'q%' AND NOT last_name LIKE 'qu%';

SELECT concat(first_name, ' ', last_name)
FROM employees;

SELECT now(), curdate(), curtime();


SELECT CONCAT(
  'Teaching People to Code for ',
  UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2016-12-08'),
  ' seconds'
);


SELECT( UNIX_TIMESTAMP() - UNIX_TIMESTAMP(hire_date)) / (60 * 60 * 24 * 3365)
FROM employees;

SELECT count(*) from employees where gender = 'M';
select count(*) from employees where gender = 'F';

select count(*) AS 'Count of Genders', gender AS 'Gen' from employees
GROUP BY gender;



SELECT * from employees
where first_name = 'Yonghong' and last_name = 'Codenie';

DESCRIBE salaries;

select * from salaries;

select AVG(salary) from salaries group by emp_no;