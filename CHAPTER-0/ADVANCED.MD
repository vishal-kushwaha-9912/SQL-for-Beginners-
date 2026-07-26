# Complete SQL Learning Guide for Beginners

## Simple Guide - Learn from Zero! 🎓


## 📌 Before You Start - What You Need to Know

Yes! I can teach you from **absolute zero**. Looking at your notes, they cover the basic SQL commands:

- ✅ CREATE DATABASE
- ✅ USE DATABASE
- ✅ CREATE TABLE
- ✅ INSERT
- ✅ SELECT
- ✅ UPDATE

I'll explain them in the exact order you should learn them.

---

# 🗺️ MySQL Learning Roadmap (Beginner)

```
1. Install MySQL
        ↓
2. Open MySQL Workbench
        ↓
3. Create Database
        ↓
4. Use Database
        ↓
5. Create Table
        ↓
6. Insert Data
        ↓
7. View Data
        ↓
8. Update Data
        ↓
9. Delete Data
```

---

# 🛠️ Part 0 — Tools You Will Use

## What is MySQL?

MySQL is like a **smart filing cabinet** that stores information. It remembers everything perfectly.

## What is MySQL Workbench?

Think of it as the **remote control** for MySQL. This is where you write commands and MySQL listens.

### How to Get It:

1. Download MySQL from the internet (free!)
2. Install it on your computer
3. Open **MySQL Workbench** (it looks like a program with a lightning bolt 🔌)

### What You'll See:

```
┌─────────────────────────────────────────┐
│  MySQL Workbench (The Control Room)     │
├─────────────────────────────────────────┤
│                                         │
│  Top: 📁 File  📝 Edit  🔧 Tools       │
│                                         │
│  Middle: [Empty white box]              │
│          (This is where you TYPE)       │
│                                         │
│  Bottom: [Results will show here]       │
│                                         │
└─────────────────────────────────────────┘
```

---

# ⌨️ How to Type and Run Commands

## Step 1️⃣ - Open the Query Box

1. Open **MySQL Workbench**
2. You'll see a **white box** in the middle (this is like a piece of paper)
3. Click inside it and start typing your commands

## Step 2️⃣ - Type Your Command

Example:

```sql
CREATE DATABASE CollegeDB;
```

Type this exactly (copy-paste is easiest).

## Step 3️⃣ - Run the Command

### Method 1: Keyboard Shortcut (Easiest! ⚡)

**Windows:** Press `Ctrl + Enter`

**Mac:** Press `Cmd + Enter`

This sends your command to MySQL. MySQL reads it and does what you asked.

### Method 2: Click the Button

Look for a button that looks like a **▶️ Play Button** (lightning bolt icon) in the toolbar.
Click it to run your command.

### Method 3: Right Click

Right-click on your command and select "Execute" from the menu.

---

# 🎯 What Happens After You Run a Command?

## ✅ Success (Green checkmark)

```
Query OK, 1 row affected (0.05 sec)
```

This means it worked!

## ❌ Error (Red text)

```
Error 1007: Can't create database 'CollegeDB'; database exists
```

This means something went wrong. Read the error message to fix it.

---

# 📚 PART 1 — What is a Database?

Think of it like this:

```
School (This is the DATABASE)
│
├── Students (Table)
├── Teachers (Table)
├── Fees (Table)
└── Library (Table)
```

The **School** is the **Database**.

Inside it are many **Tables**.

Each **Table** is like a notebook with rows and columns.

---

# 📝 PART 2 — Create a Database

### What Does This Do?

Creates a new empty folder to store your data.

### The Command:

```sql
CREATE DATABASE CollegeDB;
```

### Important! ⚠️

- The name is `CollegeDB`
- It ends with `;` (semicolon) — this means "finish the command"
- Spaces don't matter, but be careful with UPPERCASE and lowercase

### How to Run It:

1. Click in the white box
2. Type the command above
3. Press `Ctrl + Enter` (Windows) or `Cmd + Enter` (Mac)

### What You'll See:

```
Query OK, 1 row affected (0.05 sec)
```

This means your database was created! ✅

---

# 🎯 PART 3 — Use the Database

### What Does This Do?

Tells MySQL: "Hey, I want to work INSIDE CollegeDB now."

Think of it like opening a specific folder on your computer.

### The Command:

```sql
USE CollegeDB;
```

### How to Run It:

1. Type it in the white box
2. Press `Ctrl + Enter`

### What You'll See:

```
Query OK, 0 rows affected (0.01 sec)
```

Now every table you create will go INSIDE CollegeDB.

---

# 📊 PART 4 — Create Your First Table

### What is a Table?

A table is like an **Excel spreadsheet** or a **notebook page**.

It has **columns** (top) and **rows** (left to right).

### Example Table:

| RollNo | Name | Class  | City   |
| ------ | ---- | ------ | ------ |
| 1      | Amit | B.Tech | Meerut |
| 2      | Neha | BCA    | Delhi  |

