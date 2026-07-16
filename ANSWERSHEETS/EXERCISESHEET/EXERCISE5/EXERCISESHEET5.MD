
# 📅 DAILY MISSION #1 (Day 1 - Foundation)
**Time: 45 minutes | Questions: 1-5**

---

## ❓ Question 1: 🟢 COUNT by Department

**Write a query to count how many employees are in each department.**

### Before You Submit, Ask Yourself:
- ☐ Did I use SELECT with the column I want to group by?
- ☐ Did I use COUNT(*) to count rows?
- ☐ Did I use GROUP BY for the column?
- ☐ Did I remember to use FROM?

<details>
<summary>✅ ANSWER & EXPLANATION</summary>

```sql
SELECT department, COUNT(*) as employee_count
FROM employees
GROUP BY department;
```

**Result:**
```
department │ employee_count
────────────┼────────────────
IT          │       3
Sales       │       2
HR          │       2
Finance     │       1
```

**Why this works:** 
- `COUNT(*)` counts rows in each group
- `GROUP BY department` creates one group per department
- Result shows how many employees in each department

**Execution order:**
1. FROM loads all employees
2. GROUP BY organizes them by department
3. COUNT(*) calculates count per group
4. SELECT shows the results

</details>

---

## ❓ Question 2: 🟢 SUM by Category

**Write a query to find total sales amount for each product category.**

### Before You Submit, Ask Yourself:
- ☐ Did I use SUM() instead of COUNT()?
- ☐ Did I group by the category column?
- ☐ Does my column alias make sense?

<details>
<summary>✅ ANSWER</summary>

```sql
SELECT product_category, SUM(order_amount) as total_sales
FROM orders
GROUP BY product_category;
```

**What changed:** COUNT(*) → SUM(order_amount)
That's the only difference from Question 1!

</details>

---

## ❓ Question 3: 🟢 AVG by Customer

**Find the average order amount for each customer.**

### Before You Submit, Ask Yourself:
- ☐ Did I use AVG() function?
- ☐ Did I group by customer_id?
- ☐ Does the result make logical sense?

<details>
<summary>✅ ANSWER</summary>

```sql
SELECT customer_id, AVG(order_amount) as avg_order
FROM orders
GROUP BY customer_id;
```

**Pattern:** COUNT → SUM → AVG are all just different aggregate functions!

</details>

---

## ❓ Question 4: 🟡 Multiple Aggregates

**Show employee count, total salary, and average salary by department.**

### Before You Submit, Ask Yourself:
- ☐ Did I include all three aggregate functions?
- ☐ Did I give each one a clear column alias?
- ☐ Is department in GROUP BY?

<details>
<summary>✅ ANSWER</summary>

```sql
SELECT 
    department,
    COUNT(*) as emp_count,
    SUM(salary) as total_salary,
    AVG(salary) as avg_salary
FROM employees
GROUP BY department;
```

**New pattern:** Just add more aggregates separated by commas!

```
Result:
department │ emp_count │ total_salary │ avg_salary
────────────┼───────────┼──────────────┼────────────
IT          │     3     │    165,000   │   55,000
HR          │     2     │     95,000   │   47,500
Sales       │     1     │     45,000   │   45,000
```

</details>

---

## ❓ Question 5: 🟡 MIN and MAX

**Show salary range (min and max) by department.**

### Before You Submit, Ask Yourself:
- ☐ Did I use MIN() and MAX() functions?
- ☐ Did I group by department?
- ☐ Are the results logical (max > min)?

<details>
<summary>✅ ANSWER</summary>

```sql
SELECT 
    department,
    MIN(salary) as min_salary,
    MAX(salary) as max_salary
FROM employees
GROUP BY department;
```

**Result:**
```
department │ min_salary │ max_salary
────────────┼────────────┼────────────
IT          │   45,000   │   70,000
HR          │   40,000   │   55,000
Sales       │   45,000   │   45,000
```

**Note:** Sales has same min and max because there's only 1 employee!

</details>

---

# 📅 DAILY MISSION #2 (Day 2 - Filtering & Multiple Columns)
**Time: 50 minutes | Questions: 6-12**

