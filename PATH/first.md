# SQL Learning Path for Beginners

A complete guide to learning SQL for data analysis, organized into manageable phases.

## 📚 Table of Contents
- [Phase 1: Core Foundations](#phase-1-core-foundations-start-here)
- [Phase 2: Essential Skills](#phase-2-essential-skills-next)
- [Phase 3: Connecting Data](#phase-3-connecting-data)
- [Phase 4: Intermediate Skills](#phase-4-intermediate-skills)
- [Quick Start Recommendation](#quick-start-recommendation)
- [Best Learning Tips](#best-learning-tips)
- [Resources](#resources)

---

## Phase 1: Core Foundations (Start Here)

### 1. SELECT Statement
The foundation of all SQL queries. This is your "hello world" in SQL.

**What you'll learn:**
- The basics: `SELECT * FROM table_name`
- Selecting specific columns: `SELECT column1, column2 FROM table_name`
- Understanding table structure and column names

**Example:**
```sql
-- Get all columns from a table
SELECT * FROM customers;

-- Get specific columns
SELECT first_name, last_name, email FROM customers;
```

### 2. WHERE Clause
Filter data to get exactly what you need.

**What you'll learn:**
- Filtering data with conditions
- Comparison operators: `=`, `<`, `>`, `!=`, `BETWEEN`, `IN`
- Logical operators: `AND`, `OR`, `NOT`

**Example:**
```sql
-- Find customers from a specific city
SELECT * FROM customers WHERE city = 'New York';

-- Find orders over $100
SELECT * FROM orders WHERE amount > 100;

-- Multiple conditions
SELECT * FROM customers 
WHERE age > 25 AND city = 'New York';
```

### 3. Basic Data Types & NULL
Understand the different types of data you'll work with.

**What you'll learn:**
- Data types: Text (VARCHAR), Numbers (INT, DECIMAL), Dates (DATE, DATETIME)
- Handling NULL values (missing data)
- The `IS NULL` and `IS NOT NULL` operators

**Example:**
```sql
-- Check for missing email values
SELECT * FROM customers WHERE email IS NULL;

-- Exclude NULL values
SELECT * FROM customers WHERE email IS NOT NULL;
```

---

## Phase 2: Essential Skills (Next)

### 1. ORDER BY & LIMIT
Sort and limit your results.

**What you'll learn:**
- Sorting results in ascending (ASC) or descending (DESC) order
- Limiting the number of results returned
- Sorting by multiple columns

**Example:**
```sql
-- Sort by date, newest first
SELECT * FROM orders ORDER BY order_date DESC;

-- Get top 10 customers by purchase amount
SELECT * FROM customers ORDER BY total_purchases DESC LIMIT 10;

-- Sort by multiple columns
SELECT * FROM orders 
ORDER BY customer_id ASC, order_date DESC;
```

### 2. Aggregate Functions
Essential for summarizing data in your analysis.

**What you'll learn:**
- `COUNT()` - Count the number of rows
- `SUM()` - Add values together
- `AVG()` - Calculate average
- `MIN()` - Find minimum value
- `MAX()` - Find maximum value

**Example:**
```sql
-- Count total customers
SELECT COUNT(*) FROM customers;

-- Calculate total sales
SELECT SUM(amount) FROM orders;

-- Find average order value
SELECT AVG(amount) FROM orders;

-- Get min and max prices
SELECT MIN(price), MAX(price) FROM products;
```

### 3. GROUP BY & HAVING
Analyze data by categories and groups.

**What you'll learn:**
- Grouping data by categories
- Using aggregate functions with groups
- Filtering grouped results with HAVING

**Example:**
```sql
-- Sales by product category
SELECT category, SUM(sales) 
FROM products 
GROUP BY category;

-- Count orders per customer
SELECT customer_id, COUNT(*) as order_count
FROM orders
GROUP BY customer_id;

-- Find categories with sales over $10,000
SELECT category, SUM(sales) as total_sales
FROM products
GROUP BY category
HAVING SUM(sales) > 10000;
```

---

## Phase 3: Connecting Data

### 1. JOINs (Most Important!)
Combine data from multiple tables. This is crucial for data analysis.

**What you'll learn:**
- `INNER JOIN` - Get matching records from both tables
- `LEFT JOIN` - Keep all records from the left table
- `RIGHT JOIN` - Keep all records from the right table

**Example:**
```sql
-- Inner Join: Get customers and their orders
SELECT customers.name, orders.order_id, orders.amount
FROM customers
INNER JOIN orders ON customers.id = orders.customer_id;

-- Left Join: All customers, even those without orders
SELECT customers.name, COUNT(orders.order_id) as order_count
FROM customers
LEFT JOIN orders ON customers.id = orders.customer_id
GROUP BY customers.id;
```

### 2. DISTINCT & Aliases
Remove duplicates and make your queries more readable.

**What you'll learn:**
- `DISTINCT` - Remove duplicate rows from results
- Column aliases: `AS` for renaming columns
- Table aliases for shorter table references

**Example:**
```sql
-- Get unique cities (no duplicates)
SELECT DISTINCT city FROM customers;

-- Use aliases for clarity
SELECT 
  c.first_name AS 'Customer Name',
  SUM(o.amount) AS 'Total Spent'
FROM customers c
LEFT JOIN orders o ON c.id = o.customer_id
GROUP BY c.id;
```

---

## Phase 4: Intermediate Skills

### 1. String Functions
Manipulate and clean text data.

**What you'll learn:**
- `CONCAT()` - Join text together
- `UPPER()` - Convert to uppercase
- `LOWER()` - Convert to lowercase
- `SUBSTRING()` - Extract part of text
- `LENGTH()` - Count characters

**Example:**
```sql
-- Combine first and last name
SELECT CONCAT(first_name, ' ', last_name) as full_name 
FROM customers;

-- Extract area code from phone number
SELECT SUBSTRING(phone, 1, 3) as area_code FROM customers;

-- Standardize data
SELECT UPPER(city) FROM customers;
```

### 2. Date Functions
Critical for time-based analysis.

**What you'll learn:**
- `DATE()` - Extract date from datetime
- `DATEPART()` - Get specific parts (year, month, day)
- `DATEDIFF()` - Calculate days between dates
- `DATE_ADD()` / `DATE_SUB()` - Add or subtract dates

**Example:**
```sql
-- Get orders from this year
SELECT * FROM orders 
WHERE YEAR(order_date) = 2024;

-- Calculate days since last order
SELECT customer_id, DATEDIFF(NOW(), MAX(order_date)) as days_since_order
FROM orders
GROUP BY customer_id;

-- Orders in the last 30 days
SELECT * FROM orders 
WHERE order_date >= DATE_SUB(NOW(), INTERVAL 30 DAY);
```

### 3. CASE Statements
Add conditional logic to your queries.

**What you'll learn:**
- Creating IF-THEN-ELSE logic in SQL
- Categorizing data based on conditions
- Creating custom calculated columns

**Example:**
```sql
-- Categorize customers by spending
SELECT 
  customer_id,
  total_spent,
  CASE 
    WHEN total_spent > 1000 THEN 'Gold'
    WHEN total_spent > 500 THEN 'Silver'
    ELSE 'Bronze'
  END as customer_tier
FROM customers;
```

### 4. Subqueries
Use queries within queries for complex analysis.

**What you'll learn:**
- Nested queries in WHERE clause
- Nested queries in FROM clause
- Using subqueries for filtering and calculations

**Example:**
```sql
-- Find customers who spent more than average
SELECT * FROM customers
WHERE total_spent > (SELECT AVG(total_spent) FROM customers);

-- Find top-selling products with sales info
SELECT product_id, sales
FROM (
  SELECT product_id, SUM(quantity * price) as sales
  FROM order_items
  GROUP BY product_id
) as product_sales
ORDER BY sales DESC
LIMIT 10;
```

---

## Quick Start Recommendation

### Start with Phases 1 & 2
Master these first. You'll be able to do **80% of real data analysis work**:

✅ Write basic SELECT queries  
✅ Filter data with WHERE  
✅ Calculate summaries with aggregate functions  
✅ Group and analyze data  

### Then Move to Phase 3
Once you're comfortable, learn **JOINs**—this opens up working with multiple tables, which is essential for real data analysis.

### Advanced Later
Learn Phase 4 as you encounter specific analysis needs.

---

## Best Learning Tips

### 📌 Practice Immediately
- Write real queries from day 1
- Don't just read about SQL—type it out
- Make mistakes, they're part of learning

### 💻 Use Free Platforms
- **SQLite Online** (https://sqliteonline.com) - No installation needed
- **W3Schools SQL** (https://www.w3schools.com/sql) - Interactive tutorials
- **HackerRank** (https://www.hackerrank.com/domains/sql) - Practice challenges
- **Mode Analytics SQL Tutorial** (https://mode.com/sql-tutorial) - Great for data analysts

### 📊 Start with Small Datasets
- Use datasets you understand (sales, students, movies)
- Grow complexity gradually
- Sample databases are available online

### 🎯 Focus on Business Logic
- Understand WHAT question you're trying to answer
- Then figure out HOW to write the SQL
- Don't memorize syntax—understand concepts

### 🔄 Learn SQL Dialects Strategically
- Master core SQL first
- Differences between MySQL, PostgreSQL, SQL Server come later
- Core concepts apply everywhere

---

## Resources

### Beginner-Friendly Platforms
- SQLite Online (free, instant practice)
- W3Schools SQL Tutorial
- Khan Academy SQL Course
- Codecademy SQL Track

### Practice Datasets
- Sample Databases (AdventureWorks, Sakila)
- Kaggle Datasets
- GitHub SQL practice repositories

### Real-World Tools
- MySQL
- PostgreSQL
- SQL Server
- SQLite

---

## Next Steps

1. **This Week:** Master SELECT and WHERE clauses
2. **Next Week:** Learn ORDER BY, LIMIT, and aggregates
3. **Following Week:** Practice GROUP BY and HAVING
4. **Week 4:** Start learning JOINs
5. **Ongoing:** Mix practice with learning new concepts

---

## Remember

SQL is about **asking questions of your data**. The syntax is just the language you use. Focus on understanding the logic, and the syntax will follow naturally with practice.

**Happy learning! 🚀**

---

*Last Updated: July 2026*