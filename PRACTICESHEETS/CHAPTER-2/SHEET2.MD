
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

**Scenario:** You need to calculate total annual salary cost (all employees, monthly)

**Your Task:**
```sql
-- Show:
-- - Employee name
-- - Annual salary ( monthly* 12)
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


## 💪 CHALLENGE PROBLEMS

### Challenge 1: Sales Analysis
**Level:** Easy

Find all orders from last month that are either completed or shipped

```sql
-- Your query:
```

**Hint:** Use OR for status conditions

---

### Challenge 2: Customer Segmentation
**Level:** Medium

Find premium customers: from major cities (NY, LA, Chicago) with total spending > $1000

```sql
-- Your query:
```

**Hint:** Use IN for cities, AND for spending

---

### Challenge 3: HR Report
**Level:** Medium

Find IT and Finance employees with salary between 70k and 120k

```sql
-- Your query:
```

**Hint:** Use OR for departments, BETWEEN for salary

---

### Challenge 4: Data Quality Check
**Level:** Medium

Find incomplete orders: missing shipping_address OR missing payment_status AND created in last 90 days

```sql
-- Your query:
```

**Hint:** Use parentheses for clarity!

---

### Challenge 5: Marketing Campaign
**Level:** Hard

Find customers: (age 25-45 AND from NY) OR (age 50+ from any city) AND (have email AND NOT already_contacted)

```sql
-- Your query:
```

**Hint:** Complex precedence - use lots of parentheses!

---

### Challenge 6: Product Inventory
**Level:** Hard

Find products: (name starts with 'Premium' OR price > $200) AND (quantity < 10 OR quantity IS NULL) AND category not 'discontinued'

```sql
-- Your query:
```

**Hint:** Combine LIKE, comparison, NULL check, NOT

---

### Challenge 7: Executive Summary
**Level:** Hard

Find high-priority tickets: (assigned to IT OR Finance) AND (priority = 'urgent') AND (status NOT 'closed' AND status NOT 'resolved') AND (created after specific_date)

```sql
-- Your query:
```

**Hint:** Think about operator precedence carefully!

---

