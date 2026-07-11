<a name="part-9-practice-problems"></a>
# 📖 PART 9: PRACTICE PROBLEMS WITH SOLUTIONS

## Sample Data Tables

### Employees Table
```
emp_id  emp_name    department  salary   hire_date    city
1       Rahul       IT          50,000   2020-03-15   Mumbai
2       Aman        Sales       45,000   2021-06-20   Delhi
3       Neha        IT          70,000   2018-11-10   Bangalore
4       Priya       HR          55,000   2019-01-05   Mumbai
5       Ravi        IT          45,000   2022-02-14   Pune
6       Mohit       HR          40,000   2020-09-22   Chennai
7       Isha        Sales       52,000   2021-04-30   Delhi
8       Vikram      Sales       48,000   2022-01-18   Mumbai
```

### Products Table
```
product_id  product_name    category      price    rating
101         Laptop          Electronics   50,000   4.8
102         Mouse           Electronics   1,000    4.5
103         Keyboard        Electronics   3,000    4.7
104         Monitor         Electronics   15,000   4.6
105         Headphones      Electronics   2,500    4.9
106         USB Cable       Electronics   300      4.3
```

### Orders Table
```
order_id  customer_id  order_date       amount    status
1001      101          2026-07-10       25,000    Delivered
1002      102          2026-07-09       5,000     Pending
1003      101          2026-07-08       12,500    Delivered
1004      103          2026-07-07       8,000     Delivered
1005      104          2026-07-06       3,500     Cancelled
1006      102          2026-07-05       45,000    Delivered
1007      105          2026-07-04       1,200     Delivered
```

---

## 🟢 EASY PROBLEMS (1-4)

### Problem 1: Sort by Name (A-Z)

**Task:** Show all employees sorted alphabetically by name.

**Write your query:**
```sql
[Your answer here]
```

<details>
<summary>📝 Solution & Explanation</summary>

**Answer:**
```sql
SELECT emp_name, department, salary
FROM employees
ORDER BY emp_name;
```

**Explanation:**
- `ORDER BY emp_name` sorts alphabetically (A→Z is default ASC)
- No DESC needed

**Output:**
```
emp_name    department  salary
Aman        Sales       45,000
Isha        Sales       52,000
Mohit       HR          40,000
Neha        IT          70,000
Priya       HR          55,000
Rahul       IT          50,000
Ravi        IT          45,000
Vikram      Sales       48,000
```

**Key Learning:** Default sorting (ASC) = alphabetical for text

</details>

---

### Problem 2: Sort by Salary (Highest First)

**Task:** Show employees with highest salary first.

**Write your query:**
```sql
[Your answer here]
```

<details>
<summary>📝 Solution & Explanation</summary>

**Answer:**
```sql
SELECT emp_name, salary, department
FROM employees
ORDER BY salary DESC;
```

**Explanation:**
- `ORDER BY salary DESC` sorts highest to lowest
- DESC is mandatory (otherwise lowest first)

**Output:**
```
emp_name    salary    department
Neha        70,000    IT
Priya       55,000    HR
Isha        52,000    Sales
Rahul       50,000    IT
Vikram      48,000    Sales
Aman        45,000    Sales
Ravi        45,000    IT
Mohit       40,000    HR
```

**Common Mistake:** Forgetting DESC would show lowest paid first!

</details>

---

### Problem 3: Sort Products by Rating (Best First)

**Task:** Show products with highest rating first.

**Write your query:**
```sql
[Your answer here]
```

<details>
<summary>📝 Solution & Explanation</summary>

**Answer:**
```sql
SELECT product_name, rating, price
FROM products
ORDER BY rating DESC;
```

**Output:**
```
product_name    rating  price
Headphones      4.9     2,500
Laptop          4.8     50,000
Monitor         4.6     15,000
Keyboard        4.7     3,000
Mouse           4.5     1,000
USB Cable       4.3     300
```

**Key Learning:** DESC shows "best" first (highest ratings, biggest scores, etc.)

</details>

---

### Problem 4: Sort Orders by Date (Newest First)

**Task:** Show orders sorted by date, newest first.

**Write your query:**
```sql
[Your answer here]
```

<details>
<summary>📝 Solution & Explanation</summary>

**Answer:**
```sql
SELECT order_id, order_date, amount, status
FROM orders
ORDER BY order_date DESC;
```

