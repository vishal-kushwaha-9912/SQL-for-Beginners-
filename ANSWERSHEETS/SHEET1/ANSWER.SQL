
-- --- Exercise 1: Basic SELECT

-- ----🎯 Task 1.1: Select All Columns
-- ---**Objective:** Display all employee information

-- ```sql
-- -- Write your query here:

 SELECT * FROM employees;


-- **Expected Output:**
-- ```
-- emp_id | emp_name | age | salary | department | city | email
-- 101 | Rahul | 28 | 50000 | IT | Delhi | rahul@company.com
-- 102 | Priya | 32 | 60000 | HR | Mumbai | priya@company.com
-- ... (and more)
-- ```




-- . 🎯 Task 1.2: Select Specific Columns
-- **Objective:** Show only employee names and salaries

-- ```sql
-- -- Write your query here:
SELECT emp_name , salary 
FROM employees;
-- ```

-- **💡 Hint:** You need 2 columns - emp_name and salary

-- **Expected Output:**
-- ```
-- emp_name | salary
-- Rahul | 50000
-- Priya | 60000
-- ... (and more)
-- ```

-- **✅ Solution:** See Solution 1.2 at the end

-- ---

-- . 🎯 Task 1.3: Select Multiple Columns
-- **Objective:** Show employee names, departments, and cities


-- -- Write your query here:

SELECT emp_name ,department , city

FROM employees;



-- **💡 Hint:** 3 columns from employees table

-- **Expected Output:**
-- ```
-- emp_name | department | city
-- Rahul | IT | Delhi
-- Priya | HR | Mumbai
-- ... (and more)
-- ```

-- **✅ Solution:** See Solution 1.3 at the end

-- ---

--- ✋ Exercise 2: SELECT with DISTINCT

--- 🎯 Task 2.1: Find Unique Departments
--- **Objective:** Show all different departments (no repeats)

-- ```sql
-- -- Write your query here

SELECT DISTINCT department FROM employees;


-- ```

-- **💡 Hint:** Use DISTINCT keyword to remove duplicates

-- **Expected Output:**
-- ```
-- department
-- IT
-- HR
-- Finance
-- ```

-- **✅ Solution:** See Solution 2.1 at the end

-- ---

-- . 🎯 Task 2.2: Find Unique Cities
-- **Objective:** Show all cities where company has employees (no repeats)

-- ```sql
-- -- Write your query here:
--

SELECT DISTINCT city  FROM employees;



-- ```

-- **Expected Output:**
-- ```
-- city
-- Delhi
-- Mumbai
-- Bangalore
-- Pune
-- ```

-- **✅ Solution:** See Solution 2.2 at the end

-- ---

-- ✋ Exercise 3: SELECT with Alias (AS)

--  🎯 Task 3.1: Rename Column Headings
-- **Objective:** Display employee names as "Employee Name" and salary as "Annual Salary"

-- ```sql
--  Write your query here:

SELECT emp_name "Employee Name" , 
        salary "Annual Salary"
FROM employees;


-- ```

-- **💡 Hint:** Use AS keyword to rename columns

-- **Expected Output:**
-- ```
-- Employee Name | Annual Salary
-- Rahul | 50000
-- Priya | 60000
-- ... (and more)
-- ```

-- **✅ Solution:** See Solution 3.1 at the end

-- ---

--- 🎯 Task 3.2: Alias for Calculations
-- **Objective:** Show salary and calculated bonus (10% of salary) with friendly names

-- ```sql
--  Write your query here:

SELECT emp_name "NAME" , 
 salary "CURRENT SALARY" ,
 (salary*0.10) "BONUS 10%"
FROM employees;


-- ```

-- **Expected Output:**
-- ```
-- Name | Current Salary | Bonus (10%)
-- Rahul | 50000 | 5000
-- Priya | 60000 | 6000
-- ... (and more)
-- ```

-- **✅ Solution:** See Solution 3.2 at the end

-- ---

-- . ✋ Exercise 4: Mathematical Calculations

-- . 🎯 Task 4.1: Calculate Monthly Salary
-- **Objective:** Show employee name and monthly salary (annual * 12)

-- ```sql
-- -- Write your query here:

SELECT emp_name "NAME" ,
salary"MONTHLY SALARY" ,
salary*12"ANNUAL INCOME"
 FROM employees;



-- ```

-- **Expected Output:**
-- ```
-- emp_name | Monthly Salary
-- Rahul | 4166.67
-- Priya | 5000
-- ... (and more)
-- ```

-- **✅ Solution:** See Solution 4.1 at the end

-- ---

--  🎯 Task 4.2: Calculate Salary After Raise
-- **Objective:** Show employee name and salary after 5000 raise

-- ```sql
-- -- Write your query here

SELECT emp_name "NAME",salary ,salary+5000"BOUNS"
FROM employees;




-- ```

-- **Expected Output:**
-- ```
-- Employee Name | Current Salary | Salary After Raise
-- Rahul | 50000 | 55000
-- Priya | 60000 | 65000
-- ... (and more)
-- ```

-- **✅ Solution:** See Solution 4.2 at the end

-- ---
