USE employees;

-- Find all the employees with the same hire date as employee 101010 using a subquery
SELECT *
FROM employees
WHERE hire_date = (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
);

-- Douglas' way:
-- finds that employee first:
# SELECT hire_date
# FROM employees
# WHERE emp_no = 101010;

-- then selects all employees:
# SELECT *
# FROM employees
# WHERE hire_date IN(
#     SELECT hire_date
#     FROM employees
#     WHERE emp_no = 101010
#     );


-- Find all the titles held by all employees with the first name Aamod
SELECT DISTINCT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
);

-- Douglas' breakdown:
-- find where the name is located:
# SELECT emp_no FROM employees WHERE first_name = 'Aamod';

-- then add the Titles:
# SELECT title FROM titles WHERE emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod');

-- add Distinct:
# SELECT DISTINCT title
# FROM titles
# WHERE emp_no IN (
#   SELECT emp_no
#   FROM employees
#   WHERE first_name = 'Aamod'
#);

-- Find all the current department managers that are female
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > CURDATE()
)
AND gender = 'F';

-- Douglas' breakdown:
-- Find all managers:
#SELECT first_name, last_name, birth_date
# FROM employees
# WHERE emp_no IN (
#     SELECT emp_no
#     FROM dept_manager
# )
-- add the gender:
#SELECT first_name, last_name, birth_date
# FROM employees
# WHERE emp_no IN (
#     SELECT emp_no
#     FROM dept_manager
#) AND gender = 'F'
-- add the current date:
#SELECT first_name, last_name, birth_date
# FROM employees
# WHERE emp_no IN (
#     SELECT emp_no
#     FROM dept_manager
#      WHERE to_date = '9999-01-01'
#) AND gender = 'F'


-- BONUS: Find all the department names that currently have female managers.
SELECT dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE emp_no IN(
        SELECT emp_no
        FROM employees
        WHERE gender = 'F'
        )
      AND to_date > CURDATE()
);

-- Find the first and last name of the employee with the highest salary.

SELECT first_name, last_name
FROM employees
WHERE emp_no =
      (SELECT emp_no
       FROM salaries
       WHERE salary = (
           SELECT MAX(salary)
           FROM salaries
       )
      );