# 🎯 SQL Phase 1: Core Foundations - 
## With Hands-On Learning, Visual Guides & Practice Exercises

---

# 🗄️ What is SQL?

## 📖 Definition

**SQL (Structured Query Language)** is a programming language used to **communicate with databases**.

It helps us **store, retrieve, update, and delete data** from a database.

> 💡 **Simple Definition:**  
> **SQL is a language that lets you talk to a database and ask it to perform tasks like showing, adding, updating, or deleting data.**

---

# 🔤 Full Form of SQL

**SQL** stands for:

**S** → Structured  
**Q** → Query  
**L** → Language

### What does it mean?

- **Structured** → Data is organized in tables.
- **Query** → A request or question you ask the database.
- **Language** → A way to communicate with the database.

---

# 📚 What is a Database?

A **database** is a place where information is stored in an organized way.

For example, a school database may contain:

- 👨‍🎓 Students
- 👨‍🏫 Teachers
- 📚 Books
- 💰 Fees
- 📝 Exams

Each type of information is stored in its own **table**.

---

# 📋 Example Table: Students

| Student_ID | Name | Age | City |
|------------|------|-----|--------|
| 101 | Rahul | 15 | Delhi |
| 102 | Priya | 16 | Mumbai |
| 103 | Aman | 14 | Jaipur |

---

# 💬 What Can SQL Do?

SQL allows you to:

- 👀 View data
- ➕ Add new data
- ✏️ Update existing data
- ❌ Delete data
- 🔍 Search for specific information
- 📊 Sort and organize data

---

# 📝 Example SQL Query

```sql
SELECT Name
FROM Students;
```

### 📊 Output

| Name |
|------|
| Rahul |
| Priya |
| Aman |

**Explanation:**

- `SELECT` → Show me the data.
- `Name` → I want the Name column.
- `FROM Students` → Get the data from the Students table.

---

# 🌍 Real-World Examples

### 🏫 School

Find all student names.

```sql
SELECT Name
FROM Students;
```

---

### 🏦 Bank

Show all customer names.

```sql
SELECT Customer_Name
FROM Customers;
```

---

### 🛒 Online Shopping

Show all product names.

```sql
SELECT Product_Name
FROM Products;
```

---

### 🏥 Hospital

Show all patient names.

```sql
SELECT Patient_Name
FROM Patients;
```

---

# 🎯 Why Do We Learn SQL?

SQL is used by:

- 💻 Software Developers
- 📊 Data Analysts
- 🤖 Data Scientists
- 🏢 Database Administrators (DBAs)
- 📈 Business Analysts

Almost every company that stores data uses SQL.

---

👦 **You say:**

> "Show me all student names."

🤖 **SQL understands your request and gets the information from the database.**

---

# 📝 Summary

| Term | Meaning |
|------|---------|
| SQL | Structured Query Language |
| Database | A collection of organized data |
| Table | Stores related information in rows and columns |
| Query | A request sent to the database |
| SELECT | Retrieves data from a table |

---

# 💡 Remember This

> **SQL is the language used to communicate with a database.**

Just like we use **English** to talk to people, we use **SQL** to talk to databases and ask them to store, retrieve, update, or delete information.

---

---

# 📌 Part 1: SELECT Statement

## What Does It Do?

SELECT tells SQL which data you want to see from a table.

The SELECT statement is used to read or display data from a database table.

It does not change the data. It only shows the information you request.

### Basic Formula

```sql
SELECT column_name 
FROM table_name;
```

### The Three Important Words

- **SELECT** = "I want to see..."
- **FROM** = "...from this table"
- **;** = "...done!" (semicolon ends the query)

---

## Example 1: Get Everything

```sql
SELECT * 
FROM students;
```

**Translation:** "Show me EVERYTHING from the students table"

- `*` = "all columns" (the asterisk means "everything")

**Output:**

```
id | name        | age | city
1  | Ali         | 20  | Delhi
2  | Priya       | 22  | Mumbai
3  | Raj         | 21  | Bangalore
```

---

## Example 2: Get Specific Columns

```sql
SELECT Name, Age 
FROM students;
```

**Translation:** "Show me only the NAME and AGE columns from students"

**Output:**

```
name    | age
Ali     | 20
Priya   | 22
Raj     | 21
```