- **RollNo** = A number
- **Name** = A person's name (text)
- **Class** = What course they're in (text)
- **City** = Where they live (text)

### The Command:

```sql
CREATE TABLE Student (
    RollNo INT,
    Name VARCHAR(50),
    Class VARCHAR(20),
    City VARCHAR(30)
);
```

### What Does Each Line Mean?

```
RollNo INT
```

- `RollNo` = Column name
- `INT` = Integer (a whole number, no decimals)
- Examples: 1, 2, 3, 100, 500

---

```
Name VARCHAR(50)
```

- `Name` = Column name
- `VARCHAR(50)` = Text, maximum 50 letters
- Examples: "Rahul", "Vishal", "Neha"

---

```
Class VARCHAR(20)
```

- `Class` = Column name
- `VARCHAR(20)` = Text, maximum 20 letters
- Examples: "B.Tech", "BCA", "MCA"

---

```
City VARCHAR(30)
```

- `City` = Column name
- `VARCHAR(30)` = Text, maximum 30 letters
- Examples: "Delhi", "Noida", "Meerut"

### How to Run It:

```
1. Click in the white box
2. Copy and paste the entire CREATE TABLE command
3. Press Ctrl + Enter
```

### What You'll See:

```
Query OK, 0 rows affected (0.05 sec)
```

Your table is ready! But it has **no data yet**. ✅

---

# 🔑 PART 4.5 — PRIMARY KEY & AUTO_INCREMENT (Important!)

### What is a PRIMARY KEY?

A PRIMARY KEY is a **special column** that:

- Makes each row **unique** (no duplicates)
- Helps MySQL find data faster
- **BEST PRACTICE:** Always use a PRIMARY KEY

### What is AUTO_INCREMENT?

AUTO_INCREMENT means MySQL **automatically numbers** each row for you.

- First student = 1
- Second student = 2
- Third student = 3
- You don't have to type the numbers!

### Better CREATE TABLE Command:

```sql
CREATE TABLE Student (
    RollNo INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Class VARCHAR(20),
    City VARCHAR(30)
);
```

### What Changed?

- `INT PRIMARY KEY AUTO_INCREMENT` = RollNo is unique, numbered automatically

### Now When You Insert Data:

```sql
INSERT INTO Student (Name, Class, City)
VALUES ('Amit Sharma', 'B.Tech', 'Meerut');
```

Notice: **NO RollNo!** MySQL adds it automatically.

### Result:

| RollNo | Name        | Class  | City   |
| ------ | ----------- | ------ | ------ |
| 1      | Amit Sharma | B.Tech | Meerut |

RollNo was **auto-filled by MySQL**! ✅

### Why Use It?

- No mistakes (no duplicate RollNo)
- Faster (you type less)
- Professional (real databases always do this)

---

# 🛡️ PART 4.6 — Constraints: NOT NULL & UNIQUE

### What are Constraints?

Constraints are **rules** that protect your data.

They say: "This data MUST follow these rules."

### NOT NULL Constraint

**What Does It Do?**
Makes a column **required** — you can't leave it empty.

**Example:**

```sql
CREATE TABLE Student (
    RollNo INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL,
    Class VARCHAR(20) NOT NULL,
    City VARCHAR(30)
);
```

**What This Means:**

- **Name** cannot be empty (you MUST add a name)
- **Class** cannot be empty (you MUST add a class)
- **City** CAN be empty (optional)

**If You Try This (It Will Fail!):**

```sql
INSERT INTO Student (RollNo, Class, City)
VALUES (1, 'B.Tech', 'Meerut');
```

Error! Name is NOT NULL, but you didn't provide one.

**Correct Way:**

```sql
INSERT INTO Student (Name, Class, City)
VALUES ('Amit', 'B.Tech', 'Meerut');
```

Works! ✅

---

### UNIQUE Constraint

**What Does It Do?**
Makes sure **no two rows have the same value** in that column.

**Example:**

```sql
CREATE TABLE Student (
    RollNo INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(50) UNIQUE,
    City VARCHAR(30)
);
```

**What This Means:**

- Each student must have a **different email**
- Two students can't have the same email

**If You Try This (It Will Fail!):**

```sql
INSERT INTO Student (Name, Email, City)
VALUES ('Amit', 'amit@gmail.com', 'Meerut');

INSERT INTO Student (Name, Email, City)
VALUES ('Neha', 'amit@gmail.com', 'Delhi');
```

Error! Email `amit@gmail.com` is already used.

**Correct Way:**

```sql
INSERT INTO Student (Name, Email, City)
VALUES ('Amit', 'amit@gmail.com', 'Meerut');

INSERT INTO Student (Name, Email, City)
VALUES ('Neha', 'neha@gmail.com', 'Delhi');
```

Works! ✅

---

### Combining Constraints