**Output:**
```
order_id  order_date      amount    status
1001      2026-07-10      25,000    Delivered
1002      2026-07-09      5,000     Pending
1003      2026-07-08      12,500    Delivered
1004      2026-07-07      8,000     Delivered
1005      2026-07-06      3,500     Cancelled
1006      2026-07-05      45,000    Delivered
1007      2026-07-04      1,200     Delivered
```

**Key Learning:** DESC with dates = newest first (most relevant for users)

</details>

---

## 🟡 MEDIUM PROBLEMS (5-8)

### Problem 5: Sort by Department, Then Salary

**Task:** Show employees by department (A-Z), then by salary (high to low) within each dept.

**Write your query:**
```sql
[Your answer here]
```

<details>
<summary>📝 Solution & Explanation</summary>

**Answer:**
```sql
SELECT emp_name, department, salary
FROM employees
ORDER BY department ASC, salary DESC;
```

**Output:**
```
emp_name    department  salary
Priya       HR          55,000
Mohit       HR          40,000
Neha        IT          70,000
Rahul       IT          50,000
Ravi        IT          45,000
Isha        Sales       52,000
Vikram      Sales       48,000
Aman        Sales       45,000
```

**Explanation:**
- Line 1: Priority 1 is department (groups by HR, IT, Sales)
- Line 2: Priority 2 is salary DESC (highest in each group first)

**Why This Pattern Works:**
- HR manager can see salary structure by department
- Top earner visible in each department
- Easy to compare compensation levels

**Key Learning:** Multiple columns create priority-based sorting!

</details>

---

### Problem 6: Sort Products by Rating, Then Price

**Task:** Show products sorted by rating (best first), then by price (cheapest first) if ratings tie.

**Write your query:**
```sql
[Your answer here]
```

<details>
<summary>📝 Solution & Explanation</summary>

**Answer:**
```sql
SELECT product_name, rating, price
FROM products
ORDER BY rating DESC, price ASC;
```

**Output:**
```
product_name    rating  price
Headphones      4.9     2,500     ← Best rating, then cheapest
Laptop          4.8     50,000    ← Next best rating
Monitor         4.6     15,000
Keyboard        4.7     3,000
Mouse           4.5     1,000
USB Cable       4.3     300
```

**Explanation:**
- Priority 1: rating DESC (best first)
- Priority 2: price ASC (if same rating, cheaper first)

**Real-World Use:** Amazon product search!
- Users see best-rated items
- Within same rating, cheapest options appear

</details>

---

### Problem 7: Filter and Sort Together

**Task:** Show employees from IT department, sorted by salary (highest first).

**Write your query:**
```sql
[Your answer here]
```

<details>
<summary>📝 Solution & Explanation</summary>

**Answer:**
```sql
SELECT emp_name, salary, hire_date
FROM employees
WHERE department = 'IT'
ORDER BY salary DESC;
```

**Output:**
```
emp_name    salary    hire_date
Neha        70,000    2018-11-10
Rahul       50,000    2020-03-15
Ravi        45,000    2022-02-14
```

**Explanation:**
- WHERE filters to IT only
- ORDER BY sorts by salary highest first

**Key Learning:** WHERE before ORDER BY (always!)

**Common Mistake:**
```sql
-- WRONG ORDER
SELECT * FROM employees
ORDER BY salary DESC
WHERE department = 'IT';  ← Syntax error!
```

</details>

---

### Problem 8: Sort by Calculation (Annual Salary)

**Task:** Show employees sorted by annual salary (salary × 12), highest first.

**Write your query:**
```sql
[Your answer here]
```

<details>
<summary>📝 Solution & Explanation</summary>

**Answer:**
```sql
SELECT emp_name, salary, salary * 12 AS annual_salary
FROM employees
ORDER BY annual_salary DESC;
```

**Output:**
```
emp_name    salary    annual_salary
Neha        70,000    840,000
Priya       55,000    660,000
Isha        52,000    624,000
Rahul       50,000    600,000
Vikram      48,000    576,000
Aman        45,000    540,000
Ravi        45,000    540,000
Mohit       40,000    480,000
```

**Explanation:**
- `salary * 12 AS annual_salary` creates calculation + alias
- `ORDER BY annual_salary DESC` sorts by calculated value
- Alias is used in ORDER BY (works because SELECT runs first!)

**Key Learning:** Aliases work in ORDER BY but NOT in WHERE!

</details>

---

## 🔴 HARD PROBLEMS (9-12)

### Problem 9: Group and Sort (Advanced)

**Task:** Show total sales by customer, highest spender first.

**Write your query:**
```sql
[Your answer here]
```

<details>
<summary>📝 Solution & Explanation</summary>

