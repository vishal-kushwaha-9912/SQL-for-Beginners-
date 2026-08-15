# SQL JOIN Practice Questions (Basic → Advanced)

## 🟢 Level 1 – Basic (1–5)

### 1. Workforce & Division

You have two tables:

- Workforce_Record
- Division_Center

Display:

- Employee Name
- Department Name

using an **INNER JOIN**.

---

### 2. Books & Authors

Display:

- Book Title
- Author Name

for every book.

---

### 3. Purchase Log & Clients

Find the customer name and their order date.

Tables:

- Client_Master
- Purchase_Log

---

### 4. Students & Courses

Show:

- Student Name
- Course Name

using INNER JOIN.

---

### 5. Movies & Directors

Display every movie with its director's name.

---

# 🟡 Level 2 – Intermediate (6–10)

### 6. Clients Without Purchases

Display all clients even if they never placed an order.

Tables:

- Client_Master
- Purchase_Log

Use **LEFT JOIN**.

---

### 7. Employees Without Divisions

Find employees who are not assigned to any department.

Tables:

- Workforce_Record
- Division_Center

---

### 8. Books Never Borrowed

Tables:

- Books
- Borrow_History

Find books that have never been borrowed.

---

### 9. Inventory Items Never Sold

Display products whose **Product_ID** never appears in the **Purchase_Log** table.

Tables:

- Inventory_Items
- Purchase_Log

---

### 10. Members Who Never Borrowed Books

Using:

- Members
- Borrow_History

Find members who have never borrowed any book.

---

# 🟠 Level 3 – Multiple Table JOINs (11–15)

### 11. Library System

Tables:

- Books
- Authors
- Categories

Display:

- Book Title
- Author Name
- Category Name

---

### 12. Purchase Details

Tables:

- Client_Master
- Purchase_Log
- Inventory_Items

Display:

- Customer Name
- Product Name
- Quantity

---

### 13. Borrow Report

Tables:

- Members
- Borrow_History
- Books

Display:

- Member Name
- Book Title
- Borrow Date

---

### 14. Complete Library Information

Using:

- Books
- Authors
- Categories
- Publishers

Display:

- Book Title
- Author
- Category
- Publisher

---

### 15. Employee Project Report

Tables:

- Workforce_Record
- Employee_Project
- Projects

Display:

- Employee Name
- Project Name
- Role

---

# 🔴 Level 4 – Advanced JOIN Questions (16–20)

### 16. SELF JOIN

Table:

**Workforce_Record**

Columns:

- Employee_ID
- Employee_Name
- Manager_ID

Display:

- Employee Name
- Manager Name

using a **SELF JOIN**.

---

### 17. Highest Salary Department

Tables:

- Workforce_Record
- Division_Center
- Payroll_Register

Find the employee with the highest salary in each department.

---

### 18. Clients Who Bought More Than One Product

Tables:

- Client_Master
- Purchase_Log
- Inventory_Items

Display customers who purchased **more than one different product**.

---

### 19. Top Borrowed Books

Tables:

- Books
- Borrow_History

Display:

- Book Title
- Total Times Borrowed

Sort from highest to lowest.

---

### 20. Complete Library Dashboard

Using:

- Books
- Authors
- Categories
- Publishers
- Borrow_History
- Members

Create a report showing:

- Book Title
- Author
- Category
- Publisher
- Member Name (if borrowed)
- Borrow Date
- Return Date

Include books that have **never been borrowed**.

---

# ⭐ Bonus Challenge (Expert)

### 21. Build a Library Report

Using all your library tables:

- Books
- Authors
- Categories
- Publishers
- Members
- Borrow_History
- Book_Fine
- Staff

Generate a report showing:

- Book Title
- Author
- Category
- Publisher
- Borrowed By
- Issued By (Staff)
- Borrow Date
- Return Date
- Fine Amount (if any)

**Requirements:**

- Use at least **6 JOINs**
- Use `LEFT JOIN` where appropriate
- Sort by Borrow Date
- Replace `NULL` fine values with `0` using `COALESCE()`

---

## 🎯 Difficulty Progression

| Level          | Questions | Topics Covered                              |
| -------------- | --------: | ------------------------------------------- |
| Basic          |       1–5 | INNER JOIN                                  |
| Intermediate   |      6–10 | LEFT JOIN, finding unmatched rows           |
| Multiple JOINs |     11–15 | 3–4 table joins                             |
| Advanced       |     16–20 | SELF JOIN, GROUP BY with JOINs, aggregation |
| Expert         |     Bonus | Real-world reporting with 6+ JOINs          |
---