---

## ❓ Question 6: 🟢 GROUP BY Multiple Columns

**Count employees by both department AND city.**

### Before You Submit, Ask Yourself:
- ☐ Did I put BOTH columns in SELECT and GROUP BY?
- ☐ Are they in the same order in both places?
- ☐ Does the result show combinations (e.g., IT + Mumbai)?

<details>
<summary>✅ ANSWER</summary>

```sql
SELECT department, city, COUNT(*) as emp_count
FROM employees
GROUP BY department, city;
```

**Result:**
```
department │ city       │ emp_count
────────────┼────────────┼──────────
IT          │ Bangalore  │    1
IT          │ Delhi      │    1
IT          │ Mumbai     │    1
HR          │ Chennai    │    1
HR          │ Mumbai     │    1
Sales       │ Delhi      │    1
```

**Pattern:** Just add more columns to both SELECT and GROUP BY!

</details>

---

## ❓ Question 7: 🟡 Sales by Category AND Month

**Show total sales by product category AND month.**

### Before You Submit, Ask Yourself:
- ☐ Did I extract the month from the date column?
- ☐ Are category and month both in GROUP BY?
- ☐ Did I use SUM() for the sales amount?

<details>
<summary>💡 HINT</summary>
Use `MONTH(order_date)` or `DATE_FORMAT(order_date, '%Y-%m')`
</details>

<details>
<summary>✅ ANSWER</summary>

```sql
SELECT 
    product_category, 
    MONTH(order_date) as month,
    SUM(order_amount) as total_sales
FROM orders
GROUP BY product_category, MONTH(order_date);
```

**Alternative (with nicer date format):**
```sql
SELECT 
    product_category, 
    DATE_FORMAT(order_date, '%Y-%m') as month,
    SUM(order_amount) as total_sales
FROM orders
GROUP BY product_category, DATE_FORMAT(order_date, '%Y-%m');
```

</details>

---

## ❓ Question 8: 🟡 WHERE + GROUP BY: High Earners

**Count employees earning over $50,000 by department.**

### Before You Submit, Ask Yourself:
- ☐ Did I use WHERE to filter salary > 50000?
- ☐ Does WHERE come BEFORE GROUP BY?
- ☐ Are only high earners in the result?

<details>
<summary>✅ ANSWER</summary>

```sql
SELECT department, COUNT(*) as high_earner_count
FROM employees
WHERE salary > 50000
GROUP BY department;
```

**Result:**
```
department │ high_earner_count
────────────┼───────────────────
IT          │        2
HR          │        1
```

(Sales is not shown because no employees earning > $50k there)

**Key point:** WHERE filters BEFORE grouping, so SQL only processes high earners!

</details>

---

## ❓ Question 9: 🟡 WHERE + GROUP BY: Large Orders

**Show product categories that have orders over $5,000.**

### Before You Submit, Ask Yourself:
- ☐ Did I filter in WHERE for orders > $5,000?
- ☐ Did I use COUNT to count orders per category?
- ☐ Is GROUP BY the category column?

<details>
<summary>✅ ANSWER</summary>

```sql
SELECT product_category, COUNT(*) as large_order_count
FROM orders
WHERE order_amount > 5000
GROUP BY product_category;
```

</details>

---

## ❓ Question 10: 🟡 HAVING: Groups with 2+ Employees

**Show only departments that have more than 1 employee.**

### Before You Submit, Ask Yourself:
- ☐ Did I use HAVING (not WHERE) to filter groups?
- ☐ Is the HAVING condition based on COUNT()?
- ☐ Does the result exclude single-employee departments?

<details>
<summary>✅ ANSWER</summary>

```sql
SELECT department, COUNT(*) as emp_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 1;
```

**Result:**
```
department │ emp_count
────────────┼──────────
IT          │    3
HR          │    2
```

(Sales is excluded because it has only 1 employee)

**Key point:** HAVING filters GROUPS, not individual rows!

</details>

---

## ❓ Question 11: 🟡 HAVING: Popular Products

**Show product categories with more than 2 orders.**

