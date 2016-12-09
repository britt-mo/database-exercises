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

select count(*), gender AS 'Gen' from employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
 GROUP BY gender;

SELECT concat(first_name, ' ', last_name) AS 'Full Name'
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';







SELECT
  *,
  datediff(curdate(), hire_date) / 365 AS 'DaysEmployed'
 from employees
where hire_date LIKE '199%' AND birth_date LIKE '%-12-25'
ORDER BY DaysEmployed DESC;




SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'q%' AND NOT last_name LIKE 'qu%';

SELECT COUNT(first_name), first_name, last_name
FROM employees
WHERE last_name LIKE 'q%' AND NOT last_name LIKE 'qu%'
GROUP BY first_name, last_name
ORDER BY count(first_name) desc;

SELECT
  count(*) AS 'repeats',
  first_name,
  last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY first_name, last_name
ORDER BY repeats DESC;




SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
LIMIT 10;

select e.emp_no AS 'id from employees', s.emp_no AS 'emp_no from salaries'
from employees as e, salaries AS s
where e.first_name
      like '%q%' limit 1000;


select concat(
    (select DATEDIFF(CURDATE(), '2016-11-08')+1)
    ,' ', 'Days');

select DATEDIFF(CURDATE(), '2016-11-08') as 'Days';

SELECT CONCAT(emp_no, ' - ', last_name, ', ', first_name) AS full_name,
  birth_date AS 'DOB'
FROM employees
LIMIT 10;

select employees.*, salaries.*
  from employees, salaries
  where employees.emp_no = 10010, salaries.emp_no = 10010 limit 100

select *
FROM dept_emp
WHERE emp_no = '10010';

select *
FROM dept_manager;

use codeup;

CREATE TABLE quotes (
  id INT NOT NULL AUTO_INCREMENT,
  author VARCHAR(50) NOT NULL,
  content VARCHAR(240) NOT NULL,
  PRIMARY KEY (id)
);

DESCRIBE quotes;

Alter table quotes ADD UNIQUE(content);

use employees;

select from_date, to_date from dept_emp;


