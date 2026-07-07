
### 📋 Practice Dataset: Employee Company Database

Here's the data you'll practice with. Copy this to set up your practice environment:

```sql
CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    age INT,
    salary INT,
    department VARCHAR(50),
    city VARCHAR(50),
    email VARCHAR(50)
);

INSERT INTO employees VALUES 
(101, 'Rahul', 28, 50000, 'IT', 'Delhi', 'rahul@company.com'),
(102, 'Priya', 32, 60000, 'HR', 'Mumbai', 'priya@company.com'),
(103, 'Aman', 25, 45000, 'IT', 'Delhi', NULL),
(104, 'Neha', 35, 70000, 'Finance', 'Bangalore', 'neha@company.com'),
(105, 'Rohan', 29, 55000, 'IT', 'Pune', 'rohan@company.com'),
(106, 'Simran', 27, 48000, 'HR', 'Delhi', 'simran@company.com'),
(107, 'Vikram', 31, 65000, 'Finance', 'Mumbai', 'vikram@company.com'),
(108, 'Anaya', 26, 52000, 'IT', 'Bangalore', NULL);
```

---

## ✋ Exercise 1: Basic SELECT

### 🎯 Task 1.1: Select All Columns
**Objective:** Display all employee information

```sql
-- Write your query here:
SELECT * FROM employees;
```

**Expected Output:**
```
emp_id | emp_name | age | salary | department | city | email
101 | Rahul | 28 | 50000 | IT | Delhi | rahul@company.com
102 | Priya | 32 | 60000 | HR | Mumbai | priya@company.com
... (and more)
```

**✅ Solution:** See Solution 1.1 at the end

---

### 🎯 Task 1.2: Select Specific Columns
**Objective:** Show only employee names and salaries

```sql
-- Write your query here:
SELECT _______ FROM _______;
```

**💡 Hint:** You need 2 columns - emp_name and salary

**Expected Output:**
```
emp_name | salary
Rahul | 50000
Priya | 60000
... (and more)
```

**✅ Solution:** See Solution 1.2 at the end

---

### 🎯 Task 1.3: Select Multiple Columns
**Objective:** Show employee names, departments, and cities

```sql
-- Write your query here:
SELECT _______, _______, _______ FROM _______;
```

**💡 Hint:** 3 columns from employees table

**Expected Output:**
```
emp_name | department | city
Rahul | IT | Delhi
Priya | HR | Mumbai
... (and more)
```

**✅ Solution:** See Solution 1.3 at the end

---

## ✋ Exercise 2: SELECT with DISTINCT

### 🎯 Task 2.1: Find Unique Departments
**Objective:** Show all different departments (no repeats)

```sql
-- Write your query here:
SELECT _______ _______ FROM _______; 
```

**💡 Hint:** Use DISTINCT keyword to remove duplicates

**Expected Output:**
```
department
IT
HR
Finance
```

**✅ Solution:** See Solution 2.1 at the end

---

### 🎯 Task 2.2: Find Unique Cities
**Objective:** Show all cities where company has employees (no repeats)

```sql
-- Write your query here:
SELECT _______ _______ FROM _______;
```

**Expected Output:**
```
city
Delhi
Mumbai
Bangalore
Pune
```

**✅ Solution:** See Solution 2.2 at the end

---

## ✋ Exercise 3: SELECT with Alias (AS)

### 🎯 Task 3.1: Rename Column Headings
**Objective:** Display employee names as "Employee Name" and salary as "Annual Salary"

```sql
-- Write your query here:
SELECT 
  emp_name _______ "Employee Name",
  salary _______ "Annual Salary"
FROM employees;
```

**💡 Hint:** Use AS keyword to rename columns

**Expected Output:**
```
Employee Name | Annual Salary
Rahul | 50000
Priya | 60000
... (and more)
```

**✅ Solution:** See Solution 3.1 at the end

---

### 🎯 Task 3.2: Alias for Calculations
**Objective:** Show salary and calculated bonus (10% of salary) with friendly names

```sql
-- Write your query here:
SELECT 
  emp_name _______ "Name",
  salary _______ "Current Salary",
  salary * 0.10 _______ "Bonus (10%)"
FROM employees;
```

**Expected Output:**
```
Name | Current Salary | Bonus (10%)
Rahul | 50000 | 5000
Priya | 60000 | 6000
... (and more)
```

**✅ Solution:** See Solution 3.2 at the end

---

## ✋ Exercise 4: Mathematical Calculations

### 🎯 Task 4.1: Calculate Monthly Salary
**Objective:** Show employee name and monthly salary (annual ÷ 12)

```sql
-- Write your query here:
SELECT 
  emp_name,
  salary / 12 _______ "Monthly Salary"
FROM employees;
```

**Expected Output:**
```
emp_name | Monthly Salary
Rahul | 4166.67
Priya | 5000
... (and more)
```

**✅ Solution:** See Solution 4.1 at the end

---

### 🎯 Task 4.2: Calculate Salary After Raise
**Objective:** Show employee name and salary after 5000 raise

