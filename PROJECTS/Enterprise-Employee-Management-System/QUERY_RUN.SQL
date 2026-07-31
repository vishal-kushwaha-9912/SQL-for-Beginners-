 1. Display All Employees

**What it does:** Shows every employee in the company.


SELECT * FROM Employess;


---

 2. Display Employee Name and Salary

**What it does:** Shows only employee names and their salaries.


SELECT Employess_name, salary
FROM Employess;


---

 3. Employees with Salary Greater Than 60000

**What it does:** Finds employees earning more than ₹60,000.


SELECT *
FROM Employess
WHERE salary > 60000;


---

 4. Employees from IT Department

**What it does:** Displays only IT department employees.


SELECT *
FROM Employess
WHERE Department = 'IT';


---

 5. Sort Employees by Salary (Highest First)

**What it does:** Lists employees from highest salary to lowest.


SELECT *
FROM Employess
ORDER BY salary DESC;


---

 6. Top 3 Highest Paid Employees

**What it does:** Displays the highest-paid employees.


SELECT *
FROM Employess
ORDER BY salary DESC
LIMIT 3;


---

 7. Count Total Employees

**What it does:** Counts how many employees are in the company.


SELECT COUNT(*) AS Total_Employees
FROM Employess;


---

 8. Average Salary

**What it does:** Finds the average employee salary.


SELECT AVG(salary) AS Average_Salary
FROM Employess;


---

 9. Maximum Salary

**What it does:** Shows the highest salary.


SELECT MAX(salary) AS Highest_Salary
FROM Employess;


---

 10. Minimum Salary

**What it does:** Shows the lowest salary.


SELECT MIN(salary) AS Lowest_Salary
FROM Employess;


---

 11. Total Salary Paid

**What it does:** Calculates the total salary of all employees.


SELECT SUM(salary) AS Total_Salary
FROM Employess;


---

 12. Number of Employees in Each Department

**What it does:** Counts employees department-wise.


SELECT Department,
COUNT(*) AS Total_Employees
FROM Employess
GROUP BY Department;


---

 13. Department-wise Average Salary

**What it does:** Shows the average salary in each department.


SELECT Department,
AVG(salary) AS Average_Salary
FROM Employess
GROUP BY Department;


---

 14. Employees Whose Salary is Between 50000 and 70000

**What it does:** Finds employees within the given salary range.


SELECT *
FROM Employess
WHERE salary BETWEEN 50000 AND 70000;


---

 15. Employees Whose Name Starts With 'A'

**What it does:** Finds employees whose names begin with A.


SELECT *
FROM Employess
WHERE Employess_name LIKE 'A%';


---

 16. Show Paid Salaries

**What it does:** Displays employees whose salary has been paid.


SELECT *
FROM Salaries
WHERE payment_status = 'Paid';


---

 17. Pending Salary Payments

**What it does:** Shows employees whose salary is still pending.


SELECT *
FROM Salaries
WHERE payment_status = 'Pending';


---

 18. Total Bonus Given

**What it does:** Calculates the total bonus amount.


SELECT SUM(bonus) AS Total_Bonus
FROM Salaries;


---

 19. Employees and Their Salary Details (INNER JOIN)

**What it does:** Combines employee information with salary records.


SELECT e.Employess_name,
s.salary_amount,
s.bonus,
s.payment_status
FROM Employess e
INNER JOIN Salaries s
ON e.Employess_id = s.Employess_id;


---

 20. Employees Working on Projects

**What it does:** Displays employees and their assigned projects.


SELECT e.Employess_name,
p.project_name,
ep.role
FROM Employess e
INNER JOIN Employee_Project ep
ON e.Employess_id = ep.Employess_id
INNER JOIN Project_table p
ON ep.project_id = p.project_id;


---

 21. Employees with Active Projects

**What it does:** Shows employees currently working on active assignments.


SELECT e.Employess_name,
p.project_name
FROM Employess e
JOIN Employee_Project ep
ON e.Employess_id = ep.Employess_id
JOIN Project_table p
ON ep.project_id = p.project_id
WHERE ep.assignment_status = 'Active';


---

 22. Completed Projects

**What it does:** Lists all completed projects.


SELECT *
FROM Project_table
WHERE status = 'Completed';


---

 23. Outstanding Performance Reviews

**What it does:** Shows employees with an "Outstanding" rating.


SELECT e.Employess_name,
pr.Rating
FROM Employess e
JOIN Performance_Reviews pr
ON e.Employess_id = pr.Employess_id
WHERE pr.Rating = 'Outstanding';


---

 24. Employees with Approved Leave

**What it does:** Displays approved leave applications.


SELECT *
FROM Leave_Management
WHERE Leave_Status = 'Approved';


---

 25. Employees with Pending Leave Requests

**What it does:** Shows leave requests waiting for approval.


SELECT *
FROM Leave_Management
WHERE Leave_Status = 'Pending';


---

 26. Active User Accounts

**What it does:** Lists users whose login accounts are active.


SELECT Username,
email,
role
FROM Login_System
WHERE account_status = 'Active';


---

 27. Count Employees by Login Role

**What it does:** Counts users based on their login role.


SELECT role,
COUNT(*) AS Total
FROM Login_System
GROUP BY role;


---

 28. Project Budget Greater Than ₹300000

**What it does:** Finds projects with a budget above ₹300,000.


SELECT *
FROM Project_table
WHERE budgest > 300000;


---

 29. Highest Budget Project

**What it does:** Displays the project with the highest budget.


SELECT *
FROM Project_table
ORDER BY budgest DESC
LIMIT 1;


---

 30. Employees Who Received Bonus Greater Than ₹4000

**What it does:** Finds employees with bonuses above ₹4,000.


SELECT e.Employess_name,
s.bonus
FROM Employess e
JOIN Salaries s
ON e.Employess_id = s.Employess_id
WHERE s.bonus > 4000;

31. Highest Paid Employee ⭐⭐⭐⭐
SELECT *
FROM Employess
WHERE salary =
(
SELECT MAX(salary)
FROM Employess
);

32. Department Salary Report ⭐⭐⭐⭐⭐
SELECT
Department,
COUNT(*) Total_Employees,
SUM(salary) Total_Salary,
AVG(salary) Average_Salary,
MAX(salary) Highest_Salary,
MIN(salary) Lowest_Salary
FROM Employess
GROUP BY Department;

33. Project Budget Analysis ⭐⭐⭐⭐⭐
SELECT
status,
COUNT(*) Total_Projects,
SUM(budgest) Total_Budget,
AVG(budgest) Average_Budget
FROM Project_table
GROUP BY status;

34. Employee Login Report ⭐⭐⭐⭐
SELECT
Username,
role,
account_status,
last_login
FROM Login_System
ORDER BY last_login DESC;

35. Leave Summary Report ⭐⭐⭐⭐⭐
SELECT
Leave_Status,
COUNT(*) Total_Leaves
FROM Leave_Management
GROUP BY Leave_Status;

36. Employees Having Approved Leave ⭐⭐⭐⭐
SELECT
Employess_name,
Leave_Type,
Start_Date,
End_Date
FROM Leave_Management
WHERE Leave_Status='Approved';

37.Employees Earning Above Department Average ⭐⭐⭐⭐⭐⭐

SELECT
Employess_name,
Department,
salary
FROM Employess e
WHERE salary >
(
SELECT AVG(salary)
FROM Employess
WHERE Department=e.Department
);

38.. Manager and Admin Accounts ⭐⭐⭐⭐

SELECT
Username,
role,
email
FROM Login_System
WHERE role IN ('Manager','Admin'); 