```sql
CREATE TABLE Student (
    RollNo INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(50) UNIQUE NOT NULL,
    Phone VARCHAR(10) UNIQUE,
    Class VARCHAR(20) NOT NULL,
    City VARCHAR(30)
);
```

**Rules Here:**

- **RollNo:** Auto-numbered, unique, required
- **Name:** Required (can't be empty)
- **Email:** Required, unique (everyone has different email)
- **Phone:** Optional, but if provided, must be unique
- **Class:** Required
- **City:** Optional

---

# ➕ PART 5 — Insert Data (Add One Student)

### What Does This Do?

Adds a row to your table.

Think of it like writing a new line in a notebook.

### The Command:

```sql
INSERT INTO Student
(RollNo, Name, Class, City)
VALUES
(1, 'Amit Sharma', 'B.Tech', 'Meerut');
```

### What Does This Mean?

- `INSERT INTO Student` = Add data to the Student table
- `(RollNo, Name, Class, City)` = These are the columns we're filling
- `VALUES` = Here comes the data
- `(1, 'Amit Sharma', 'B.Tech', 'Meerut')` = The actual data

### Important Tips! 💡

- **Numbers** don't have quotes: `1`
- **Text** always has single quotes: `'Amit Sharma'`
- Each line ends with a semicolon `;`

### How to Run It:

```
1. Type the command
2. Press Ctrl + Enter
```

### What You'll See:

```
Query OK, 1 row affected (0.02 sec)
```

One student added! ✅

---

## Add Another Student

```sql
INSERT INTO Student
(RollNo, Name, Class, City)
VALUES
(2, 'Neha Verma', 'BCA', 'Delhi');
```

---

## Add Multiple Students at Once (Faster!)

```sql
INSERT INTO Student
(RollNo, Name, Class, City)
VALUES
(3, 'Rahul', 'BCA', 'Noida'),
(4, 'Priya', 'MCA', 'Delhi'),
(5, 'Rohan', 'B.Tech', 'Lucknow');
```

### What's Different?

- Instead of one row, we have 3 rows
- Each row is separated by a comma `,`
- The last row ends with a semicolon `;`

### Result in Your Table:

| RollNo | Name  | Class  | City    |
| ------ | ----- | ------ | ------- |
| 1      | Amit  | B.Tech | Meerut  |
| 2      | Neha  | BCA    | Delhi   |
| 3      | Rahul | BCA    | Noida   |
| 4      | Priya | MCA    | Delhi   |
| 5      | Rohan | B.Tech | Lucknow |

---

# 👀 PART 6 — View Data (Look at What You Added)

### What Does This Do?

Shows you the data in your table.

### See Everything:

```sql
SELECT * FROM Student;
```

- `SELECT *` = Get everything
- `FROM Student` = From the Student table

### What You'll See:

| RollNo | Name | Class  | City   |
| ------ | ---- | ------ | ------ |
| 1      | Amit | B.Tech | Meerut |
| 2      | Neha | BCA    | Delhi  |

---

### See Only Names:

```sql
SELECT Name
FROM Student;
```

Result:

```
Name
--------
Amit
Neha
Rahul
Priya
Rohan
```

---

### See Only Name and City:

```sql
SELECT Name, City
FROM Student;
```

Result:

```
Name     City
-------- --------
Amit     Meerut
Neha     Delhi
Rahul    Noida
Priya    Delhi
Rohan    Lucknow
```

---

# 🎯 PART 6.5 — DISTINCT Keyword (Remove Duplicates)

### What Does This Do?

Shows only **unique values** — removes duplicates.

### Example: How Many Different Cities?

Without DISTINCT:

```sql
SELECT City FROM Student;
```

Result:

```
City
--------
Meerut
Delhi
Noida
Delhi     ← Duplicate!
Lucknow
```

With DISTINCT:

```sql
SELECT DISTINCT City FROM Student;
```

Result:

```
City
--------
Delhi
Lucknow
Meerut
Noida
```

Only 4 different cities (Delhi appears once, not twice)! ✅

### Another Example:

```sql
SELECT DISTINCT Class FROM Student;
```

Result:

```
Class
--------
B.Tech
BCA
MCA
```

Only 3 different classes.

---

# 📏 PART 6.6 — LIMIT Clause (Show Only First Few Rows)

### What Does This Do?

Shows only the **first N rows** — useful for testing with large datasets.

### Show First 3 Students:

```sql
SELECT * FROM Student LIMIT 3;
```

Result:

```
RollNo | Name  | Class  | City
-------|-------|--------|------
1      | Amit  | B.Tech | Meerut
2      | Neha  | BCA    | Delhi
3      | Rahul | BCA    | Noida
```

Only 3 rows shown! ✅

### Show First 1 Student:

```sql
SELECT * FROM Student LIMIT 1;
```

Result:

```
RollNo | Name | Class  | City
-------|------|--------|------
1      | Amit | B.Tech | Meerut
```

### Why Use LIMIT?

- **Testing:** See a sample before showing 1 million rows
- **Speed:** Fast results instead of waiting
- **Reports:** "Show top 10 students"

---

# 🔍 PART 7 — Find Specific Students (WHERE)

### What Does This Do?

Shows only the students that match what you're looking for.

### Find All Students from Delhi:

```sql
SELECT *
FROM Student
WHERE City='Delhi';
```

Result:

```
RollNo | Name  | Class | City
-------|-------|-------|------
2      | Neha  | BCA   | Delhi
4      | Priya | MCA   | Delhi
```

---

### Find All Students in BCA:

```sql
SELECT *
FROM Student
WHERE Class='BCA';
```

Result:

```
RollNo | Name  | Class | City
-------|-------|-------|------
2      | Neha  | BCA   | Delhi
3      | Rahul | BCA   | Noida
```

---

# 📊 PART 7.5 — More WHERE Operators (Comparisons)

### What Are Operators?

Operators are **comparison symbols** that let you ask more questions.

### Greater Than (>) and Less Than (<)

**Find Students with RollNo Greater Than 2:**

```sql
SELECT * FROM Student
WHERE RollNo > 2;
```

Result:

```
RollNo | Name  | Class  | City
-------|-------|--------|------
3      | Rahul | BCA    | Noida
4      | Priya | MCA    | Delhi
5      | Rohan | B.Tech | Lucknow
```

**Find Students with RollNo Less Than 3:**

```sql
SELECT * FROM Student
WHERE RollNo < 3;
```

Result:

```
RollNo | Name | Class  | City
-------|------|--------|------
1      | Amit | B.Tech | Meerut
2      | Neha | BCA    | Delhi
```

---

### Greater Than or Equal (>=) and Less Than or Equal (<=)

```sql
SELECT * FROM Student
WHERE RollNo >= 3;
```

Result: RollNo 3, 4, 5 (includes 3)

```sql
SELECT * FROM Student
WHERE RollNo <= 2;
```

Result: RollNo 1, 2 (includes 2)

---

### Not Equal (!=)

**Find Students NOT from Delhi:**

```sql
SELECT * FROM Student
WHERE City != 'Delhi';
```

Result:

```
RollNo | Name  | Class  | City
-------|-------|--------|------
1      | Amit  | B.Tech | Meerut
3      | Rahul | BCA    | Noida
5      | Rohan | B.Tech | Lucknow
```

---

### BETWEEN (Range)

**Find Students with RollNo Between 2 and 4:**

```sql
SELECT * FROM Student
WHERE RollNo BETWEEN 2 AND 4;
```

Result:

```
RollNo | Name  | Class | City
-------|-------|-------|------
2      | Neha  | BCA   | Delhi
3      | Rahul | BCA   | Noida
4      | Priya | MCA   | Delhi
```

Includes 2 and 4! ✅

---

### IN Operator (Multiple Values)

**Find Students from Delhi OR Noida OR Meerut:**

Instead of:

```sql
SELECT * FROM Student
WHERE City = 'Delhi'
OR City = 'Noida'
OR City = 'Meerut';
```

Better way:

```sql
SELECT * FROM Student
WHERE City IN ('Delhi', 'Noida', 'Meerut');
```

Result:

```
RollNo | Name  | Class  | City
-------|-------|--------|------
1      | Amit  | B.Tech | Meerut
2      | Neha  | BCA    | Delhi
3      | Rahul | BCA    | Noida
4      | Priya | MCA    | Delhi
```

Much cleaner! ✅

---

### LIKE Operator (Pattern Matching)

**Find Students Whose Name Starts with 'A':**

```sql
SELECT * FROM Student
WHERE Name LIKE 'A%';
```

Result:

```
RollNo | Name | Class  | City
-------|------|--------|------
1      | Amit | B.Tech | Meerut
```

**Symbols:**

- `%` = Anything (0 or more letters)
- `_` = Exactly one letter

**More Examples:**

Find names ending with 'u':

```sql
SELECT * FROM Student
WHERE Name LIKE '%u';
```

Find names with 'ha' anywhere:

```sql
SELECT * FROM Student
WHERE Name LIKE '%ha%';
```

Result: "Rahul", "Amit Sharma"

Find names with exactly 5 letters:

```sql
SELECT * FROM Student
WHERE Name LIKE '_____';
```

---

# 📋 PART 8 — ORDER BY Clause (Sort Your Results)

### What Does This Do?

Sorts results **A to Z** or **1 to 10** (or reverse).

### Sort by Name (A to Z):

```sql
SELECT * FROM Student
ORDER BY Name;
```

Result:

```
RollNo | Name  | Class  | City
-------|-------|--------|------
1      | Amit  | B.Tech | Meerut
4      | Priya | MCA    | Delhi
3      | Rahul | BCA    | Noida
5      | Rohan | B.Tech | Lucknow
2      | Neha  | BCA    | Delhi
```

Alphabetical order! ✅

### Sort by RollNo (Smallest to Largest):

```sql
SELECT * FROM Student
ORDER BY RollNo;
```

Result: RollNo 1, 2, 3, 4, 5

### Sort Reverse (Z to A, Largest to Smallest):

```sql
SELECT * FROM Student
ORDER BY Name DESC;
```

`DESC` = Descending (reverse order)

Result:

```
RollNo | Name  | Class  | City
-------|-------|--------|------
5      | Rohan | B.Tech | Lucknow
3      | Rahul | BCA    | Noida
4      | Priya | MCA    | Delhi
2      | Neha  | BCA    | Delhi
1      | Amit  | B.Tech | Meerut
```

Reverse alphabetical! ✅

### Sort by Multiple Columns:

```sql
SELECT * FROM Student
ORDER BY Class, Name;
```

Sorts by **Class first**, then by **Name** within each class.

Result:

```
RollNo | Name  | Class  | City
-------|-------|--------|------
2      | Neha  | BCA    | Delhi
3      | Rahul | BCA    | Noida
1      | Amit  | B.Tech | Meerut
5      | Rohan | B.Tech | Lucknow
4      | Priya | MCA    | Delhi
```

All BCA students first (sorted by name), then B.Tech (sorted by name), then MCA.

---

# ✏️ PART 9 — Update Data (Change Information)

### What Does This Do?

Changes data that already exists.

Suppose **Amit moved from Meerut to Noida**.

### The Command:

```sql
UPDATE Student
SET City='Noida'
WHERE RollNo=1;
```

### What Does This Mean?

- `UPDATE Student` = Change data in the Student table
- `SET City='Noida'` = Change the City to Noida
- `WHERE RollNo=1` = Only for the student with RollNo 1 (Amit)

### Result:

| RollNo | Name | City  |
| ------ | ---- | ----- |
| 1      | Amit | Noida |

**Before:** Meerut → **After:** Noida ✅

---

### Change Class for Neha:

```sql
UPDATE Student
SET Class='MCA'
WHERE Name='Neha Verma';
```

This changes Neha's class from BCA to MCA.

---

### Change Two Things at Once:

```sql
UPDATE Student
SET
Class='BCA',
City='Ghaziabad'
WHERE RollNo=2;
```

This changes both Class AND City for student with RollNo=2.

Note: Use a comma `,` between multiple changes.

---

### Change Everyone from One City to Another:

```sql
UPDATE Student
SET City='Delhi'
WHERE City='Noida';
```

This finds everyone from Noida and changes their city to Delhi.

---

### ⚠️ Change Everyone (Be Very Careful!)

```sql
UPDATE Student
SET Class='B.Tech';
```

**WARNING:** If you don't use `WHERE`, EVERY STUDENT'S class will change to B.Tech!

Always use `WHERE` unless you really want to change everything.

---

# 🗑️ PART 10 — Delete Data (Remove Information)

### What Does This Do?

Removes a row from your table.

### Delete One Student:

```sql
DELETE FROM Student
WHERE RollNo=2;
```

This deletes the student with RollNo 2 (Neha).

### What Happens:

**Before:**
| RollNo | Name |
| 1 | Amit |
| 2 | Neha |
| 3 | Rahul |

**After:**
| RollNo | Name |
| 1 | Amit |
| 3 | Rahul |

Neha is gone! ❌

---

### Delete Everyone (⚠️ DANGER!)

```sql
DELETE FROM Student;
```

**WARNING:** This deletes EVERY row! Your table becomes empty!

Always use `WHERE` unless you want to delete everything.

---

# 🔧 PART 11 — See Table Structure

### What Does This Do?

Shows you the columns, data types, and other info about your table.

### The Command:

```sql
DESC Student;
```

or

```sql
DESCRIBE Student;
```

### What You'll See:

| Field  | Type        | Null | Key |
| ------ | ----------- | ---- | --- |
| RollNo | INT         | YES  |     |
| Name   | VARCHAR(50) | YES  |     |
| Class  | VARCHAR(20) | YES  |     |
| City   | VARCHAR(30) | YES  |     |

This shows:

- Column names
- Data types (INT, VARCHAR)
- Whether NULL is allowed

---

# 📊 PART 12 — More Data Types (Not Just INT & VARCHAR)

### What Are Data Types?

Data types tell MySQL **what kind of information** goes in each column.

### Common Data Types:

| Data Type    | Example             | What It Stores                         |
| ------------ | ------------------- | -------------------------------------- |
| INT          | 100, -50, 0         | Whole numbers                          |
| DECIMAL(5,2) | 123.45              | Numbers with decimals (prices, scores) |
| VARCHAR(50)  | "Hello", "Amit"     | Text (up to 50 letters)                |
| TEXT         | Long paragraphs     | Long text (books, articles)            |
| DATE         | 2024-07-27          | Dates only (YYYY-MM-DD)                |
| DATETIME     | 2024-07-27 14:30:00 | Date AND time                          |
| BOOLEAN      | TRUE, FALSE         | Yes/No, True/False                     |

---

### Example: Create Table with Different Data Types

```sql
CREATE TABLE StudentAdvanced (
    RollNo INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(50) UNIQUE NOT NULL,
    Age INT,
    Marks DECIMAL(5,2),
    JoinDate DATE,
    IsActive BOOLEAN,
    Bio TEXT
);
```

**What Each Does:**

- **RollNo:** Auto-numbered
- **Name:** Text (50 letters max), required
- **Email:** Text, unique, required
- **Age:** Whole number (18, 20, 22)
- **Marks:** Decimal (95.50, 87.25)
- **JoinDate:** Date (2024-07-27)
- **IsActive:** True or False (1 or 0)
- **Bio:** Long text (no limit)

### Insert Data Example:

```sql
INSERT INTO StudentAdvanced
(Name, Email, Age, Marks, JoinDate, IsActive, Bio)
VALUES
('Amit Sharma', 'amit@gmail.com', 20, 95.50, '2024-01-15', TRUE, 'Excellent student');
```

---

# ⚠️ PART 13 — Understanding NULL Values

### What is NULL?

NULL means **"no value"** or **"unknown"**.

It's different from empty string ("") or zero (0).

### NULL in DESC Output:

When you run `DESC Student;`, the **Null** column shows:

- `YES` = This column CAN be NULL (empty)
- `NO` = This column CANNOT be NULL (required)

### Example:

```sql
CREATE TABLE Student (
    RollNo INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL,
    Phone VARCHAR(10),
    City VARCHAR(30)
);
```

**Rules:**

- **Name:** Can't be NULL (required)
- **Phone:** Can be NULL (optional)
- **City:** Can be NULL (optional)

### Insert with NULL:

```sql
INSERT INTO Student (Name, Phone, City)
VALUES ('Amit', NULL, 'Meerut');
```

Phone is NULL (no phone number)

Result:
| RollNo | Name | Phone | City |
| ------ | ---- | ----- | ---- |
| 1 | Amit | NULL | Meerut |

---

### Finding NULL Values:

```sql
SELECT * FROM Student
WHERE Phone IS NULL;
```

Shows students who DON'T have a phone number.

```sql
SELECT * FROM Student
WHERE Phone IS NOT NULL;
```

Shows students who DO have a phone number.

---

# 💻 PART 14 — Comments in SQL

### What Are Comments?

Comments are **notes for yourself** that MySQL ignores.

### Single Line Comment (-- ):

```sql
-- This is a comment explaining what I'm doing
SELECT * FROM Student
WHERE City='Delhi'; -- Show only Delhi students
```

MySQL ignores anything after `--`

### Multi-Line Comment (/\* \*/):

```sql
/*
This is a comment that spans
multiple lines.
Used for explaining complex queries.
*/
SELECT * FROM Student;
```

MySQL ignores everything between `/*` and `*/`

---

# 🔄 PART 15 — ALTER TABLE (Modify Existing Tables)

### What Does This Do?

Changes a table that **already exists** — add, remove, or modify columns.

### Add a New Column:

Suppose you want to add **Phone** to your Student table:

```sql
ALTER TABLE Student
ADD Phone VARCHAR(10);
```

Result: New Phone column added to table!

### Add Column with NOT NULL:

```sql
ALTER TABLE Student
ADD Email VARCHAR(50) NOT NULL;
```

### Remove a Column:

```sql
ALTER TABLE Student
DROP Email;
```

Removes the Email column completely.

### Rename a Column:

```sql
ALTER TABLE Student
RENAME COLUMN Phone TO PhoneNumber;
```

Column "Phone" is now called "PhoneNumber"

### Change Data Type of Column:

```sql
ALTER TABLE Student
MODIFY Name VARCHAR(100);
```

Changes Name from VARCHAR(50) to VARCHAR(100) — more space!

---

# 📁 PART 16 — DROP TABLE vs DELETE (Important Difference!)

### DELETE — Removes Rows

```sql
DELETE FROM Student
WHERE RollNo=1;
```

**What Happens:**

- Row with RollNo=1 is deleted
- Table structure stays (columns still exist)
- Other rows remain

**Result:**

```
RollNo | Name  | City
-------|-------|------
2      | Neha  | Delhi
3      | Rahul | Noida
```

**Use When:** You want to remove specific or all data, but keep the table

---

### DROP — Removes Entire Table

```sql
DROP TABLE Student;
```

**What Happens:**

- **ENTIRE TABLE IS DELETED** (including columns!)
- Everything is gone
- Table structure is gone
- Can't get it back without a backup

**Result:**

```
Error: Table 'CollegeDB.Student' doesn't exist
```

**Use When:** You never want to use this table again

---

### Comparison:

| Action          | DELETE            | DROP                 |
| --------------- | ----------------- | -------------------- |
| Removes         | Rows only         | Entire table         |
| Table Structure | Stays             | Gone                 |
| Recoverable     | Yes (with backup) | Very hard            |
| Use When        | Clear data        | Delete table forever |

---

# ❌ PART 17 — Troubleshooting: Common Beginner Errors

### Error 1: Missing Semicolon (;)

**What You Type:**

```sql
SELECT * FROM Student
```

**Error:**

```
Error 1064: You have an error in your SQL syntax
```

**Fix:**

```sql
SELECT * FROM Student;
```

Add `;` at the end!

---

### Error 2: Wrong Quotes (' vs ")

**What You Type:**

```sql
SELECT * FROM Student WHERE Name="Amit";
```

**Error (in some systems):**

```
Column 'Amit' doesn't exist
```

**Fix:**

```sql
SELECT * FROM Student WHERE Name='Amit';
```

Use **single quotes** (') for text, not double quotes (")

---

### Error 3: Forgetting WHERE (Updating Everything!)

**What You Type:**

```sql
UPDATE Student
SET City='Delhi';
```

**Problem:** ALL students' cities become Delhi!

**Fix:**

```sql
UPDATE Student
SET City='Delhi'
WHERE RollNo=1;
```

Always use WHERE to limit changes!

---

### Error 4: Table Doesn't Exist

**What You Type:**

```sql
SELECT * FROM Student;
```

**Error:**

```
Error 1146: Table 'CollegeDB.Student' doesn't exist
```

**Causes:**

1. Table name is wrong
2. Wrong database (forgot `USE CollegeDB;`)
3. Table was deleted

**Fix:**

```sql
USE CollegeDB;
SELECT * FROM Student;
```

Make sure you **used the right database first!**

---

### Error 5: Column Doesn't Exist

**What You Type:**

```sql
SELECT StudentName FROM Student;
```

**Error:**

```
Error 1054: Unknown column 'StudentName' in 'field list'
```

**Problem:** Column is called "Name", not "StudentName"

**Fix:**

```sql
SELECT Name FROM Student;
```

Check your column names with `DESC Student;`

---

### Error 6: Duplicate Entry (UNIQUE Constraint)

**What You Type:**

```sql
INSERT INTO Student (Email) VALUES ('amit@gmail.com');
INSERT INTO Student (Email) VALUES ('amit@gmail.com');
```

**Error:**

```
Error 1062: Duplicate entry 'amit@gmail.com' for key 'Email'
```

**Problem:** Email is UNIQUE, can't have duplicates

**Fix:**

```sql
INSERT INTO Student (Email) VALUES ('amit@gmail.com');
INSERT INTO Student (Email) VALUES ('neha@gmail.com');
```

Use different emails!

---

### Error 7: NULL in NOT NULL Column

**What You Type:**

```sql
CREATE TABLE Student (Name VARCHAR(50) NOT NULL);
INSERT INTO Student (Name) VALUES (NULL);
```

**Error:**

```
Error 1048: Column 'Name' cannot be null
```

**Problem:** Name can't be empty!

**Fix:**

```sql
INSERT INTO Student (Name) VALUES ('Amit');
```

Provide a name!

---

### Quick Error Checklist:

- ❌ `;` at end? → Add it
- ❌ `'` for text? → Use single quotes
- ❌ Right table name? → Check with `SHOW TABLES;`
- ❌ Right database? → Check with `USE DatabaseName;`
- ❌ Right column name? → Check with `DESC TableName;`
- ❌ WHERE clause? → Add it to avoid updating everything
- ❌ Duplicate values? → Make sure UNIQUE columns are different
- ❌ NULL values? → Check NOT NULL rules

---

# 🎯 Complete Practice (Copy & Run in Order)

Copy this entire block and paste it into MySQL Workbench. Press `Ctrl + Enter` after each command (or select all and run).

```sql
CREATE DATABASE CollegeDB;

USE CollegeDB;

CREATE TABLE Student(
RollNo INT PRIMARY KEY AUTO_INCREMENT,
Name VARCHAR(50) NOT NULL,
Class VARCHAR(20) NOT NULL,
City VARCHAR(30)
);

INSERT INTO Student (Name, Class, City) VALUES
('Amit Sharma','B.Tech','Meerut'),
('Neha Verma','BCA','Delhi'),
('Rahul','BCA','Noida'),
('Priya','MCA','Delhi'),
('Rohan','B.Tech','Lucknow');

SELECT * FROM Student;

SELECT Name, City FROM Student;

SELECT DISTINCT City FROM Student;

SELECT * FROM Student LIMIT 3;

SELECT * FROM Student
WHERE City='Delhi';

SELECT * FROM Student
WHERE Class='BCA';

SELECT * FROM Student
WHERE RollNo > 2;

SELECT * FROM Student
WHERE City IN ('Delhi', 'Noida', 'Meerut');

SELECT * FROM Student
WHERE Name LIKE 'A%';

SELECT * FROM Student
ORDER BY Name;

SELECT * FROM Student
ORDER BY RollNo DESC;

UPDATE Student
SET City='Noida'
WHERE RollNo=1;

SELECT * FROM Student;

DELETE FROM Student
WHERE RollNo=2;

SELECT * FROM Student;

DESC Student;
```
---
# 📘 SQL Cheat Sheet & Beginner Projects

A quick reference for the most commonly used SQL commands along with two beginner-friendly database projects to practice your SQL skills.

---

# 📌 SQL Cheat Sheet

## 1. Create a Database

Creates a new database.

```sql
CREATE DATABASE db_name;
```

**Example**

```sql
CREATE DATABASE LibraryDB;
```

---

## 2. Select a Database

Choose the database you want to work with.

```sql
USE db_name;
```

**Example**

```sql
USE LibraryDB;
```

---

## 3. Create a Table

Creates a new table inside the selected database.

```sql
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype
);
```

**Example**

```sql
CREATE TABLE Books (
    id INT,
    title VARCHAR(100)
);
```

---

## 4. Insert Data

Adds new records into a table.

```sql
INSERT INTO table_name
VALUES (value1, value2);
```

**Example**

```sql
INSERT INTO Books
VALUES (1, 'Atomic Habits');
```

---

## 5. View Data

Displays data from a table.

```sql
SELECT * FROM table_name;
```

**Example**

```sql
SELECT * FROM Books;
```

---

## 6. Update Data

Modifies existing records.

```sql
UPDATE table_name
SET column_name = value
WHERE condition;
```

**Example**

```sql
UPDATE Books
SET title = 'Deep Work'
WHERE id = 1;
```

---

## 7. Delete Data

Removes records from a table.

```sql
DELETE FROM table_name
WHERE condition;
```

**Example**

```sql
DELETE FROM Books
WHERE id = 1;
```

---

# 📝 SQL Quick Reference

| Command | Purpose |
|----------|---------|
| `CREATE DATABASE` | Create a new database |
| `USE` | Select a database |
| `CREATE TABLE` | Create a new table |
| `INSERT INTO` | Insert new records |
| `SELECT` | Retrieve data |
| `UPDATE` | Modify existing data |
| `DELETE` | Remove records |

---


## Skills You Can Practice

- Database Design
- Table Creation
- CRUD Operations
- Filtering Data
- Sorting Records
- Aggregate Functions
- GROUP BY
- HAVING
- SQL Joins (Later)

---

# 🎯 Learning Outcome

After completing these projects, you'll be able to:

- ✅ Create databases
- ✅ Create tables
- ✅ Insert records
- ✅ Retrieve data using SELECT
- ✅ Update existing records
- ✅ Delete unwanted records
- ✅ Understand database relationships
- ✅ Build beginner-level SQL projects


---

# 📞 Quick Reference 

## 📝 SQL Quick Reference

| Command | Purpose | Example |
|----------|----------|---------|
| CREATE DATABASE | Create a new database | `CREATE DATABASE LibraryDB;` |
| USE | Select a database | `USE LibraryDB;` |
| CREATE TABLE | Create a table | `CREATE TABLE Books (...);` |
| INSERT INTO | Add records | `INSERT INTO Books VALUES (...);` |
| SELECT | Retrieve data | `SELECT * FROM Books;` |
| UPDATE | Modify records | `UPDATE Books SET title='SQL';` |
| DELETE | Remove records | `DELETE FROM Books WHERE id=1;` |
| ALTER TABLE | Modify table structure | `ALTER TABLE Books ADD price INT;` |
| DROP TABLE | Delete a table | `DROP TABLE Books;` |
| TRUNCATE TABLE | Remove all rows | `TRUNCATE TABLE Books;` |
| DESC | Show table structure | `DESC Books;` |

---
## ⌨️ Keyboard Shortcuts

| Action        | Shortcut                                        |
| ------------- | ----------------------------------------------- |
| Run Query     | `Ctrl + Enter` (Windows) or `Cmd + Enter` (Mac) |
| Select All    | `Ctrl + A`                                      |
| Copy          | `Ctrl + C`                                      |
| Paste         | `Ctrl + V`                                      |
| Undo          | `Ctrl + Z`                                      |
| New Query Tab | `Ctrl + T`                                      |

---


## 📖 Next Topics to Learn

- WHERE Clause
- ORDER BY
- DISTINCT
- LIMIT / TOP
- Aggregate Functions
- GROUP BY
- HAVING
- JOINS
- Subqueries
- Views
- Indexes
- Stored Procedures

---