---

## How SELECT Works

```
Database
    │
    ▼
Students Table
    │
    ▼
SELECT Name, Age
    │
    ▼
Returns only Name and Age
```

### 📊 Visual 1: How SELECT Works

This diagram shows you step-by-step how SQL SELECT picks columns from a table.

**Key Concepts:**
- Table on the left has all columns
- SELECT picks only the columns you need
- Result shows only selected columns

**Click on any part of the diagram to learn more!**

---
<img src="../images/select-diagram.png" width="1000">
---

# 📚 Real-World Example: Understanding `SELECT`

Imagine you have a **school database**.

Inside the database, there is a table called **Students**.

| ID | Name  | Age | City   |
|----|-------|-----|--------|
| 1  | Rahul | 15  | Delhi  |
| 2  | Priya | 16  | Mumbai |
| 3  | Aman  | 15  | Jaipur |

---

## 1️⃣ Show Only Student Names

If you only want to see the **Name** column, use:

```sql
SELECT Name
FROM Students;
```

### 📋 Output

| Name |
|------|
| Rahul |
| Priya |
| Aman |

**🧠 Easy Explanation**

- `SELECT Name` → Show only the **Name** column.
- `FROM Students` → Get the data from the **Students** table.

Think of it as saying:

> **"Show me only the student names."**

---

## 2️⃣ Show Student Names and Cities

If you want to see both the **Name** and **City** columns:

```sql
SELECT Name, City
FROM Students;
```

### 📋 Output

| Name | City |
|------|--------|
| Rahul | Delhi |
| Priya | Mumbai |
| Aman | Jaipur |

**🧠 Easy Explanation**

- `SELECT Name, City` → Show only the **Name** and **City** columns.
- `FROM Students` → Get the data from the **Students** table.

Think of it as saying:

> **"Show me the student names and the cities they live in."**

---

## 3️⃣ Show Every Piece of Information

If you want to see **all the information** stored in the table:

```sql
SELECT *
FROM Students;
```

### 📋 Output

| ID | Name | Age | City |
|----|------|-----|--------|
| 1 | Rahul | 15 | Delhi |
| 2 | Priya | 16 | Mumbai |
| 3 | Aman | 15 | Jaipur |

**🧠 Easy Explanation**

- `SELECT *` → Show **every column**.
- `FROM Students` → Get the data from the **Students** table.

The `*` (star) means:

> **"Show me everything."**

---

# 🎯 Quick Summary

| SQL Query | What It Does |
|-----------|--------------|
| `SELECT Name FROM Students;` | Shows only the **Name** column. |
| `SELECT Name, City FROM Students;` | Shows only the **Name** and **City** columns. |
| `SELECT * FROM Students;` | Shows **all columns** from the table. |

---

## 💡 Easy Way to Remember

```text
SELECT = Show me
FROM   = From this table
*      = Everything
```

So,

```sql
SELECT *
FROM Students;
```

Simply means:

> **"Show me everything from the Students table."**

---

# 🚫 Why Don't We Always Use `SELECT *`?

Using `SELECT *` tells SQL to return **every column** from a table.

While this is useful for learning or quickly viewing data, it is **not always the best choice**.

---

## 📚 Imagine This

Your **Students** table has **100 columns**.

You only want to know the student's **Name**.

If you write:

```sql
SELECT *
FROM Students;
```

SQL returns **everything**:

- 👤 Name
- 🎂 Age
- 🏠 Address
- 📞 Phone Number
- 👨‍👩‍👧 Parent Name
- 🩸 Blood Group
- 🎓 Roll Number
- 🏫 Class
- 📧 Email
- 📍 City
- ...and many more columns.

Most of this information is **not needed**.

---

## ✅ A Better Way

If you only need the student's name, ask for **only that column**.

```sql
SELECT Name
FROM Students;
```

### 📋 Output

| Name |
|------|
| Rahul |
| Priya |
| Aman |

---

## 💡 Why Is This Better?

- ⚡ Returns data faster.
- 📖 Makes the result easier to read.
- 💾 Uses fewer system resources.
- 🎯 Retrieves only the information you actually need.

> **Best Practice:** Instead of asking for everything (`*`), select only the columns you need.

---

