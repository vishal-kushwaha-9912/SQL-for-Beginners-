-- ============================================================
-- Chapter 2: WHERE Clause
-- Learn how to filter records using the WHERE clause and
-- different SQL operators.
-- ============================================================


-- ============================================================
-- Practice Dataset
-- ============================================================

CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    age INT,
    salary INT,
    department VARCHAR(50),
    job_title VARCHAR(50),
    city VARCHAR(50),
    email VARCHAR(50)
);

INSERT INTO employees VALUES
(101, 'Rahul', 28, 50000, 'IT', 'Software Engineer', 'Delhi', 'rahul@company.com'),
(102, 'Priya', 32, 60000, 'HR', 'HR Manager', 'Mumbai', 'priya@company.com'),
(103, 'Aman', 25, 45000, 'IT', 'Junior Developer', 'Delhi', NULL),
(104, 'Neha', 35, 70000, 'Finance', 'Financial Analyst', 'Bangalore', 'neha@company.com'),
(105, 'Rohan', 29, 85000, 'IT', 'Software Engineer', 'Pune', 'rohan@company.com'),
(106, 'Simran', 27, 48000, 'HR', 'Recruiter', 'Delhi', 'simran@company.com'),
(107, 'Vishal', 31, 95000, 'IT', 'Senior Software Engineer', 'Mumbai', 'vishal@company.com'),
(108, 'Anaya', 26, 52000, 'IT', 'QA Engineer', 'Bangalore', NULL);



-- ============================================================
-- PRACTICE EXERCISES
-- ============================================================


-- Exercise 1: Simple WHERE (Easy)
-- Task: Find all employees with salary greater than 50000.

SELECT *
FROM employees
WHERE salary > 50000;



-- ------------------------------------------------------------

-- Exercise 2: Comparison Operators (Easy)
-- Task: Find employees between 25 and 35 years old.

SELECT *
FROM employees
WHERE age BETWEEN 25 AND 35;



-- ------------------------------------------------------------

-- Exercise 3: IN Operator (Easy)
-- Task: Find employees from New York, Los Angeles, or Chicago.

SELECT *
FROM employees
WHERE city IN ('New York', 'Los Angeles', 'Chicago');



-- ------------------------------------------------------------

-- Exercise 4: AND Operator (Medium)
-- Task: Find IT employees with salary greater than 50000.

SELECT *
FROM employees
WHERE department = 'IT'
AND salary > 50000;



-- ------------------------------------------------------------

-- Exercise 5: OR Operator (Medium)
-- Task: Find employees from New York OR employees with age greater than 60.

SELECT *
FROM employees
WHERE city = 'New York'
OR age > 60;



-- ------------------------------------------------------------

-- Exercise 6: NOT Operator (Medium)
-- Task: Find employees NOT from Delhi.

SELECT *
FROM employees
WHERE city != 'Delhi';



-- ------------------------------------------------------------

-- Exercise 7: Complex Conditions (Hard)
-- Task: Find IT engineers whose salary is between 60,000 and 100,000.

SELECT *
FROM employees
WHERE department = 'IT'
AND job_title LIKE '%Engineer%'
AND salary BETWEEN 60000 AND 100000;



-- ------------------------------------------------------------

-- Exercise 8: LIKE & Wildcards (Medium)
-- Task: Find employees whose names start with J.

SELECT *
FROM employees
WHERE emp_name LIKE 'J%';



-- ------------------------------------------------------------

-- Exercise 9: NULL Handling (Medium)
-- Task: Find employees with missing email addresses.

SELECT *
FROM employees
WHERE email IS NULL;



-- ------------------------------------------------------------

-- Exercise 10: Multiple Conditions (Hard)
-- Task: Find employees from New York or Los Angeles,
-- older than 25, with an email address.

SELECT *
FROM employees
WHERE city IN ('New York', 'Los Angeles')
AND age > 25
AND email IS NOT NULL;



-- ============================================================
-- SOLUTIONS GUIDE
-- ============================================================


-- Solution 1

SELECT *
FROM employees
WHERE salary > 50000;



-- ------------------------------------------------------------

-- Solution 2

SELECT *
FROM employees
WHERE age BETWEEN 25 AND 35;



-- ------------------------------------------------------------

-- Solution 3

SELECT *
FROM employees
WHERE city IN ('New York', 'Los Angeles', 'Chicago');



-- ------------------------------------------------------------

-- Solution 4

SELECT *
FROM employees
WHERE department = 'IT'
AND salary > 50000;



-- ------------------------------------------------------------

-- Solution 5

SELECT *
FROM employees
WHERE city = 'New York'
OR age > 60;



-- ------------------------------------------------------------

-- Solution 6

SELECT *
FROM employees
WHERE city != 'Delhi';



-- ------------------------------------------------------------

-- Solution 7

SELECT *
FROM employees
WHERE department = 'IT'
AND job_title LIKE '%Engineer%'
AND salary BETWEEN 60000 AND 100000;



-- ------------------------------------------------------------

-- Solution 8

SELECT *
FROM employees
WHERE emp_name LIKE 'J%';



-- ------------------------------------------------------------

-- Solution 9

SELECT *
FROM employees
WHERE email IS NULL;



-- ------------------------------------------------------------

-- Solution 10

SELECT *
FROM employees
WHERE city IN ('New York', 'Los Angeles')
AND age > 25
AND email IS NOT NULL;

-- ============================================================
-- End of Chapter 2
-- ============================================================