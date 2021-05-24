USE employees;

-- Find all the employees with the same hire date as employee 101010 using a subquery
SELECT first_name, last_name, birth_date
FROM employees
WHERE hire_date = (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
);

-- Find all the titles held by all employees with the first name Aamod
SELECT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
);

-- Find all the current department managers that are female
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > CURDATE()
    )
AND gender = 'F';

-- Find all the department names that currently have female managers.
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