# 🧠 How SQL Reads Your Query

Suppose you write:

```sql
SELECT Name, Age
FROM Students;
```

SQL reads the query step by step.

---

## Step 1️⃣: What do you want?

```text
SELECT Name, Age
```

SQL understands:

> **"The user wants the Name and Age columns."**

---

## Step 2️⃣: Where should I look?

```text
FROM Students
```

SQL understands:

> **"Look inside the Students table."**

---

## Step 3️⃣: Return the Result

After finding the requested columns, SQL displays them.

### 📋 Output

| Name | Age |
|------|-----|
| Rahul | 15 |
| Priya | 16 |
| Aman | 15 |

---

# 🔄 SQL Thinking Process

```text
                SQL Query
                    │
                    ▼
        SELECT Name, Age
                    │
                    ▼
      "I need the Name and Age columns."
                    │
                    ▼
          FROM Students
                    │
                    ▼
      "Look inside the Students table."
                    │
                    ▼
        Find the requested data
                    │
                    ▼
          Display the result
```

---

# 🎯 Easy Way to Remember

Think of SQL as a helpful librarian.

👦 **You ask:**

> "Please show me the Name and Age of all students."

📚 **The librarian thinks:**

1. 🤔 **What information do you want?**
   - Name and Age

2. 🔍 **Where should I look?**
   - Students table

3. ✅ **Here is the information you asked for.**

That's exactly how SQL processes every `SELECT` query.

---

# 📝 Summary

| Query | Meaning |
|-------|---------|
| `SELECT * FROM Students;` | Show **all columns** from the Students table. |
| `SELECT Name FROM Students;` | Show **only the Name** column. |
| `SELECT Name, Age FROM Students;` | Show **only the Name and Age** columns. |

> 💡 **Remember:** Ask SQL only for the data you need. It makes your queries faster, cleaner, and easier to understand.

---

---

# 🧮 PEMDAS in SQL

## 📖 What is PEMDAS?

**PEMDAS** is a rule that tells SQL (and mathematics) **the order in which calculations should be performed** when an expression contains multiple operators.

### 🔤 Full Form of PEMDAS

| Letter | Meaning |
|---------|---------|
| **P** | Parentheses `()` |
| **E** | Exponents (Powers) |
| **M** | Multiplication `*` |
| **D** | Division `/` |
| **A** | Addition `+` |
| **S** | Subtraction `-` |

> 💡 **Easy Tip:** SQL follows the same calculation rules that you learned in mathematics.

---

## 🧠 Order of Operations

SQL performs calculations in this order:

```text
1️⃣ Parentheses   ()
2️⃣ Exponents     ^
3️⃣ Multiplication *
4️⃣ Division      /
5️⃣ Addition      +
6️⃣ Subtraction   -
```

---

## 📌 Example

```sql
SELECT
    first_name,
    age,
    age + 10 * 2
FROM Students;
```

If a student's age is **15**, SQL calculates:

```text
15 + 10 × 2

Step 1:
10 × 2 = 20

Step 2:
15 + 20 = 35
```

**Result:** `35`

---

## 📌 Using Parentheses

```sql
SELECT
    first_name,
    age,
    (age + 10) * 2
FROM Students;
```

Now SQL calculates:

```text
(15 + 10) × 2

Step 1:
15 + 10 = 25

Step 2:
25 × 2 = 50
```

**Result:** `50`

---
<img src="../IMAGES/pemdas_calculations_guide.png" width="1000">
## 💡 Why is PEMDAS Important?

PEMDAS helps SQL perform calculations correctly.

Without following the correct order, the result could be different.

For example:

```text
15 + 10 × 2 = 35
```

is **not** the same as:

```text
(15 + 10) × 2 = 50
```

---

## 🎯 Easy Way to Remember

> **PEMDAS = The rule that tells SQL which calculation to do first.**

Think of it like following a recipe:

1. 🥣 Mix the ingredients (Parentheses)
2. 🍳 Cook them (Multiply/Divide)
3. 🍽️ Add the finishing touches (Add/Subtract)

#### Following the correct order gives you the correct result every time

---

# 📚 SQL Example: Using Calculations in `SELECT`

The `SELECT` statement can do more than just display data.

It can also perform **calculations** while retrieving data.

