
--  🏆 Challenge 1: The Marketing Team Needs City Names

-- **Scenario:** Marketing wants a list of all unique cities where we have employees to target them for campaigns.

-- **Your Task:**
-- ```sql
-- -- Write a query to show unique cities

-- ```

-- **Expected Result:** A list of cities without duplicates

-- **Difficulty:** ⭐⭐ Easy

-- Your query here:
-- SELECT DISTINCT city "CITY NAME"
-- FROM employees;

--  🏆 Challenge 2: HR Needs a Clean Report

-- **Scenario:** HR Manager needs an employee report with friendly column names.

-- **Your Task:**
-- ```sql
-- -- Write a query showing:
-- -- - Employee Name (not emp_name)
-- -- - Job Department (not department)
-- -- - Annual Salary (not salary)
--
-- ```

-- **Expected Result:** Clean report with readable column headings

-- **Difficulty:** ⭐⭐ Easy
 -- Your query here:

-- SELECT emp_name "EMPLOYEE NAME",department "Job Department",salary"Annual Salar"
-- FROM employees;



--  🏆 Challenge 3: Finance Wants Salary Analysis

-- **Scenario:** Finance team needs to see current salary and projected salary if everyone gets a 15% raise.

-- **Your Task:**
-- ```sql
-- -- Show:
-- -- - Employee name
-- -- - Current salary
-- -- - New salary (15% raise)
-- -- Your query here:
-- -- ```

-- **Hint:** 15% raise = salary * 0.15

-- **Expected Result:** Employee names with current and new salaries

-- **Difficulty:** ⭐⭐⭐ Medium

-- ANSWER


-- SELECT emp_name "Employee name", salary "Current salary",(salary*0.15)+salary "New salary (15% raise)"
-- FROM employees;



-- ---

--  🏆 Challenge 4: Department Heads List

-- **Scenario:** Company wants to know all departments that have employees.

-- **Your Task:**
-- ```sql
-- -- Show unique departments
-- -- Name the column "Department List"
-- -- Your query here:
-- -- ```

-- SELECT DISTINCT department "Department List"
-- FROM employees;

-- **Expected Result:** List of departments with friendly heading

-- **Difficulty:** ⭐⭐ Easy


-- 🏆 Challenge 5: Monthly Budget Calculation

-- **Scenario:** You need to calculate total Anuual salary cost (all employees, monthly)

-- **Your Task:**
-- ```sql
-- -- Show:
-- -- - Employee name
-- -- - Annual salary ( Monthly* 12)
-- -- Your query here:
-- ```

-- **Expected Result:** Employee names with monthly salary

-- -- **Difficulty:** ⭐⭐ Easy

SELECT  emp_name"EMPLOYEES NAME",salary*12"ANNUAL SALARY"
FROM employees;