**Answer:**
```sql
SELECT customer_id, COUNT(*) AS order_count, SUM(amount) AS total_spent
FROM orders
WHERE status = 'Delivered'
GROUP BY customer_id
ORDER BY total_spent DESC;
```

**Output:**
```
customer_id  order_count  total_spent
102          2            50,000
101          2            37,500
103          1            8,000
105          1            1,200
```

**Explanation:**
1. `WHERE status = 'Delivered'` - only count completed orders
2. `GROUP BY customer_id` - aggregate by customer
3. `SUM(amount)` - total spending
4. `ORDER BY total_spent DESC` - highest spenders first

**Real-World:** Identify VIP customers for loyalty programs!

**Key Learning:** ORDER BY works with GROUP BY and aggregates!

</details>

---

### Problem 10: Multi-Level Sort (3+ columns)

**Task:** Show employees sorted by: department (A-Z), salary (high-low), then name (A-Z).

**Write your query:**
```sql
[Your answer here]
```

<details>
<summary>📝 Solution & Explanation</summary>

**Answer:**
```sql
SELECT emp_name, department, salary
FROM employees
ORDER BY department ASC, salary DESC, emp_name ASC;
```

**Output:**
```
emp_name    department  salary
Priya       HR          55,000
Mohit       HR          40,000
Neha        IT          70,000
Rahul       IT          50,000
Ravi        IT          45,000
Isha        Sales       52,000
Vikram      Sales       48,000
Aman        Sales       45,000
```

**Explanation:**
- Priority 1: Department (groups by HR, IT, Sales)
- Priority 2: Salary DESC (highest in each group)
- Priority 3: Name ASC (alphabetical if same dept & salary)

**Key Learning:** Priorities are left-to-right! First sort column is most important.

</details>

---

### Problem 11: Complex Calculation

**Task:** Show products sorted by profit margin (price - cost), highest margin first.
*Assume cost = price × 0.4*

**Write your query:**
```sql
[Your answer here]
```

<details>
<summary>📝 Solution & Explanation</summary>

**Answer:**
```sql
SELECT product_name, price, price * 0.6 AS profit_margin
FROM products
ORDER BY (price * 0.6) DESC;
```

**Or with alias (cleaner):**
```sql
SELECT product_name, price, (price * 0.6) AS profit_margin
FROM products
ORDER BY profit_margin DESC;
```

**Output:**
```
product_name    price    profit_margin
Laptop          50,000   30,000
Monitor         15,000   9,000
Keyboard        3,000    1,800
Headphones      2,500    1,500
Mouse           1,000    600
USB Cable       300      180
```

**Explanation:**
- Profit = price × 0.6 (60% margin)
- ORDER BY profit_margin DESC shows highest profit first

**Real-World:** Warehouse prioritizes packing high-margin items!

**Key Learning:** Expressions can be complex. Use aliases for readability!

</details>

---

### Problem 12: Filter, Group, and Sort (Everything Combined!)

**Task:** Show total sales by department (IT, Sales, HR), sorted by total revenue (highest first). Only include departments with total revenue > 100,000.

**Write your query:**
```sql
[Your answer here]
```

<details>
<summary>📝 Solution & Explanation</summary>

**Answer:**
```sql
SELECT e.department, COUNT(o.order_id) AS order_count, SUM(o.amount) AS total_revenue
FROM employees e
LEFT JOIN orders o ON e.emp_id = o.employee_id
GROUP BY e.department
HAVING SUM(o.amount) > 100000
ORDER BY total_revenue DESC;
```

**Or simpler version (using employees table only):**
```sql
SELECT department, COUNT(*) AS emp_count, SUM(salary) AS salary_cost
FROM employees
GROUP BY department
HAVING SUM(salary) > 100000
ORDER BY salary_cost DESC;
```

**Output:**
```
department  emp_count  salary_cost
IT          3          165,000      ← Highest salary cost
Sales       3          145,000
HR          2          95,000       ← Below 100k, excluded
```

**Explanation:**
1. `GROUP BY department` - aggregate by department
2. `HAVING SUM(salary) > 100000` - filter groups (WHERE is for rows, HAVING is for groups!)
3. `ORDER BY salary_cost DESC` - highest first

**Key Learning:** ORDER BY works with GROUP BY and HAVING!

**Common Mistake:**
```sql
-- WRONG - WHERE can't use aggregates
WHERE SUM(salary) > 100000;

-- RIGHT - HAVING is for groups
HAVING SUM(salary) > 100000;
```

</details>

---