> **Note:** These calculations only affect the result shown on the screen. They **do not change** the original data stored in the database.

---

## 📋 Students Table

| student_id | first_name | last_name | age |
|------------|------------|-----------|-----|
| 101 | Rahul | Sharma | 15 |
| 102 | Priya | Verma | 16 |
| 103 | Aman | Singh | 14 |
| 104 | Neha | Patel | 17 |

---

# 📝 SQL Query

```sql
SELECT
    first_name,
    last_name,
    age,
    age + 10
FROM Students;
```

---

# 📊 Output

| first_name | last_name | age | age + 10 |
|------------|-----------|-----|----------|
| Rahul | Sharma | 15 | 25 |
| Priya | Verma | 16 | 26 |
| Aman | Singh | 14 | 24 |
| Neha | Patel | 17 | 27 |

---

# 🧠 How SQL Reads This Query

```sql
SELECT
    first_name,
    last_name,
    age,
    age + 10
FROM Students;
```

### Step 1️⃣: What do you want?

SQL reads:

```text
first_name
last_name
age
age + 10
```

It understands:

> **"Show the student's first name, last name, age, and also calculate age + 10."**

---

### Step 2️⃣: Where should I look?

```sql
FROM Students;
```

SQL understands:

> **"Find this information in the Students table."**

---

### Step 3️⃣: Display the Result

SQL calculates the new value and shows it in the result.

Example:

```text
Rahul's Age = 15

15 + 10 = 25
```

The result becomes:

| first_name | age | age + 10 |
|------------|-----|----------|
| Rahul | 15 | 25 |

---

# 💡 Important Note

The query

```sql
SELECT age + 10
FROM Students;
```

**does NOT update the age in the database.**

It only performs a calculation while displaying the result.

For example:

```text
Database Value

Age = 15
```

After running the query:

```sql
SELECT age + 10
FROM Students;
```

The output is:

```text
25
```

But the value stored in the database is still:

```text
Age = 15
```

---

# 📖 Easy Explanation

Think of it like a calculator.

If your age is **15** and someone asks:

> **"What will your age be after adding 10 years?"**

You answer:

```text
15 + 10 = 25
```

Your actual age **does not become 25**.

You only **calculated** it.

SQL works exactly the same way.

---

# 🎯 Key Points

- ✅ `SELECT` retrieves data from a table.
- ✅ You can perform calculations inside `SELECT`.
- ✅ `FROM` tells SQL which table to read.
- ✅ The original data is **never changed** by a `SELECT` query.
- ✅ Calculated values exist only in the query result.

---

# 📝 Summary

| SQL Statement | Meaning |
|---------------|---------|
| `SELECT first_name` | Show the first name. |
| `SELECT age` | Show the current age. |
| `SELECT age + 10` | Display the age after adding 10 (calculated value). |
| `FROM Students` | Read the data from the Students table. |

> 💡 **Remember:** `SELECT` can display both stored data and calculated values, but it never changes the original data.

---

---

# 🔹 DISTINCT in SQL

## 📖 What is `DISTINCT`?

The **`DISTINCT`** keyword is used to **remove duplicate (repeated) values** from the result of a `SELECT` query.

It shows **only unique values** and hides any repeated values.

> 💡 **Simple Definition:**  
> **`DISTINCT` is used to display only unique (non-duplicate) values from a column.**

---

# 🧠 Easy Explanation

Imagine your teacher asks:

> **"Tell me the names of all the cities where students live."**

If many students live in the same city, you don't want to hear the city name again and again.

Instead, you want each city **only once**.

That's exactly what `DISTINCT` does!

---

# 📋 Example Table: Students

| Student_ID | Name | City |
|------------|------|--------|
| 101 | Rahul | Delhi |
| 102 | Priya | Mumbai |
| 103 | Aman | Delhi |
| 104 | Neha | Jaipur |
| 105 | Rohan | Mumbai |
| 106 | Simran | Delhi |

---

# ❌ Without `DISTINCT`

```sql
SELECT City
FROM Students;
```

### 📊 Output

| City |
|--------|
| Delhi |
| Mumbai |
| Delhi |
| Jaipur |
| Mumbai |
| Delhi |

Notice that **Delhi** and **Mumbai** appear multiple times.

