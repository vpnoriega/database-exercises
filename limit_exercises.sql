USE employees;
-- SELECT DISTINCT title FROM titles;

-- List the first 10 distinct last name sorted in descending order. Your result should look like this:
SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC LIMIT 10;

-- Create a query to get the top 5 salaries and display just the employees number from the salaries table. The employee number results should be:
SELECT emp_no
FROM salaries
ORDER BY salary
DESC limit 5;

-- Try to think of your results as batches, sets, or pages. The first five results are your first page. The five after that would be your second page, etc.
-- Update the previous query to find the tenth page of results.

-- OFFSET tells MySQL which row to start with
-- LIMIT clause limits the number of results returned to a number or range you specify

-- 10 pages: pg 1 = 1-5, 2 = 6-10, 3 = 11-15, 4 = 16-20, 5 = 21-25, 6 = 26-30, 7 = 31-35, 8 = 36-40, 9 = 41-45, 10 = 46-50
Select emp_no
FROM salaries
ORDER BY salary
DESC limit 5
OFFSET 46;