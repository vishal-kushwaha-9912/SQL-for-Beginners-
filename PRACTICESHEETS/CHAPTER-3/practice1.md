
# 📚 BONUS: 50 PRACTICE QUESTIONS

## 🟢 Easy Level (Questions 1-15)

### 1. Basic Sorts
```sql
-- Q1: Sort employees by name (A to Z)
SELECT emp_name FROM employees ORDER BY _____ ASC;

-- Q2: Sort employees by salary (highest to lowest)
SELECT emp_name, salary FROM employees ORDER BY _____ DESC;

-- Q3: Sort employees by age (oldest first)
SELECT emp_name, age FROM employees ORDER BY age DESC;

-- Q4: Sort cities alphabetically
SELECT city FROM employees ORDER BY city;

-- Q5: Sort by date (newest first)
SELECT emp_name, join_date FROM employees ORDER BY join_date DESC;
```

### 6-10. Understanding ASC/DESC
```sql
-- Q6: Which of these is the SAME?
-- A) ORDER BY salary ASC
-- B) ORDER BY salary
-- C) Both A and B

-- Q7: Without looking at notes, write the query:
-- "Show employees sorted by salary, lowest first"
SELECT _____ FROM _____ ORDER BY _____ _;

-- Q8: What does DESC mean?
-- Answer in one sentence:

-- Q9: Does ORDER BY change the table?
-- A) Yes
-- B) No

-- Q10: What is the DEFAULT sort order?
-- A) ASC
-- B) DESC
```

### 11-15. Finding Errors
```sql
-- Q11: Find the error
SELECT emp_name FROM employees
ORDER BY salary WHERE department = 'IT';

-- Q12: Find the error
SELECT emp_name
ORDER BY salary DESC
FROM employees;

-- Q13: Which is better and why?
-- A) ORDER BY 2;
-- B) ORDER BY salary;

-- Q14: Will this work? (Trick question!)
SELECT salary FROM employees
WHERE Annual_Salary > 100000;

-- Q15: What happens if I sort by a column not in SELECT?
SELECT name FROM employees ORDER BY salary DESC;
```

---

## 🟡 Medium Level (Questions 16-35)

### 16-20. Multiple Column Sorting
```sql
-- Q16: Sort by department, then salary (highest first)
SELECT * FROM employees ORDER BY _____, _____ DESC;

-- Q17: What is the PRIMARY sort column here?
SELECT * FROM employees ORDER BY city, age, salary DESC;

-- Q18: In the query above, what's the SECONDARY sort?
-- A) age
-- B) salary
-- C) city

-- Q19: Sort by: Country (A-Z), then City (A-Z), then Salary (High-Low)
Write the complete query:

-- Q20: If two employees have the same department and salary, 
-- what determines their order?
```

### 21-25. Column Positions
```sql
-- Q21: How many columns in this query?
SELECT emp_name, salary, department, city FROM employees;

-- Q22: What is the position of 'department'?
-- Answer: Position ___

-- Q23: Rewrite this using positions:
SELECT emp_name, salary, department FROM employees
ORDER BY department, salary DESC;

-- Q24: What's wrong with using positions?
(Explain in your own words)

-- Q25: If I change the SELECT statement, what happens to positions?
-- A) They stay the same
-- B) They change
```

### 26-30. Aliases
```sql
-- Q26: Create an alias for 'emp_name' as 'Employee_Name'
SELECT emp_name _____ Employee_Name FROM employees;

-- Q27: Use the alias in ORDER BY
SELECT salary * 12 AS Annual_Salary FROM employees
ORDER BY _________;

-- Q28: Why doesn't this work?
SELECT salary * 12 AS Annual_Salary FROM employees
WHERE Annual_Salary > 500000;

-- Q29: Fix the query above:
SELECT salary * 12 AS Annual_Salary FROM employees
WHERE ___________________
ORDER BY Annual_Salary DESC;

-- Q30: Create a meaningful alias for (salary + bonus)
```

### 31-35. Expressions
```sql
-- Q31: Sort by annual salary (multiply by 12)
SELECT emp_name, salary FROM employees ORDER BY _________;

-- Q32: Sort products by discounted price (20% off)
SELECT product_name, price FROM products ORDER BY _________;

-- Q33: Sort students by total marks (math + science + english)
SELECT student_name FROM students ORDER BY _________ DESC;

-- Q34: What's the difference?
-- A) ORDER BY salary * 12;
-- B) SELECT salary * 12 AS Annual_Salary ORDER BY Annual_Salary;

-- Q35: Can I use UPPER() in ORDER BY?
SELECT emp_name FROM employees ORDER BY UPPER(emp_name);
-- A) Yes
-- B) No
```

---

## 🔴 Hard Level (Questions 36-50)

### 36-40. Complex Scenarios
```sql
-- Q36: Sort employees by:
-- 1) Department (A-Z)
-- 2) Salary (Highest first)
-- 3) Name (A-Z)
Write the complete query.

-- Q37: A company wants to see their top 5 salespeople by revenue.
-- Revenue = quantity_sold * price
-- Write this query (include the calculation in ORDER BY)

-- Q38: Why would using column positions be dangerous in this scenario?
(The query involves 10+ columns)

-- Q39: Explain the execution order:
-- In which order does SQL execute:
-- 1) ORDER BY
-- 2) WHERE
-- 3) SELECT
// Answer: _____, _____, _____

-- Q40: What's the benefit of using an alias vs. a bare expression?
```

### 41-45. Real-World Problems
```sql
-- Q41: E-commerce: Show products sorted by:
-- 1) Category (alphabetically)
-- 2) Price (lowest first within each category)
Write the complete query.

-- Q42: HR Department: Sort employees by:
-- 1) Department
-- 2) Annual Salary (highest first)
Write the complete query with alias.

-- Q43: School: Sort students by:
-- 1) Grade (A, B, C, D)
-- 2) Total Score (highest first)
Write the complete query.

-- Q44: A developer wrote this. Find all mistakes:
SELECT emp_name, salary
FROM employees
WHERE Annual_Salary > 500000
ORDER BY 1, Annual_Salary DESC;

-- Q45: Should you use column positions or names?
// Defend your answer.
```

### 46-50. Synthesis & Mastery
```sql
-- Q46: Write a query that uses:
// - Multiple columns in ORDER BY
// - One alias
// - One expression
// Make it realistic (pick real columns/tables).

-- Q47: Explain (in detail) why this fails:
SELECT salary * 12 AS Annual_Salary FROM employees
WHERE Annual_Salary > 600000;

-- Q48: What would you teach a beginner about ORDER BY
// if you only had 30 seconds?

-- Q49: Compare these three approaches. 
// Which is best and why?
A) ORDER BY 3, 2;
B) ORDER BY salary, department;
C) SELECT salary * 12, salary FROM ... ORDER BY 1;

-- Q50: Design a real query for your use case.
// Write it following ALL best practices.
```

---