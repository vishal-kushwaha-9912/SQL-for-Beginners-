
# 📋 PRACTICE QUESTIONS (Daily Missions)
 
## 📅 DAILY MISSION #1 (Day 1 - Foundation)
 
### Question 1: 🟢 COUNT by Department
 
**Write a query to count how many employees are in each department.**
 
<details>
<summary>✅ ANSWER</summary>
```sql
SELECT department, COUNT(*) as employee_count
FROM employees
GROUP BY department;
```
 
Result:
```
department │ employee_count
────────────┼────────────────
IT          │       3
Sales       │       1
HR          │       2
```
 
</details>
 Question 2: 🟢 SUM by Category
 
**Write a query to find total sales amount for each product category.**
 
<details>
<summary>✅ ANSWER</summary>
```sql
SELECT product_category, SUM(order_amount) as total_sales
FROM orders
GROUP BY product_category;
```
 
</details>
 Question 3: 🟢 AVG by Customer
 
**Find the average order amount for each customer.**
 
<details>
<summary>✅ ANSWER</summary>
```sql
SELECT customer_id, AVG(order_amount) as avg_order
FROM orders
GROUP BY customer_id;
```
 
</details>
 Question 4: 🟡 Multiple Aggregates
 
**Show employee count, total salary, and average salary by department.**
 
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
 
</details>
 Question 5: 🟡 MIN and MAX
 
**Show salary range (min and max) by department.**
 
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
 
</details>
---
 
## 📅 DAILY MISSION #2 (Day 2 - Filtering & Multiple Columns)
 
### Question 6: 🟢 GROUP BY Multiple Columns
 
**Count employees by both department AND city.**
 
<details>
<summary>✅ ANSWER</summary>
```sql
SELECT department, city, COUNT(*) as emp_count
FROM employees
GROUP BY department, city;
```
 
</details>
 Question 7: 🟡 WHERE + GROUP BY: High Earners
 
**Count employees earning over $50,000 by department.**
 
<details>
<summary>✅ ANSWER</summary>
```sql
SELECT department, COUNT(*) as high_earner_count
FROM employees
WHERE salary > 50000
GROUP BY department;
```
 
</details>
 Question 8: 🟡 HAVING: Groups with 2+ Employees
 
**Show only departments that have more than 1 employee.**
 
<details>
<summary>✅ ANSWER</summary>
```sql
SELECT department, COUNT(*) as emp_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 1;
```
 
</details>
 Question 9: 🟡 HAVING: Popular Products
 
**Show product categories with more than 2 orders.**
 
<details>
<summary>✅ ANSWER</summary>
```sql
SELECT product_category, COUNT(*) as order_count
FROM orders
GROUP BY product_category
HAVING COUNT(*) > 2;
```
 
</details>
 Question 10: 🔴 WHERE + HAVING: Complex Filter
 
**Find departments where employees earn >$45k AND the department has 2+ such employees.**
 
<details>
<summary>✅ ANSWER</summary>
```sql
SELECT department, COUNT(*) as emp_count
FROM employees
WHERE salary > 45000
GROUP BY department
HAVING COUNT(*) >= 2;
```
 
</details>
---
 
## 📅 DAILY MISSION #3 (Day 3 - Advanced Features)
 
### Question 11: 🟡 COUNT(DISTINCT): Unique Values
 
**Show each product category with total orders and unique customer count.**
 
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
 
</details>
 Question 12: 🟡 COALESCE: Replace NULL
 
**Show employee count by department, replacing NULL with 'Unassigned'.**
 
<details>
<summary>✅ ANSWER</summary>
```sql
SELECT 
    COALESCE(department, 'Unassigned') as department,
    COUNT(*) as emp_count
FROM employees
GROUP BY department;
```
 
</details>
 Question 13: 🟡 ORDER BY Results
 
**Show departments ordered by highest average salary first.**
 
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
 
</details>
 Question 14: 🔴 ORDER BY: Busiest Categories
 
**Show product categories by number of orders (highest first).**
 
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
 
## 📅 DAILY MISSION #4 (Day 4 - Real-World Applications)
 
### Question 15: 🔴 Customer Loyalty Analysis
 
**Show customers with 3+ orders, their total spending, average order value, and largest order.**
 
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
 
</details>
 Question 16: 🔴 Sales Performance Report
 
**Show order status with count, total revenue, and average order value (only statuses with 2+ orders).**
 
<details>
<summary>✅ ANSWER</summary>
```sql
SELECT 
    status,
    COUNT(*) as order_count,
    SUM(order_amount) as total_revenue,
    AVG(order_amount) as avg_order_value
FROM orders
GROUP BY status
HAVING COUNT(*) >= 2
ORDER BY order_count DESC;
```
 
</details>
 Question 17: 🔴 Regional Sales Analysis
 
**Show sales by city and product category, with total revenue.**
 
<details>
<summary>✅ ANSWER</summary>
```sql
SELECT 
    city,
    product_category,
    COUNT(*) as order_count,
    SUM(order_amount) as total_revenue
FROM orders
GROUP BY city, product_category
ORDER BY total_revenue DESC;
```
 
</details>
 Question 18: 🟡 Department Deep Dive
 
**Show department statistics: count, average salary, total budget, min/max salary.**
 
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
ORDER BY total_budget DESC;
```
 
</details>
---