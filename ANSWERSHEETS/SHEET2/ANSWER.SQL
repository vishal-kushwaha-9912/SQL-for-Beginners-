
-- --- 💪 TRY IT YOURSELF CHALLENGES
-- ---Test Your Skills with These Real-World Scenarios

-- ---

-- ---🏆 Challenge 1: The Marketing Team Needs City Names

-- ---**Scenario:** Marketing wants a list of all unique cities where we have employees to target them for campaigns.

-- ---**Your Task:**
-- ```sql
-- -- Write a query to show unique cities
-- --- Your query here:
-- ```


 SELECT DISTINCT city 
 FROM employees;





-- ---**Expected Result:** A list of cities without duplicates

-- ---**Difficulty:** ⭐⭐ Easy

-- ---

-- --- 🏆 Challenge 2: HR Needs a Clean Report

-- **Scenario:** HR Manager needs an employee report with friendly column names.

-- **Your Task:**
-- ```sql
-- -- Write a query showing:

SELECT emp_name "EMPLOYEES NAME" ,
department"JOB DEPARTMENT",
Salary "SALARY"

FROM employees;





-- ```

-- **Expected Result:** Clean report with readable column headings

-- **Difficulty:** ⭐⭐ Easy

-- ---

-- 🏆 Challenge 3: Finance Wants Salary Analysis

-- **Scenario:** Finance team needs to see current salary and projected salary if everyone gets a 15% raise.

-- **Your Task:**
-- ```sql


SELECT emp_name "NAME", salary"CURRENT SALARY", (salary*0.15)+salary "15% raise "
FROM employees;






-- ```

-- **Hint:** 15% raise = salary * 1.15

-- **Expected Result:** Employee names with current and new salaries

-- **Difficulty:** ⭐⭐⭐ Medium

-- ---

-- . 🏆 Challenge 4: Department Heads List

-- **Scenario:** Company wants to know all departments that have employees.

-- **Your Task:**

SELECT emp_name"NAME",department"JOB DEPARTMENT"
FROM employees;


-- **Expected Result:** List of departments with friendly heading

-- **Difficulty:** ⭐⭐ Easy

-- ---

--  🏆 Challenge 5: Monthly Budget Calculation

-- **Scenario:** You need to calculate total annual salary cost (all employees, monthly)

-- **Your Task:**

SELECT emp_name"NAME" ,salary "MONTLY INCOME",(salary*12)"ANUUAL SALARY"
FROM employees;

-- **Expected Result:** Employee names with monthly salary

-- **Difficulty:** ⭐⭐ Easy
-- ---