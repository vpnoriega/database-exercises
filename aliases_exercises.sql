USE employees;

-- Return 10 employees in a result set named 'full_name' in the format of 'last name, first name' for each employee.

-- **KEEP COMMENTED:
-- SELECT CONCAT(last_name, ' ', first_name) AS full_name
-- FROM employees
-- LIMIT 10;


-- Add the date of birth for each employee as 'DOB' to the query.
SELECT CONCAT(last_name, ' ', first_name) AS full_name, (birth_date) AS DOB
FROM employees
         LIMIT 10;