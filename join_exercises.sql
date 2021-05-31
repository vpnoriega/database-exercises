USE employees;

-- SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
-- FROM employees as e
--          JOIN dept_emp as de
--               ON de.emp_no = e.emp_no
--          JOIN departments as d
--               ON d.dept_no = de.dept_no
-- WHERE to_date = '9999-01-01' AND e.emp_no = 10001;


-- Write a query that shows each department along with the name of the current manager for that department.
SELECT dpt.dept_name AS 'Department Name', CONCAT( e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
         JOIN dept_manager AS dm
              ON e.emp_no = dm.emp_no
         JOIN departments AS dpt
              ON dm.dept_no = dpt.dept_no
WHERE to_date > CURRENT_DATE
ORDER BY dept_name;

-- Find the name of all departments currently managed by women.
SELECT dpt.dept_name AS 'Department Name', CONCAT( e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
         JOIN dept_manager AS dm
              ON e.emp_no = dm.emp_no
         JOIN departments AS dpt
              ON dm.dept_no = dpt.dept_no
WHERE to_date > CURRENT_DATE AND e.gender =  'f'
ORDER BY dept_name;


