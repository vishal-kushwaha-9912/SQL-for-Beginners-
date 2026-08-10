# Live Database Projects

Real, multi-table scenarios for applying course concepts to portfolio-quality queries.

## Project 1: Employee Management System — Active

**Complexity:** Intermediate · **Tables:** 8 core + relationships · **Use case:** HR, payroll, project tracking

| Table | Purpose | Records |
|---|---|---|
| Employees | Employee master data | 10 |
| Departments | Department info & locations | 10 |
| Salaries | Salary tracking & payments | 10 |
| Project_table | Project information | 10 |
| Employee_Project | Project assignments | 10 |
| Performance_Reviews | Employee evaluations | 10 |
| Login_System | User authentication | 10 |
| Leave_Management | Leave requests & approvals | 10 |

Data spans IT, HR, Finance, Sales, and Marketing roles across multiple Indian cities, with salary/bonus tracking, project status (Active/Completed/Planning), performance ratings, and leave workflows.

### Sample Queries

```sql
-- Department salary analysis with GROUP BY
SELECT Department, COUNT(*) AS emp_count, AVG(Salary) AS avg_salary
FROM Employees
GROUP BY Department
HAVING COUNT(*) > 2
ORDER BY avg_salary DESC;

-- Project team members with LEFT JOIN
SELECT p.project_name, COUNT(ep.Employee_id) AS team_size,
       p.budget, p.status
FROM Project_table p
LEFT JOIN Employee_Project ep ON p.project_id = ep.project_id
GROUP BY p.project_id, p.project_name, p.budget, p.status
HAVING COUNT(ep.Employee_id) > 0;

-- Employee details with departments (INNER JOIN)
SELECT e.Name, e.Salary, d.Department, d.Location
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID
ORDER BY d.Department, e.Salary DESC;

-- Performance analysis by department
SELECT e.Department, pr.Rating, COUNT(*) AS count
FROM Employees e
JOIN Performance_Reviews pr ON e.Employee_id = pr.Employee_id
GROUP BY e.Department, pr.Rating
ORDER BY e.Department;

-- Active projects with team details and salaries
SELECT
    p.project_name,
    p.status,
    COUNT(DISTINCT ep.Employee_id) AS team_members,
    AVG(e.Salary) AS avg_team_salary,
    SUM(CASE WHEN lm.Leave_Status = 'Approved' THEN 1 ELSE 0 END) AS on_leave
FROM Project_table p
LEFT JOIN Employee_Project ep ON p.project_id = ep.project_id
LEFT JOIN Employees e ON ep.Employee_id = e.Employee_id
LEFT JOIN Leave_Management lm ON ep.Employee_id = lm.Employee_id
WHERE p.status IN ('Active', 'In Progress')
GROUP BY p.project_id, p.project_name, p.status
ORDER BY avg_team_salary DESC;
```

**Learning outcomes:** multi-JOIN queries, JOIN + GROUP BY + HAVING, LEFT JOIN for missing-data checks, HR/payroll analysis, portfolio-quality multi-table reports.

**Files:** [`PROJECTS/Employee-Database/Employees.SQL`](../PROJECTS/Employee-Database/) · [`PROJECTS/Employee-Database/QUERY_RUN.SQL`](../PROJECTS/Employee-Database/QUERY_RUN.SQL)

> ⚠️ Note: the source `.SQL` files in this project currently use `Employess` (table/column names) rather than `Employees`. Recommend a repo-wide rename for consistency with the queries above — see the note in the top-level README review.

---

## Project 2: Library Management System — Schema Ready

**Complexity:** Intermediate · **Use case:** Library systems, inventory tracking, patron management

Planned: books catalog (ISBN, author, publication date), member/patron records, borrowing transactions, overdue tracking, fines and payments.

**Files:** [`PROJECTS/Library-Management/Library_Manage.SQL`](../PROJECTS/Library-Management/Library_Manage.SQL)

---

## Project 3: Enterprise Employee Management — Schema Ready

**Complexity:** Advanced · **Use case:** Large enterprises, multi-location HR, corporate analytics

Planned: multiple office locations, hierarchical reporting structure, payroll and benefits, training records, performance analytics.

**Files:** [`PROJECTS/Enterprise-Employee/Enterprise-Emplo.SQL`](../PROJECTS/Enterprise-Employee/Enterprise-Emplo.SQL)