### Before You Submit, Ask Yourself:
- ☐ Did I use HAVING with COUNT(*)?
- ☐ Is the comparison > 2?
- ☐ Only categories meeting criteria are shown?

<details>
<summary>✅ ANSWER</summary>

```sql
SELECT product_category, COUNT(*) as order_count
FROM orders
GROUP BY product_category
HAVING COUNT(*) > 2;
```

</details>

---

## ❓ Question 12: 🔴 WHERE + HAVING: Complex Filter

**Find departments where employees earn >$45k AND the department has 2+ such employees.**

### Before You Submit, Ask Yourself:
- ☐ Did I use WHERE to filter salary?
- ☐ Did I use HAVING to filter group count?
- ☐ Is WHERE before GROUP BY?
- ☐ Is HAVING after GROUP BY?

<details>
<summary>✅ ANSWER</summary>

```sql
SELECT department, COUNT(*) as emp_count
FROM employees
WHERE salary > 45000
GROUP BY department
HAVING COUNT(*) >= 2;
```

**Execution:**
1. WHERE filters to 4 employees (all earning > $45k)
2. GROUP BY creates groups
3. HAVING keeps only groups with 2+ employees

**Result:**
```
department │ emp_count
────────────┼──────────
IT          │     3
HR          │     1    (only Priya, so excluded by HAVING)
```

Actually, HR is excluded! Real result:
```
department │ emp_count
────────────┼──────────
IT          │     3
```

</details>

---

# 📅 DAILY MISSION #3 (Day 3 - Advanced Features)
**Time: 50 minutes | Questions: 13-19**

---

## ❓ Question 13: 🟡 COUNT(DISTINCT): Unique Values

**Show each product category with unique customer count.**

### Before You Submit, Ask Yourself:
- ☐ Did I use COUNT(DISTINCT customer_id)?
- ☐ Not just COUNT(*)?
- ☐ Is category in GROUP BY?

<details>
<summary>✅ ANSWER</summary>

```sql
SELECT 
    product_category,
    COUNT(*) as total_orders,
    COUNT(DISTINCT customer_id) as unique_customers
FROM orders
GROUP BY product_category;
```

**Result Example:**
```
category │ total_orders │ unique_customers
──────────┼──────────────┼──────────────────
Electronics │    25       │    12
Clothing  │    18       │    8
```

Interpretation: Electronics has 25 orders from only 12 unique customers (some customers ordered multiple times!)

</details>

---

## ❓ Question 14: 🟡 COALESCE: Replace NULL

**Show employee count by department, replacing NULL with 'Unassigned'.**

### Before You Submit, Ask Yourself:
- ☐ Did I use COALESCE()?
- ☐ Did I provide a replacement value ('Unassigned')?
- ☐ Is NULL replaced in results?

<details>
<summary>✅ ANSWER</summary>

```sql
SELECT 
    COALESCE(department, 'Unassigned') as department,
    COUNT(*) as emp_count
FROM employees
GROUP BY department;
```

**Result:**
```
department   │ emp_count
──────────────┼──────────
IT           │    3
HR           │    2
Unassigned   │    1  ← Much clearer than NULL!
```

</details>

---

## ❓ Question 15: 🔴 Salary Brackets with CASE

**Group employees into salary brackets (Under 50k, 50-60k, Over 60k) and count each.**

### Before You Submit, Ask Yourself:
- ☐ Did I use CASE WHEN?
- ☐ Are all salary ranges covered?
- ☐ Did I include the CASE in GROUP BY?
- ☐ Did I use WHERE to filter NULL?

<details>
<summary>✅ ANSWER</summary>

```sql
SELECT 
    CASE 
        WHEN salary < 50000 THEN 'Under 50k'
        WHEN salary <= 60000 THEN '50-60k'
        ELSE 'Over 60k'
    END as salary_bracket,
    COUNT(*) as emp_count
FROM employees
WHERE salary IS NOT NULL
GROUP BY 
    CASE 
        WHEN salary < 50000 THEN 'Under 50k'
        WHEN salary <= 60000 THEN '50-60k'
        ELSE 'Over 60k'
    END;
```

