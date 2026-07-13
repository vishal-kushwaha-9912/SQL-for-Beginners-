

<a name="part-15-practice"></a>
# 📖 PART 15: PRACTICE PROBLEMS & SOLUTIONS


## 🟢 EASY PROBLEMS (1-5)

### Problem 1: Count Employees by Department

**Task:** How many employees in each department?

**Write your query:**
```sql
[Your answer here]
```

<details>
<summary>📝 Solution</summary>

```sql
SELECT department, COUNT(*) as emp_count
FROM employees
GROUP BY department;
```

**Output:**
```
department  emp_count
IT          3
HR          2
Sales       1
```

**Explanation:** Counts rows in each department group

</details>

---

### Problem 2: Total Salary by Department

**Task:** What's the total salary expense for each department?

**Write your query:**
```sql
[Your answer here]
```

<details>
<summary>📝 Solution</summary>

```sql
SELECT department, SUM(salary) as total_salary
FROM employees
GROUP BY department;
```

**Output:**
```
department  total_salary
IT          165,000
HR          95,000
Sales       45,000
```

**Explanation:** Sums all salaries in each department

</details>

---

### Problem 3: Average Salary by Department

**Task:** What's the average salary in each department?

**Write your query:**
```sql
[Your answer here]
```

<details>
<summary>📝 Solution</summary>

```sql
SELECT department, AVG(salary) as avg_salary
FROM employees
GROUP BY department;
```

**Output:**
```
department  avg_salary
IT          55,000.00
HR          47,500.00
Sales       45,000.00
```

</details>

---

### Problem 4: Orders by Status

**Task:** Count orders in each status category

**Write your query:**
```sql
[Your answer here]
```

<details>
<summary>📝 Solution</summary>

```sql
SELECT status, COUNT(*) as order_count
FROM orders
GROUP BY status;
```

**Output:**
```
status      order_count
Delivered   4
Pending     1
Cancelled   1
```

</details>

---

### Problem 5: Total Spend by Customer

**Task:** How much has each customer spent?

**Write your query:**
```sql
[Your answer here]
```

<details>
<summary>📝 Solution</summary>

```sql
SELECT customer_id, SUM(amount) as total_spent
FROM orders
GROUP BY customer_id;
```

**Output:**
```
customer_id  total_spent
101          37,500
102          50,000
103          8,000
104          3,500
105          1,200
```

</details>

---

## 🟡 MEDIUM PROBLEMS (6-10)

### Problem 6: Employee Count and Total Salary

**Task:** Show employee count and total salary for each department

**Write your query:**
```sql
[Your answer here]
```

<details>
<summary>📝 Solution</summary>

```sql
SELECT department, 
       COUNT(*) as emp_count, 
       SUM(salary) as total_salary
FROM employees
GROUP BY department;
```

**Output:**
```
department  emp_count  total_salary
IT          3          165,000
HR          2          95,000
Sales       1          45,000
```

</details>

---

### Problem 7: Salary Range by Department

**Task:** Show min and max salary for each department

**Write your query:**
```sql
[Your answer here]
```

<details>
<summary>📝 Solution</summary>

```sql
SELECT department,
       MIN(salary) as lowest,
       MAX(salary) as highest,
       (MAX(salary) - MIN(salary)) as range
FROM employees
GROUP BY department;
```

**Output:**
```
department  lowest  highest  range
IT          45,000  70,000   25,000
HR          40,000  55,000   15,000
Sales       45,000  45,000   0
```

</details>

---

### Problem 8: Departments with More Than 1 Employee

**Task:** Show only departments with more than 1 employee

**Write your query:**
```sql
[Your answer here]
```

<details>
<summary>📝 Solution</summary>

```sql
SELECT department, COUNT(*) as emp_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 1;
```

**Output:**
```
department  emp_count
IT          3
HR          2
```

**Explanation:** HAVING filters groups after aggregation. Sales excluded (only 1 employee)

</details>

---

### Problem 9: Employees with Salary Above Department Average

**Task:** Show employees earning more than their department's average

**Write your query:**
```sql
[Your answer here]
```

<details>
<summary>📝 Solution</summary>

```sql
SELECT emp_name, department, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees e2
    WHERE e2.department = employees.department
)
ORDER BY department, salary DESC;
```

**Output:**
```
emp_name  department  salary
Neha      IT          70,000  (avg IT is 55k)
Priya     HR          55,000  (avg HR is 47.5k)
```

</details>

