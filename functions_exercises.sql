USE employees;

-- Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.

SELECT CONCAT(first_name, ' ', last_name)
AS 'full_name' -- new column needs ''
FROM employees
WHERE last_name
LIKE 'E%' AND last_name LIKE '%E';


-- Find all employees born on Christmas — 842 rows

SELECT *
FROM employees
WHERE month(birth_date) = 12
AND day(birth_date) = 25; -- can also do dayofmonth(birth_date)


-- Find all employees hired in the 90s and born on Christmas — 362 rows.

SELECT *
FROM employees
WHERE year(hire_date)
BETWEEN 1990 AND 1999
AND MONTH(birth_date) = 12
AND day(birth_date)=25;


-- Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.

SELECT *
FROM employees
WHERE year(hire_date)
    BETWEEN 1990 AND 1999
  AND MONTH(birth_date) = 12
  AND day(birth_date)=25
ORDER BY birth_date ASC;