**Result:**
```
salary_bracket │ emp_count
────────────────┼──────────
Under 50k      │    2
50-60k         │    4
Over 60k       │    2
```

</details>

---

## ❓ Question 16: 🟡 ORDER BY Results

**Show departments ordered by highest average salary first.**

### Before You Submit, Ask Yourself:
- ☐ Did I use AVG(salary)?
- ☐ Did I add ORDER BY?
- ☐ Is DESC in ORDER BY for highest first?

<details>
<summary>✅ ANSWER</summary>

```sql
SELECT 
    department,
    AVG(salary) as avg_salary
FROM employees
GROUP BY department
ORDER BY avg_salary DESC;
```

**Result:**
```
department │ avg_salary
────────────┼────────────
IT          │   55,000    ← Highest
HR          │   47,500
Sales       │   45,000    ← Lowest
```

</details>

---

## ❓ Question 17: 🟡 ORDER BY: Busiest Categories

**Show product categories by number of orders (highest first).**

### Before You Submit, Ask Yourself:
- ☐ Did I use COUNT(*)?
- ☐ Did I sort by count in descending order?
- ☐ Most popular category shows first?

<details>
<summary>✅ ANSWER</summary>

```sql
SELECT 
    product_category,
    COUNT(*) as order_count
FROM orders
GROUP BY product_category
ORDER BY order_count DESC;
```

</details>

---

## ❓ Question 18: 🔴 Monthly Sales Report

**Create a monthly sales report showing orders, unique customers, and revenue (only months > $10k revenue).**

### Before You Submit, Ask Yourself:
- ☐ Did I extract month from order_date?
- ☐ Did I include COUNT(*) for orders?
- ☐ Did I use COUNT(DISTINCT customer_id)?
- ☐ Did I use SUM() for revenue?
- ☐ Did I use HAVING to filter $10k+?
- ☐ Did I sort by revenue?

<details>
<summary>💡 HINT</summary>
Use DATE_FORMAT or MONTH. HAVING should check SUM(order_amount).
</details>

<details>
<summary>✅ ANSWER</summary>

```sql
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') as month,
    COUNT(*) as total_orders,
    COUNT(DISTINCT customer_id) as unique_customers,
    SUM(order_amount) as total_revenue,
    AVG(order_amount) as avg_order_value
FROM orders
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
HAVING SUM(order_amount) > 10000
ORDER BY total_revenue DESC;
```

**Result Example:**
```
month   │ total_orders │ unique_customers │ total_revenue │ avg_order
────────┼──────────────┼──────────────────┼───────────────┼──────────
2024-01 │     45       │       28         │    $18,500    │  $411
2024-02 │     38       │       25         │    $15,200    │  $400
(Other months with < $10k not shown)
```

</details>

---

## ❓ Question 19: 🔴 Department Performance Deep Dive

**Show department statistics: count, average salary, total budget, min/max salary, only if total > $50k, sorted by budget.**

### Before You Submit, Ask Yourself:
- ☐ Did I use all 5 aggregate functions?
- ☐ Did I use HAVING to filter SUM(salary) > 50000?
- ☐ Did I sort by total_budget DESC?
- ☐ Did I handle NULL departments?

<details>
<summary>✅ ANSWER</summary>

```sql
SELECT 
    COALESCE(department, 'Unassigned') as department,
    COUNT(*) as emp_count,
    AVG(salary) as avg_salary,
    SUM(salary) as total_budget,
    MIN(salary) as min_salary,
    MAX(salary) as max_salary
FROM employees
WHERE salary IS NOT NULL
GROUP BY department
HAVING SUM(salary) > 50000
ORDER BY total_budget DESC;
```

**Result:**
```
department │ emp_count │ avg_salary │ total_budget │ min_salary │ max_salary
────────────┼───────────┼────────────┼──────────────┼────────────┼────────────
IT          │     3     │   55,000   │    165,000   │   45,000   │   70,000
HR          │     2     │   47,500   │     95,000   │   40,000   │   55,000
(Sales excluded because < $50k)
```