```sql
-- Write your query here:
SELECT 
  emp_name _______ "Employee Name",
  salary _______ "Current Salary",
  (salary + 5000) _______ "Salary After Raise"
FROM employees;
```

**Expected Output:**
```
Employee Name | Current Salary | Salary After Raise
Rahul | 50000 | 55000
Priya | 60000 | 65000
... (and more)
```

**✅ Solution:** See Solution 4.2 at the end

---

---

# 🚨 COMMON MISTAKES SECTION

## Learn from Others' Mistakes

Here are the **most common SQL mistakes beginners make** and how to fix them!

---

## ❌ Mistake 1: Forgetting the Semicolon

### The Wrong Way ❌
```sql
SELECT emp_name FROM employees
```

**Error:** Query may not execute or may cause unexpected behavior

### The Right Way ✅
```sql
SELECT emp_name FROM employees;
```

**Why:** The semicolon (`;`) tells SQL "end of query"

---

## ❌ Mistake 2: Misspelling Table or Column Names

### The Wrong Way ❌
```sql
SELECT emp_name FROM employes;  -- "employes" is misspelled
```

**Error:** "Table employes not found"

### The Right Way ✅
```sql
SELECT emp_name FROM employees;  -- Correct spelling
```

**Why:** SQL is case-sensitive and exact in names

---

## ❌ Mistake 3: Using `*` When You Only Need Specific Columns

### The Wrong Way ❌
```sql
SELECT * FROM employees;  -- Returns 100 columns when you only need 2
```

**Problem:** Slow query, lots of unnecessary data

### The Right Way ✅
```sql
SELECT emp_name, salary FROM employees;  -- Only needed columns
```

**Why:** More efficient and cleaner results

---

## ❌ Mistake 4: Forgetting Column Name in DISTINCT

### The Wrong Way ❌
```sql
SELECT DISTINCT FROM employees;  -- Missing column name
```

**Error:** "Syntax error"

### The Right Way ✅
```sql
SELECT DISTINCT city FROM employees;  -- Column name specified
```

---

## ❌ Mistake 5: Mixing Column Names in Quotes Incorrectly

### The Wrong Way ❌
```sql
SELECT emp_name AS Employee_Name FROM employees;  -- Alias without quotes is ok, but can be unclear
```

### The Right Way ✅
```sql
SELECT emp_name AS "Employee Name" FROM employees;  -- Use quotes for multi-word aliases
```

**Why:** Quotes make it clear what's an alias, especially with spaces

---

## ❌ Mistake 6: Not Understanding AS Doesn't Change Database

### The Wrong Way ❌
```sql
SELECT salary AS "annual_pay" FROM employees;
-- Thinking: "Now the database column is called annual_pay"
```

**Wrong assumption:** AS doesn't change the actual database!

### The Right Way ✅
```sql
SELECT salary AS "annual_pay" FROM employees;
-- Understanding: "Display salary column with heading 'annual_pay' (temporary only)"
```

---

## ❌ Mistake 7: Order of Operations (PEMDAS) Confusion

### The Wrong Way ❌
```sql
SELECT salary + 5000 * 10 FROM employees;
-- You think: (50000 + 5000) * 10 = 550000
-- Actually calculates: 50000 + (5000 * 10) = 100000
```

**Problem:** Multiplication happens BEFORE addition!

### The Right Way ✅
```sql
SELECT (salary + 5000) * 10 FROM employees;
-- Now it calculates: (50000 + 5000) * 10 = 550000
```

**Why:** Use parentheses to control order of operations

---

## ❌ Mistake 8: Typing Column Names Without Specifying Table

### The Wrong Way ❌
```sql
SELECT emp_name, salary, 2024 - age AS years_until_retirement FROM employees;
-- This works, but is unclear
```

### The Right Way ✅
```sql
SELECT 
  emp_name, 
  salary, 
  (2024 - age) AS "Years Until Retirement" 
FROM employees;
```

**Why:** Parentheses make it clear what's being calculated

---

## ❌ Mistake 9: Assuming DISTINCT Removes All Duplicates

### The Wrong Way ❌
```sql
SELECT DISTINCT emp_name, city FROM employees;
-- Thinking: "This will remove all duplicates"
-- Actually: "Removes duplicate combinations of emp_name AND city"
```

### The Right Way ✅
```sql
-- If you want unique cities:
SELECT DISTINCT city FROM employees;

-- If you want unique combinations:
SELECT DISTINCT emp_name, city FROM employees;
```

---

## ❌ Mistake 10: Forgetting Proper Syntax

### The Wrong Way ❌
```sql
SELECT emp_name FROM WHERE employees;  -- Wrong word order
```

**Error:** Syntax error

### The Right Way ✅
```sql
SELECT emp_name FROM employees;  -- Correct word order: SELECT, FROM
```

**Remember the order:**
```
SELECT → What columns?
FROM → Which table?
```

---

---

# 💪 TRY IT YOURSELF CHALLENGES

## Test Your Skills with These Real-World Scenarios

---

## 🏆 Challenge 1: The Marketing Team Needs City Names

**Scenario:** Marketing wants a list of all unique cities where we have employees to target them for campaigns.

