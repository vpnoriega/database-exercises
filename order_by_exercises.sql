USE employees;

-- Modify your first query to order by first name. The first result should be Irena Reutenauer and the last result should be Vidya Demeyer.

-- SELECT *
-- FROM employees
-- WHERE first_name IN ('Irena','Vidya','Maya');
SELECT *
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
ORDER BY first_name ASC;


-- Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Boguraev.

SELECT *
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
ORDER BY first_name ASC, last_name DESC;

-- Change the ORDER BY clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Vidya Quittner.

SELECT *
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
ORDER BY last_name ASC, first_name DESC;


-- Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change!

SELECT *
FROM employees
WHERE last_name LIKE ('%E%')
ORDER by emp_no;

