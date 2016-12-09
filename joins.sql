use employees;

select employees.first_name, employees.last_name, salaries.salary, salaries.to_date
FROM employees
join salaries on employees.emp_no = salaries.emp_no
where salaries.to_date > now();

select concat(employees.first_name, ' ', employees.last_name) as full_name, titles.title
FROM employees
JOIN titles on employees.emp_no = titles.emp_no
JOIN salaries on employees.emp_no = salaries.emp_no
where salaries.to_date > now();

use join_test_db;

SELECT users.name as user_name, roles.name as role_name
FROM users
  JOIN roles ON users.role_id = roles.id;

select u.name, r.name from users u
JOIN roles r on r.id = u.role_id;

INSERT INTO users (name, email, role_id) VALUES
  ('britt', 'britt@example.com', 2),
  ('mj', 'mj@example.com', 2),
  ('morgan', 'morgan@example.com', NULL),
  ('jackie', 'jackie@example.com', 2);

UPDATE users SET role_id = 4
where role_id is null;

select * from users;

SELECT count(users.name), roles.name
from users
RIGHT JOIN roles ON users.role_id = roles.id
GROUP BY roles.name;

SELECT count(*) AS Count,
  r.name
FROM roles r
LEFT JOIN users u ON u.role_id = r.id
GROUP BY r.name;

use employees;

SELECT d.dept_name AS dept_name , CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
  JOIN dept_manager as de
    ON de.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01';

SELECT d.dept_name AS dept_name , CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
  JOIN dept_manager as de
    ON de.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND gender = 'f';


SELECT titles.title as Title, count(*)
FROM titles
  JOIN employees on titles.emp_no = employees.emp_no
JOIN dept_emp on employees.emp_no = dept_emp.emp_no
WHERE dept_emp.dept_no = 'd009' AND titles.to_date = '9999-01-01'
GROUP BY titles.title;



SELECT d.dept_name AS dept_name , CONCAT(e.first_name, ' ', e.last_name) AS full_name, salaries.salary
FROM employees as e
  JOIN dept_manager as de
    ON de.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = de.dept_no
  JOIN salaries on e.emp_no = salaries.emp_no
WHERE de.to_date = '9999-01-01' AND salaries.to_date = '9999-01-01';


SELECT d.dept_name AS dept_name , CONCAT(e.first_name, ' ', e.last_name) AS full_name, salaries.salary
FROM employees as e
  JOIN dept_manager as de
    ON de.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = de.dept_no
  JOIN salaries on e.emp_no = salaries.emp_no
WHERE de.to_date = '9999-01-01' AND salaries.to_date = '9999-01-01';







SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee Name',
  d.dept_name AS dept_name, CONCAT (m.first_name, ' ', m.last_name) AS 'Manager Name'
FROM employees AS e
JOIN dept_emp ON e.emp_no = dept_emp.emp_no
JOIN departments as d
ON dept_emp.dept_no = d.dept_no
JOIN dept_manager
ON d.dept_no = dept_manager.dept_no
JOIN employees m ON dept_manager.emp_no = m.emp_no
WHERE dept_emp.to_date = '9999-01-01' AND dept_manager.to_date = '9999-01-01';

SELECT first_name, last_name
FROM employees
WHERE hire_date LIKE (
  SELECT hire_date
  FROM employees
  WHERE employees.emp_no = 101010);

SELECT titles.title
FROM titles
  JOIN employees ON titles.emp_no = employees.emp_no
WHERE employees.first_name = 'Aamod';

SELECT titles.title
FROM titles
WHERE titles.emp_no IN (
      SELECT emp_no
      FROM employees
      WHERE employees.first_name = 'Aamod'
);


SELECT CONCAT(first_name,' ', last_name )
FROM employees
WHERE emp_no IN(
  SELECT emp_no
  FROM dept_manager
  WHERE gender = 'F');