**Your Task:**
```sql
-- Write a query to show unique cities
-- Your query here:
```

**Expected Result:** A list of cities without duplicates

**Difficulty:** ⭐⭐ Easy

---

## 🏆 Challenge 2: HR Needs a Clean Report

**Scenario:** HR Manager needs an employee report with friendly column names.

**Your Task:**
```sql
-- Write a query showing:
-- - Employee Name (not emp_name)
-- - Job Department (not department)
-- - Annual Salary (not salary)
-- Your query here:
```

**Expected Result:** Clean report with readable column headings

**Difficulty:** ⭐⭐ Easy

---

## 🏆 Challenge 3: Finance Wants Salary Analysis

**Scenario:** Finance team needs to see current salary and projected salary if everyone gets a 15% raise.

**Your Task:**
```sql
-- Show:
-- - Employee name
-- - Current salary
-- - New salary (15% raise)
-- Your query here:
```

**Hint:** 15% raise = salary * 1.15

**Expected Result:** Employee names with current and new salaries

**Difficulty:** ⭐⭐⭐ Medium

---

## 🏆 Challenge 4: Department Heads List

**Scenario:** Company wants to know all departments that have employees.

**Your Task:**
```sql
-- Show unique departments
-- Name the column "Department List"
-- Your query here:
```

**Expected Result:** List of departments with friendly heading

**Difficulty:** ⭐⭐ Easy

---

## 🏆 Challenge 5: Monthly Budget Calculation

**Scenario:** You need to calculate total monthly salary cost (all employees, monthly)

**Your Task:**
```sql
-- Show:
-- - Employee name
-- - Monthly salary (annual ÷ 12)
-- Your query here:
```

**Expected Result:** Employee names with monthly salary

**Difficulty:** ⭐⭐ Easy

---

---

# ✅ SOLUTIONS GUIDE

## Check Your Answers Here

---

## 🎯 Solution 1.1: Select All Columns

```sql
SELECT * FROM employees;
```

**Why this works:**
- `SELECT *` = "Show all columns"
- `FROM employees` = "from employees table"

---

## 🎯 Solution 1.2: Select Specific Columns

```sql
SELECT emp_name, salary FROM employees;
```

**Why this works:**
- Specifies only 2 columns
- Cleaner than SELECT *
- Faster to execute

---

## 🎯 Solution 1.3: Select Multiple Columns

```sql
SELECT emp_name, department, city FROM employees;
```

**Why this works:**
- Picks exactly 3 columns needed
- Comma separates column names
- Result is easy to read

---

## 🎯 Solution 2.1: Find Unique Departments

```sql
SELECT DISTINCT department FROM employees;
```

**Why this works:**
- `DISTINCT` removes duplicate department names
- Each department appears only once
- Shows all different departments

---

## 🎯 Solution 2.2: Find Unique Cities

```sql
SELECT DISTINCT city FROM employees;
```

**Why this works:**
- Removes duplicate city names
- Shows where company operates
- Useful for marketing analysis

---

## 🎯 Solution 3.1: Rename Column Headings

```sql
SELECT 
  emp_name AS "Employee Name",
  salary AS "Annual Salary"
FROM employees;
```

**Why this works:**
- `AS` creates temporary column names
- Quotes allow spaces in names
- Original database names unchanged

---

## 🎯 Solution 3.2: Alias for Calculations

```sql
SELECT 
  emp_name AS "Name",
  salary AS "Current Salary",
  salary * 0.10 AS "Bonus (10%)"
FROM employees;
```

**Why this works:**
- Calculates 10% of each salary
- `AS` gives meaningful names to all columns
- Report is professional and clear

---

## 🎯 Solution 4.1: Calculate Monthly Salary

```sql
SELECT 
  emp_name,
  salary / 12 AS "Monthly Salary"
FROM employees;
```

**Why this works:**
- `/` divides annual salary by 12
- `AS` makes heading clear
- Shows what employees earn per month

---

## 🎯 Solution 4.2: Calculate Salary After Raise

```sql
SELECT 
  emp_name AS "Employee Name",
  salary AS "Current Salary",
  (salary + 5000) AS "Salary After Raise"
FROM employees;
```

**Why this works:**
- `salary + 5000` adds 5000 to each salary
- Parentheses make calculation clear
- All columns have friendly names
- Useful for HR planning

---

## 🏆 Challenge Solutions

### Challenge 1 Solution:
```sql
SELECT DISTINCT city FROM employees;
```

### Challenge 2 Solution:
```sql
SELECT 
  emp_name AS "Employee Name",
  department AS "Job Department",
  salary AS "Annual Salary"
FROM employees;
```

### Challenge 3 Solution:
```sql
SELECT 
  emp_name AS "Employee Name",
  salary AS "Current Salary",
  (salary * 1.15) AS "New Salary (15% Raise)"
FROM employees;
```

### Challenge 4 Solution:
```sql
SELECT DISTINCT department AS "Department List"
FROM employees;
```

### Challenge 5 Solution:
```sql
SELECT 
  emp_name AS "Employee Name",
  (salary / 12) AS "Monthly Salary"
FROM employees;
```

---