---

# ✅ With `DISTINCT`

```sql
SELECT DISTINCT City
FROM Students;
```

### 📊 Output

| City |
|--------|
| Delhi |
| Mumbai |
| Jaipur |

Now, each city appears **only once**.

---

# 🧠 How SQL Reads This Query

```sql
SELECT DISTINCT City
FROM Students;
```

### Step 1️⃣: What do you want?

```text
DISTINCT City
```

SQL understands:

> **"Show only unique city names."**

---

### Step 2️⃣: Where should I look?

```sql
FROM Students;
```

SQL understands:

> **"Look inside the Students table."**

---

### Step 3️⃣: Remove Duplicate Values

SQL checks every city.

```text
Delhi
Mumbai
Delhi ❌ (Already shown)
Jaipur
Mumbai ❌ (Already shown)
Delhi ❌ (Already shown)
```

---

### Step 4️⃣: Display the Result

```text
Delhi
Mumbai
Jaipur
```

---

# 📌 Using DISTINCT with Multiple Columns

You can also use `DISTINCT` with more than one column.

```sql
SELECT DISTINCT City, Name
FROM Students;
```

In this case, SQL removes **duplicate combinations** of **City** and **Name**.

---
<img src="../IMAGES/distinct_visual_guide.png" width="700">
# 🎯 Real-World Example

Imagine a shopping website.

Many customers order products from the same city.

If you want to know **which cities have customers**, you can write:

```sql
SELECT DISTINCT City
FROM Customers;
```

Result:

```text
Delhi
Mumbai
Jaipur
Pune
```

Each city appears only once.

---

# 💡 Why Do We Use `DISTINCT`?

- ✅ Removes duplicate values.
- ✅ Shows only unique data.
- ✅ Makes reports cleaner.
- ✅ Helps in data analysis.

---

# 📝 Summary

| Query | Meaning |
|-------|---------|
| `SELECT City FROM Students;` | Shows all city names, including duplicates. |
| `SELECT DISTINCT City FROM Students;` | Shows only unique city names. |

---

# 🧠 Easy Way to Remember

```text
SELECT = Show me

DISTINCT = Only unique values

FROM = From this table
```

Example:

```sql
SELECT DISTINCT City
FROM Students;
```

Simply means:

> **"Show me only the unique city names from the Students table."**

---

---

# 🏷️ Column Alias (`AS`) in SQL

## 📖 What is a Column Alias?

A **Column Alias** is a **temporary name** given to a column in the result of a SQL query.

It helps make the column heading **more meaningful and easier to read**.

> 💡 **Simple Definition:**  
> A **Column Alias** is a temporary name used to display a column with a different heading in the query result.

---

# 📝 Syntax

```sql
SELECT column_name AS alias_name
FROM table_name;
```

---

# 📋 Example Table: Customers

| customer_id | first_name | last_name | email |
|-------------|------------|-----------|------------------|
| 101 | John | Doe | john@gmail.com |
| 102 | Sarah | Smith | sarah@gmail.com |

---

# ❌ Without Alias

```sql
SELECT first_name, last_name
FROM Customers;
```

### 📊 Output

| first_name | last_name |
|------------|-----------|
| John | Doe |
| Sarah | Smith |

---

# ✅ With Alias

```sql
SELECT
    first_name AS "First Name",
    last_name AS "Last Name"
FROM Customers;
```

### 📊 Output

| First Name | Last Name |
|------------|-----------|
| John | Doe |
| Sarah | Smith |

Notice that **only the column headings have changed**. The data remains the same.

---

# 🧠 How SQL Reads This Query

```sql
SELECT
    first_name AS "First Name",
    last_name AS "Last Name"
FROM Customers;
```

### Step 1️⃣: What do you want?

SQL reads:

```text
first_name
last_name
```

### Step 2️⃣: Rename the Columns

```text
first_name → First Name
last_name  → Last Name
```

### Step 3️⃣: Display the Result

SQL shows the data using the new column headings.

---
<img src="../IMAGES/column_alias_as_guide.png" width="1000">

# 💡 Why Use Column Aliases?

- ✅ Makes column names easier to understand.
- ✅ Gives meaningful headings in reports.
- ✅ Makes query results cleaner and more professional.

