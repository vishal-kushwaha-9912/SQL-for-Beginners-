

-- CREATE TABLE employees (
--     emp_id INT,
--     emp_name VARCHAR(50),
--     age INT,
--     salary INT,
--     department VARCHAR(50),
--     city VARCHAR(50),
--     email VARCHAR(50)
-- );

-- INSERT INTO employees VALUES 
-- (101, 'Rahul', 28, 50000, 'IT', 'Delhi', 'rahul@company.com'),
-- (102, 'Priya', 32, 60000, 'HR', 'Mumbai', 'priya@company.com'),
-- (103, 'Aman', 25, 45000, 'IT', 'Delhi', NULL),
-- (104, 'Neha', 35, 70000, 'Finance', 'Bangalore', 'neha@company.com'),
-- (105, 'Rohan', 29, 55000, 'IT', 'Pune', 'rohan@company.com'),
-- (106, 'Simran', 27, 48000, 'HR', 'Delhi', 'simran@company.com'),
-- (107, 'Vikram', 31, 65000, 'Finance', 'Mumbai', 'vikram@company.com'),
-- (108, 'Anaya', 26, 52000, 'IT', 'Bangalore', NULL);


--                               Exercise 1: Basic SELECT


-- qUESTION  1 Display all employee information
-- SELECT*FROM employees;


-- Task 1.2: Select Specific Columns
-- SELECT emp_id
-- FROM employees;

-- -- 🎯 Task 1.3: Select Multiple Columns
-- SELECT emp_id,emp_name
-- FROM employees;

--                    Exercise 2: SELECT with DISTINCT

-- Task 2.1: Find Unique Departments

-- SELECT DISTINCT city
-- FROM employees;

-- Exercise 3: SELECT with Alias (AS)

-- Task 3.1: Rename Column Headings

-- SELECT emp_id "ID NO"
-- FROM employees ;

-- Task 3.2: Alias for Calculations
-- Show salary and calculated bonus (10% of salary) with friendly names


-- SELECT emp_id "ID NO" , emp_name "EMPLOYEES NAME", salary "SALARY" , salary "10% bonus"
-- FROM employees;

-- 🎯 Task 4.2: Calculate Salary After Raise
--  Show employee name and salary after 5000 raise

-- SELECT emp_name "NAME", salary "SALARY",salary+5000 "5000+ in SALARY"
-- FROM employees;