</details>

---

# 📅 DAILY MISSION #4 (Day 4 - Real-World Applications)
**Time: 60 minutes | Questions: 20-25**

---

## ❓ Question 20: 🔴 Customer Loyalty Analysis

**Show customers with 3+ orders, their total spending, average order value, and largest order.**

### Before You Submit, Ask Yourself:
- ☐ Did I use HAVING COUNT(*) >= 3?
- ☐ Did I include all four aggregates?
- ☐ Did I sort by total_spending DESC?
- ☐ Only loyal customers (3+ orders) shown?

<details>
<summary>✅ ANSWER</summary>

```sql
SELECT 
    customer_id,
    COUNT(*) as total_orders,
    SUM(order_amount) as total_spending,
    AVG(order_amount) as avg_order_value,
    MAX(order_amount) as largest_order
FROM orders
GROUP BY customer_id
HAVING COUNT(*) >= 3
ORDER BY total_spending DESC;
```

**Result Example:**
```
customer_id │ total_orders │ total_spending │ avg_order_value │ largest_order
─────────────┼──────────────┼────────────────┼─────────────────┼──────────────
CUST_001    │      8       │   $2,400       │     $300        │    $500
CUST_003    │      6       │   $1,800       │     $300        │    $450
CUST_005    │      5       │   $1,200       │     $240        │    $350
```

**Business use:** Identify top customers for loyalty rewards!

</details>

---

## ❓ Question 21: 🟡 Regional Sales Analysis

**Show sales by region and product category, with total revenue, for categories with 5+ orders.**

### Before You Submit, Ask Yourself:
- ☐ Did I group by both region AND category?
- ☐ Did I use COUNT(*) to count orders?
- ☐ Did I use HAVING to filter 5+ orders?
- ☐ Did I sort by revenue?

<details>
<summary>✅ ANSWER</summary>

```sql
SELECT 
    region,
    product_category,
    COUNT(*) as order_count,
    SUM(order_amount) as total_revenue
FROM orders
GROUP BY region, product_category
HAVING COUNT(*) >= 5
ORDER BY total_revenue DESC;
```

</details>

---

## ❓ Question 22: 🔴 Employee Turnover Analysis

**Show departments by hire date ranges (grouped by year), count of employees, average salary, and years active.**

### Before You Submit, Ask Yourself:
- ☐ Did I extract YEAR from hire_date?
- ☐ Did I group by year?
- ☐ Did I count employees per year?
- ☐ Did I calculate average salary per year?
- ☐ Is the data sorted chronologically?

<details>
<summary>✅ ANSWER</summary>

```sql
SELECT 
    YEAR(hire_date) as hire_year,
    COUNT(*) as employees_hired,
    AVG(salary) as avg_salary,
    MIN(salary) as min_salary,
    MAX(salary) as max_salary
FROM employees
WHERE hire_date IS NOT NULL
GROUP BY YEAR(hire_date)
ORDER BY hire_year DESC;
```

**Result Example:**
```
hire_year │ employees_hired │ avg_salary │ min_salary │ max_salary
───────────┼─────────────────┼────────────┼────────────┼────────────
2024      │      5          │   52,000   │   45,000   │   60,000
2023      │      8          │   48,500   │   40,000   │   55,000
2022      │      3          │   55,000   │   50,000   │   70,000
```

**Insight:** How hiring changed over time!

</details>

---

## ❓ Question 23: 🔴 Order Status Distribution

**Show order status with count, total revenue, average order value (only statuses with 3+ orders).**

### Before You Submit, Ask Yourself:
- ☐ Did I use COUNT(*)?
- ☐ Did I use SUM() and AVG()?
- ☐ Did I use HAVING COUNT(*) >= 3?
- ☐ Did I order by count?

<details>
<summary>✅ ANSWER</summary>

```sql
SELECT 
    status,
    COUNT(*) as order_count,
    SUM(order_amount) as total_revenue,
    AVG(order_amount) as avg_order_value,
    MAX(order_amount) as max_order,
    MIN(order_amount) as min_order
FROM orders
GROUP BY status
HAVING COUNT(*) >= 3
ORDER BY order_count DESC;
```

