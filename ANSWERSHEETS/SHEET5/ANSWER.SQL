
--  🟢 EASY PROBLEMS (1-5)

--  Problem 1: Count Employees by Department
-- **Task:** How many employees in each department?
-- **Write your query:**

-- SELECT  department,COUNT(*)
-- FROM new_employees
-- GROUP BY department;


--  Problem 2: Total Salary by Department
-- **Task:** What's the total salary expense for each department?
-- **Write your query:**
-- ```sql

-- SELECT department  ,SUM(salary) AS Total_Salary
-- FROM new_employees
-- GROUP BY  department;


--  Problem 3: Average Salary by Department
-- **Task:** What's the average salary in each department?
-- **Write your query:**

-- SELECT department ,AVG(salary) AS Average_Salary
-- FROM new_employees
-- GROUP BY  department;


--  Problem 4: Orders by Status
-- **Task:** Count orders in each status category.
-- **Write your query:**

-- SELECT [status] , COUNT([status])
-- FROM sales_records
-- GROUP BY [status];




--  Problem 5: Total Spend by Customer
-- **Task:** How much has each customer spent in total?
-- **Write your query:**

-- SELECT customer_name , SUM(amount) AS Total_Spend
-- FROM sales_records
-- GROUP BY customer_name  ;



--  🟡 MEDIUM PROBLEMS (6-10)

--  Problem 6: Employee Count and Total Salary
-- **Task:** Show employee count and total salary for each department.
-- **Write your query:**

-- SELECT  department , SUM(salary)AS Total_Salary,COUNT(*) AS Total_Employee
-- FROM new_employees
-- GROUP BY department;


--  Problem 7: Salary Range by Department
-- **Task:** Show the minimum, maximum, and salary range (max - min) for each department.
-- **Write your query:**

-- SELECT department , MIN(salary)AS minimum_salary , MAX(salary) AS maximum_salary , (MAX(salary) - MIN(salary)) AS salary_range
-- FROM new_employees
-- GROUP BY department;


--  Problem 8: Departments with More Than 1 Employee
-- **Task:** Show only departments that have more than 1 employee.
-- **Write your query:**

-- SELECT department  , COUNT(*) AS Total_Employees
-- FROM new_employees
-- GROUP BY department 
-- HAVING COUNT(*)>1;


--  Problem 9: Employees with Salary Above Department Average
-- **Task:** Show employees earning more than their own department's average salary.
-- **Hint:** You will need a subquery that references the outer table (correlated subquery).
-- **Write your query:**




--  Problem 10: Top Department by Total Salary
-- **Task:** Which department has the highest total salary expense? (Show only the top 1).
-- **Write your query:**
-- ```sql
-- [Your answer here]
-- ```

-- ---

-- ## 🔴 HARD PROBLEMS (11-15)

-- ### Problem 11: Multiple Aggregates with Conditional Filter
-- **Task:** For each department, show:
-- - Total employee count
-- - Count of employees earning *more* than 45,000
-- - Total salary of the department
-- - The average salary *specifically for employees earning more than 45,000*.
-- **Write your query:**
-- ```sql
-- [Your answer here]
-- ```

-- ---

-- ### Problem 12: Customer Spending Analysis
-- **Task:** Show total orders, total amount spent, and average order value for each customer. 
-- **Filter:** Only include customers whose total spend is greater than 10,000.
-- **Order:** Sort by total spend from highest to lowest.
-- **Write your query:**
-- ```sql
-- [Your answer here]
-- ```

-- ---

-- ### Problem 13: Group By Multiple Columns
-- **Task:** Count how many orders each customer has in each status category.
-- **Write your query:**
-- ```sql
-- [Your answer here]
-- ```

-- ---

-- ### Problem 14: DISTINCT vs GROUP BY
-- **Task:** 
-- - Write a query to count the total number of unique customers.
-- - Write a separate query to list all the distinct statuses that exist in the orders table.
-- **Write your queries:**
-- ```sql
-- [Your answers here]
-- ```

-- ---

-- ### Problem 15: Complex Multi-Metric Department Analysis
-- **Task:** For each department, write a query to show:
-- - Employee count
-- - Total salary
-- - Average salary (rounded to 2 decimal places)
-- - Lowest salary
-- - Highest salary
-- - Number of employees hired after January 1st, 2020 (**Hint:** Use `YEAR(hire_date)` or `hire_date > '2020-01-01'`)
-- 
-- **Filter:** Only include departments where the average salary is strictly greater than 45,000.
-- **Order:** Sort the results by average salary from highest to lowest.
-- **Write your query:**
-- ```sql
-- [Your answer here]
-- ```

-- ---
-- 🚀 **Bonus Challenge for Problem 15:** Can you rewrite your query to show the "recent_hires" column using `SUM()` instead of `COUNT()`?
-- ---