---

### Problem 10: Top Department by Total Salary

**Task:** Which department has highest total salary expense?

**Write your query:**
```sql
[Your answer here]
```

<details>
<summary>📝 Solution</summary>

```sql
SELECT department, SUM(salary) as total_salary
FROM employees
GROUP BY department
ORDER BY total_salary DESC
LIMIT 1;
```

**Output:**
```
department  total_salary
IT          165,000
```

</details>

---

## 🔴 HARD PROBLEMS (11-15)

### Problem 11: Multiple Aggregates with Filter

**Task:** For each department, show employee count, total salary, average salary (only for salary > 45,000)

**Write your query:**
```sql
[Your answer here]
```

<details>
<summary>📝 Solution</summary>

```sql
SELECT department,
       COUNT(*) as all_employees,
       COUNT(CASE WHEN salary > 45000 THEN 1 END) as high_earners,
       SUM(salary) as total_salary,
       AVG(CASE WHEN salary > 45000 THEN salary END) as avg_high_earner
FROM employees
GROUP BY department;
```

**Output:**
```
department  all_employees  high_earners  total_salary  avg_high_earner
IT          3              2             165,000       60,000
HR          2              1             95,000        55,000
Sales       1              0             45,000        NULL
```

</details>

---

### Problem 12: Customer Analysis

**Task:** Show total orders, total amount, and average order value by customer. Include only customers with total spend > 10,000

**Write your query:**
```sql
[Your answer here]
```

<details>
<summary>📝 Solution</summary>

```sql
SELECT customer_id,
       COUNT(*) as order_count,
       SUM(amount) as total_spent,
       AVG(amount) as avg_order_value
FROM orders
GROUP BY customer_id
HAVING SUM(amount) > 10000
ORDER BY total_spent DESC;
```

**Output:**
```
customer_id  order_count  total_spent  avg_order_value
102          2            50,000       25,000.00
101          2            37,500       18,750.00
```

</details>

---

### Problem 13: Group By Multiple Columns

**Task:** Count orders by customer and status

**Write your query:**
```sql
[Your answer here]
```

<details>
<summary>📝 Solution</summary>

```sql
SELECT customer_id, status, COUNT(*) as order_count
FROM orders
GROUP BY customer_id, status
ORDER BY customer_id, order_count DESC;
```

**Output:**
```
customer_id  status      order_count
101          Delivered   2
102          Delivered   1
102          Pending     1
103          Delivered   1
104          Cancelled   1
105          Delivered   1
```

</details>

---

### Problem 14: DISTINCT vs GROUP BY

**Task:** Show unique customers and unique statuses separately

**Write your queries:**
```sql
[Your answers here]
```

<details>
<summary>📝 Solution</summary>

**Unique customers:**
```sql
SELECT COUNT(DISTINCT customer_id) as unique_customers
FROM orders;
```

**Output:**
```
unique_customers
5
```

**Unique statuses:**
```sql
SELECT DISTINCT status
FROM orders;
```

**Output:**
```
status
Delivered
Pending
Cancelled
```

**Key difference:**
- COUNT(DISTINCT) gives a number (5 customers)
- DISTINCT gives the actual values

</details>

---

### Problem 15: Complex Analysis

**Task:** For each department, show:
- Employee count
- Total salary
- Average salary
- Lowest salary
- Highest salary
- Number of employees hired after 2020
- Only departments with average salary > 45,000

**Write your query:**
```sql
[Your answer here]
```

<details>
<summary>📝 Solution</summary>

```sql
SELECT department,
       COUNT(*) as emp_count,
       SUM(salary) as total_salary,
       ROUND(AVG(salary), 2) as avg_salary,
       MIN(salary) as lowest_salary,
       MAX(salary) as highest_salary,
       COUNT(CASE WHEN YEAR(hire_date) > 2020 THEN 1 END) as recent_hires
FROM employees
GROUP BY department
HAVING AVG(salary) > 45000
ORDER BY avg_salary DESC;
```

**Output:**
```
department  emp_count  total_salary  avg_salary  lowest_salary  highest_salary  recent_hires
IT          3          165,000       55,000.00   45,000         70,000          1
HR          2          95,000        47,500.00   40,000         55,000          1
```

**Explanation:**
- ROUND() formats average salary to 2 decimal places
- CASE counts employees hired after 2020
- HAVING filters for avg_salary > 45,000
- Sales excluded (avg_salary = 45,000, not > 45,000)

</details>

---