</details>

---

## ❓ Question 24: 🔴 Product Performance By Time & Category

**Analyze sales by product category, time period (Morning/Afternoon/Evening based on order time), with revenue and order count.**

### Before You Submit, Ask Yourself:
- ☐ Did I extract time period from order_time using CASE WHEN?
- ☐ Did I group by both category AND time period?
- ☐ Did I include the CASE in GROUP BY?
- ☐ Are all time periods represented?

<details>
<summary>💡 HINT</summary>
Use CASE WHEN with HOUR(order_time) < 12, < 17, etc.
</details>

<details>
<summary>✅ ANSWER</summary>

```sql
SELECT 
    product_category,
    CASE 
        WHEN HOUR(order_time) < 12 THEN 'Morning'
        WHEN HOUR(order_time) < 17 THEN 'Afternoon'
        ELSE 'Evening'
    END as time_period,
    COUNT(*) as order_count,
    SUM(order_amount) as total_revenue,
    AVG(order_amount) as avg_order_value
FROM orders
WHERE order_time IS NOT NULL
GROUP BY 
    product_category,
    CASE 
        WHEN HOUR(order_time) < 12 THEN 'Morning'
        WHEN HOUR(order_time) < 17 THEN 'Afternoon'
        ELSE 'Evening'
    END
ORDER BY product_category, time_period;
```

**Result Example:**
```
category    │ time_period │ order_count │ total_revenue │ avg_order
─────────────┼─────────────┼─────────────┼───────────────┼──────────
Electronics │ Morning     │     12      │    $3,600     │  $300
Electronics │ Afternoon   │     18      │    $5,400     │  $300
Electronics │ Evening     │     8       │    $2,400     │  $300
Clothing    │ Morning     │     8       │    $1,600     │  $200
...
```

**Business use:** Which categories sell best at which times? Stock accordingly!

</details>

---

## ❓ Question 25: 🔴 The Ultimate Challenge - Comprehensive Analytics

**Create a comprehensive dashboard query that shows:**
- **For each department:** employee count, average salary, total budget
- **Only departments with 2+ employees**
- **Only departments with total salary > $80,000**
- **Show employees earning > $45,000 only**
- **Sort by total budget descending**
- **Replace NULL departments with 'Unassigned'**

### Before You Submit, Ask Yourself:
- ☐ Did I use WHERE for salary > 45000?
- ☐ Did I use COALESCE for NULL departments?
- ☐ Did I use HAVING for both COUNT >= 2 AND SUM > 80000?
- ☐ Did I use all the right aggregate functions?
- ☐ Did I sort by total_budget DESC?
- ☐ All conditions are met?

<details>
<summary>💡 HINT</summary>
You need TWO conditions in HAVING - both must be true. Use AND.
</details>

<details>
<summary>✅ ANSWER</summary>

```sql
SELECT 
    COALESCE(department, 'Unassigned') as department,
    COUNT(*) as emp_count,
    AVG(salary) as avg_salary,
    SUM(salary) as total_budget,
    MIN(salary) as min_salary,
    MAX(salary) as max_salary
FROM employees
WHERE salary > 45000
GROUP BY department
HAVING COUNT(*) >= 2 AND SUM(salary) > 80000
ORDER BY total_budget DESC;
```

**Execution breakdown:**

1. **WHERE filters:** Only employees earning > $45,000
2. **GROUP BY:** Groups by department
3. **HAVING filters:** Only departments with 2+ employees AND total salary > $80k
4. **ORDER BY:** Shows highest budget first

**Result Example:**
```
department │ emp_count │ avg_salary │ total_budget │ min_salary │ max_salary
────────────┼───────────┼────────────┼──────────────┼────────────┼────────────
IT          │     3     │   63,333   │    190,000   │   50,000   │   70,000
HR          │     2     │   55,000   │    110,000   │   50,000   │   60,000
```

(Sales excluded - doesn't meet $80k threshold)

**Why this matters:** This is the kind of query business analysts write every day!

</details>

---