---

# ⚠️ Important

A column alias **does not change the original column name** in the database.

It only changes the **heading displayed** in the query result.

For example:

```sql
SELECT first_name AS "First Name"
FROM Customers;
```

The database column is still:

```text
first_name
```

Only the output displays:

```text
First Name
```

---

# 🎯 Easy Way to Remember

```text
AS = Give a Temporary Name
```

Example:

```text
first_name
      │
      ▼
 First Name
```
---

# 📝 Summary

| SQL Statement | Meaning |
|---------------|---------|
| `SELECT first_name FROM Customers;` | Displays the original column name. |
| `SELECT first_name AS "First Name" FROM Customers;` | Displays the column with a temporary heading. |

> 💡 **Remember:** `AS` is used to give a column a **temporary, user-friendly name** in the query result. It **does not** change the actual column name in the database.

---
# PRACTICE SHEET 👇👇
```

👉  PRACTICESHEETS\CHAPTER-1\SHEET1.MD

```
# 🎯 KEY CONCEPTS SUMMARY

## What You've Learned in Phase 1

| Concept | What It Does | Example |
|---------|-------------|---------|
| **SELECT** | Shows data from table | `SELECT name FROM students;` |
| **SELECT \*** | Shows all columns | `SELECT * FROM students;` |
| **SELECT columns** | Shows specific columns | `SELECT name, age FROM students;` |
| **DISTINCT** | Removes duplicates | `SELECT DISTINCT city FROM students;` |
| **AS** | Renames column heading | `SELECT name AS "Full Name"` |
| **Calculations** | Performs math on data | `SELECT salary * 1.15 FROM employees;` |
| **PEMDAS** | Order of operations | `(salary + 5000) * 10` |
| **FROM** | Specifies table | `FROM employees;` |
| **;** | Ends query | Required at end |

---

## 💡 Remember These Key Points:

1. ✅ **SELECT picks columns** - Use SELECT to choose what data you want
2. ✅ **FROM specifies table** - Tell SQL which table to read
3. ✅ **DISTINCT removes duplicates** - Use for unique values only
4. ✅ **AS creates aliases** - Temporary names for columns (doesn't change database)
5. ✅ **Calculations don't change data** - SELECT calculations only affect display
6. ✅ **Use parentheses** - Control order of operations with ()
7. ✅ **Be specific with SELECT** - Choose only columns you need, not SELECT *
8. ✅ **Always end with ;** - Semicolon marks end of query

---

## 🚀 Ready for Phase 2?

Once you've mastered these concepts and completed the practice exercises:

- You understand SELECT and how to pick columns
- You can use DISTINCT to find unique values
- You can rename columns with AS
- You can do basic calculations
- You understand PEMDAS and order of operations

**Next Phase Topics:**
- WHERE clause (filtering data)
- Comparison operators (=, >, <, etc.)
- Logical operators (AND, OR, NOT)
- ORDER BY (sorting results)
- LIMIT (limiting results)

---

# 🎓 Final Checklist

Before moving to Phase 2, make sure you can:

- [ ] Write a SELECT query picking specific columns
- [ ] Understand the difference between SELECT * and SELECT columns
- [ ] Use DISTINCT to find unique values
- [ ] Create column aliases with AS
- [ ] Perform basic calculations (addition, subtraction, multiplication, division)
- [ ] Understand PEMDAS order of operations
- [ ] Explain why SELECT doesn't change database data
- [ ] Write queries with proper syntax (SELECT, FROM, ;)
- [ ] Complete most of the practice exercises

**If you can do all these → You're ready for Phase 2! 🎉**

---

# 🎯 HANDS-ON PRACTICE SECTION

## Learn by Doing - Practice Exercises

This section contains practical exercises you can try on your own using a SQL platform.

### 📌 Setup Instructions

Before you start, you need a SQL environment. Choose one:

1. **SQLite Online** (No installation needed)
   - Go to: https://sqliteonline.com
   - Click "Create" → Select "SQLite"
   - Ready to use!

2. **W3Schools SQL Tutorial** (Interactive)
   - Go to: https://www.w3schools.com/sql/
   - Has built-in editor to test queries

3. **Your Local Computer** (If you have SQL installed)
   - Use any SQL client

---