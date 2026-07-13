# 🎯 THE ULTIMATE PRACTICE QUESTION BANK

##  Hand-Crafted SQL Queries (Beginner → Advanced)

I have designed these questions to test **every single concept** in your Aggregates Guide—from `COUNT` and `SUM` all the way to `HAVING`, `COALESCE`, and mathematical operations on aggregates.

---

## 📦 THE DATASET (Copy & Paste This Setup)

Run this in your SQL tool **before** attempting the questions:

```sql
-- ========== EMPLOYEES TABLE ==========
CREATE TABLE employees (
    emp_id INT,
    name VARCHAR(50),
    department VARCHAR(20),
    salary DECIMAL(10,2),
    hire_date DATE
);

INSERT INTO employees VALUES 
(1, 'Rahul', 'Sales', 55000, '2020-01-15'),
(2, 'Aman', 'Sales', 48000, '2021-03-22'),
(3, 'Neha', 'IT', NULL, '2022-06-10'),   -- <-- NULL salary!
(4, 'Priya', 'IT', 65000, '2019-11-01'),
(5, 'Ravi', 'HR', 42000, '2023-02-14'),
(6, 'Mohit', 'Sales', 52000, '2020-08-30');

-- ========== ORDERS TABLE ==========
CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    amount DECIMAL(10,2),
    order_date DATE
);

INSERT INTO orders VALUES 
(1, 101, 250.00, '2025-01-10'),
(2, 102, 150.00, '2025-01-10'),
(3, 101, 300.00, '2025-01-11'),
(4, 103, 450.00, '2025-01-11'),
(5, 104, 120.00, '2025-01-12'),
(6, 101, 200.00, '2025-01-12');
```

---

## 📝 THE QUESTIONS

### 🟢 LEVEL 1: The Essentials (Sections 0–8)

**Q1.** How many total employees work at the company?

**Q2.** What is the total salary paid to all employees? *(Remember the NULL!)*

**Q3.** What is the average salary of all employees? *(Round to 2 decimals)*

**Q4.** Who earns the highest salary, and who earns the lowest? *(Write one query that shows both values)*

**Q5.** How many **different** departments exist in the company?

---

### 🟡 LEVEL 2: The Advanced Playbook (Sections 9–17)

**Q6.** Write a single query that shows **ALL** of these statistics for the employees table:
- Total staff count
- Total payroll
- Average salary (rounded to 2 decimals)
- Lowest salary
- Highest salary

**Q7.** What is the total revenue (sum of `amount`) from orders placed on **January 10, 2025**?

**Q8.** What is the average order value **for the entire orders table**, rounded to 2 decimal places?

**Q9.** How many **unique customers** placed orders?

**Q10.** What is the total payroll **specifically for the Sales department**?

---

### 🔴 LEVEL 3: The Boss Challenges (Trap Questions)

**Q11.** *(The HAVING Trap)*  
Write a query to find **which departments** have a total payroll **greater than $100,000**.  
*(Hint: You cannot use `WHERE` for this!)*

**Q12.** *(Math on Aggregates)*  
Write a query to show:
- The highest salary
- The lowest salary
- The **difference** between them (Pay Gap)

**Q13.** *(Counting NULLs)*  
Write a query to count **exactly how many employees** have a `NULL` salary.

**Q14.** *(Bonus: COALESCE Rescue)*  
Write a query that returns the average salary of all employees. **But if the result is `NULL`** (imagine the table was empty), show `0` instead.

---

## ✅ THE ANSWER KEY (No Peeking Until You Try!)

<details>
<summary><b>🔽 Click Here to Reveal All Answers</b></summary>

---

**Q1. Total Employees**
```sql
SELECT COUNT(*) FROM employees;
-- Result: 6
```

---

**Q2. Total Payroll**
```sql
SELECT SUM(salary) FROM employees;
-- Result: 262,000  (55k + 48k + 65k + 42k + 52k = 262k, NULL skipped)
```

---

**Q3. Average Salary (Rounded)**
```sql
SELECT ROUND(AVG(salary), 2) FROM employees;
-- Result: 52,400.00  (262,000 ÷ 5 known salaries = 52,400)
```

---

**Q4. Highest & Lowest Salary**
```sql
SELECT MAX(salary) AS highest, MIN(salary) AS lowest FROM employees;
-- Result: highest = 65,000, lowest = 42,000
```

---

**Q5. Different Departments**
```sql
SELECT COUNT(DISTINCT department) FROM employees;
-- Result: 3 (Sales, IT, HR)
```

---

**Q6. All Statistics in One Query**
```sql
SELECT 
    COUNT(*) AS total_staff,
    SUM(salary) AS total_payroll,
    ROUND(AVG(salary), 2) AS avg_salary,
    MIN(salary) AS lowest,
    MAX(salary) AS highest
FROM employees;
-- Result: 6 | 262000 | 52400.00 | 42000 | 65000
```

---

**Q7. Revenue on Jan 10, 2025**
```sql
SELECT SUM(amount) FROM orders WHERE order_date = '2025-01-10';
-- Result: 400.00  (250 + 150)
```

---

**Q8. Average Order Value (Rounded)**
```sql
SELECT ROUND(AVG(amount), 2) FROM orders;
-- Result: 245.00  (Total 1470 ÷ 6)
```

---

**Q9. Unique Customers**
```sql
SELECT COUNT(DISTINCT customer_id) FROM orders;
-- Result: 4 (101, 102, 103, 104)
```

---

**Q10. Sales Department Payroll**
```sql
SELECT SUM(salary) FROM employees WHERE department = 'Sales';
-- Result: 155,000  (55k + 48k + 52k)
```

---

**Q11. Departments with Payroll > 100,000 (HAVING)**
```sql
SELECT department, SUM(salary) AS total_payroll
FROM employees
GROUP BY department
HAVING SUM(salary) > 100000;
-- Result: Sales = 155,000 (IT = 65k, HR = 42k, so only Sales qualifies)
```

---

**Q12. Pay Gap (Highest - Lowest)**
```sql
SELECT 
    MAX(salary) AS highest,
    MIN(salary) AS lowest,
    MAX(salary) - MIN(salary) AS pay_gap
FROM employees;
-- Result: highest=65000, lowest=42000, pay_gap=23000
```

---

**Q13. Count of NULL Salaries**
```sql
SELECT COUNT(*) - COUNT(salary) AS null_count FROM employees;
-- Result: 1 (Neha has NULL)
```

---

**Q14. Average Salary with COALESCE (NULL Safety)**
```sql
SELECT COALESCE(ROUND(AVG(salary), 2), 0) AS safe_avg FROM employees;
-- Result: 52400.00 (If the table was empty, it would show 0 instead of NULL)
```

</details>

---

## 📊 HOW TO USE THESE QUESTIONS

| Goal | Action |
| :--- | :--- |
| **Self-Test** | Cover the answers. Write all 14 queries from memory. Check your results. |

---

**You have officially graduated from reading to doing.** Go crush these queries! 🚀