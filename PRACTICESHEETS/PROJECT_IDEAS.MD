
# 🚀 Beginner SQL Projects

These projects help you practice SQL concepts like creating databases, tables, inserting data, updating records, deleting records, and writing queries.

---

# 📚 Project 1: Library Management System

## Objective

Create a simple database to manage books, library members, and book borrowing records.

---

## Database Name

```text
LibraryDB
```

---

## Tables

### 📖 Books

Stores information about books.

| Column | Data Type | Description |
|---------|-----------|-------------|
| id | INT | Book ID |
| title | VARCHAR(100) | Book Title |
| author | VARCHAR(100) | Author Name |
| year | INT | Publication Year |

---

### 👤 Members

Stores information about library members.

| Column | Data Type | Description |
|---------|-----------|-------------|
| id | INT | Member ID |
| name | VARCHAR(100) | Member Name |
| join_date | DATE | Membership Date |

---

### 📅 Borrowing

Stores borrowing history.

| Column | Data Type | Description |
|---------|-----------|-------------|
| book_id | INT | Borrowed Book ID |
| member_id | INT | Member ID |
| borrow_date | DATE | Borrow Date |

---

## Skills You Can Practice

- CREATE DATABASE
- CREATE TABLE
- INSERT INTO
- SELECT
- UPDATE
- DELETE
- WHERE
- ORDER BY
- COUNT()
- JOIN (Later)

---

# 👨‍💼 Project 2: Employee Database

## Objective

Create a database to manage employees, departments, and salary records.

---

## Database Name

```text
EmployeeDB
```

---

## Tables

### 👨‍💼 Employees

| Column | Data Type | Description |
|---------|-----------|-------------|
| id | INT | Employee ID |
| name | VARCHAR(100) | Employee Name |
| department | VARCHAR(100) | Department |
| salary | DECIMAL(10,2) | Salary |

---

### 🏢 Departments

| Column | Data Type | Description |
|---------|-----------|-------------|
| id | INT | Department ID |
| name | VARCHAR(100) | Department Name |
| location | VARCHAR(100) | Office Location |

---

### 💰 Salaries

| Column | Data Type | Description |
|---------|-----------|-------------|
| employee_id | INT | Employee ID |
| amount | DECIMAL(10,2) | Salary Amount |
| date | DATE | Salary Date |

---