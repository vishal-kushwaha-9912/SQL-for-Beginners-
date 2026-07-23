
# Basic HAVING Exercises (Exercises 1-5)

**Focus:** Simple HAVING with one aggregate function

### Exercise 1: Find Product Categories with More Than 5 Items

Find all product categories that have more than 5 products.

**Tables Used:** `products` (product_id, product_name, category_id, price)  
**Output Columns:** category_id, product_count  
**Expected Rows:** Varies based on data

**Write Your Query:**
```sql


---

### Exercise 2: Find Departments with Total Salary Budget Over $500k

Find departments where the total salary of all employees exceeds $500,000.

**Tables Used:** `employees` (employee_id, emp_name, dept_id, salary)  
**Output Columns:** dept_id, total_salary_budget  
**Expected Rows:** Varies based on data

**Write Your Query:**
```sql

```

---

### Exercise 3: Find Product Categories with Average Price Above $50

Find product categories where the average price is $50 or more.

**Tables Used:** `products` (product_id, product_name, category_id, price)  
**Output Columns:** category_id, avg_price  
**Expected Rows:** Varies based on data

**Write Your Query:**
```sql

```

---

### Exercise 4: Find Customers with Total Orders More Than 10

Find customers who have placed more than 10 orders (count of order records).

**Tables Used:** `orders` (order_id, customer_id, order_date, amount)  
**Output Columns:** customer_id, order_count  
**Expected Rows:** Varies based on data

**Write Your Query:**
```sql

```

---

### Exercise 5: Find Months with Total Sales Exceeding $10,000

Find which months (from order data) had total sales greater than $10,000.

**Tables Used:** `orders` (order_id, customer_id, order_date, amount)  
**Output Columns:** month, total_sales (hint: use DATE_TRUNC or similar)  
**Expected Rows:** Varies based on data

**Write Your Query:**
```sql

```

---

## 📚 Part 2: Intermediate HAVING Exercises (Exercises 6-10)

**Focus:** HAVING with WHERE conditions and multiple aggregates

### Exercise 6: Find Expensive Categories with Many Items (WHERE + HAVING)

Find product categories where:
- Product price is above $50 (WHERE condition)
- Category has at least 3 such products (HAVING condition)

**Tables Used:** `products` (product_id, product_name, category_id, price)  
**Output Columns:** category_id, expensive_product_count  
**Expected Rows:** Varies based on data

**Write Your Query:**
```sql

```

---

### Exercise 7: Find Departments with High Average Salary and Multiple Employees

Find departments where:
- There are at least 5 employees (HAVING COUNT(*) >= 5)
- Average salary is above $60,000 (HAVING AVG(salary) > 60000)

**Tables Used:** `employees` (employee_id, emp_name, dept_id, salary)  
**Output Columns:** dept_id, employee_count, avg_salary  
**Expected Rows:** Varies based on data

**Write Your Query:**
```sql

```

---

### Exercise 8: Find Customers with Recent Orders Spending > $5,000

Find customers where:
- Orders placed after January 1, 2024 (WHERE condition)
- Total spending from those orders exceeds $5,000 (HAVING condition)

**Tables Used:** `orders` (order_id, customer_id, order_date, amount)  
**Output Columns:** customer_id, recent_order_count, total_spent  
**Expected Rows:** Varies based on data

**Write Your Query:**
```sql

```

---

### Exercise 9: Find Cities with Multiple Stores and High Revenue

Find cities where:
- Total revenue from all stores exceeds $1,000,000 (HAVING condition)
- There are at least 2 stores (HAVING condition)

**Tables Used:** `stores` (store_id, city, revenue)  
**Output Columns:** city, store_count, total_revenue  
**Expected Rows:** Varies based on data

**Write Your Query:**
```sql

```

---

### Exercise 10: Find Product Categories with Wide Price Range

Find product categories where:
- Max price is at least $100 more than min price (HAVING)
- Category has at least 3 products (HAVING)

**Tables Used:** `products` (product_id, product_name, category_id, price)  
**Output Columns:** category_id, min_price, max_price, price_range  
**Expected Rows:** Varies based on data

**Write Your Query:**
```sql

```

---
