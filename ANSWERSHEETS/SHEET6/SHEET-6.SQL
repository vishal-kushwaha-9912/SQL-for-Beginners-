 

-- 🧠 SQL HAVING Clause — Practice Questions

-- > A structured set of **15 SQL practice questions** to master the `HAVING` clause from **Basic → Advanced**.

-- ---

--   📌 Practice Dataset

-- Use the following `Employees` table for all questions.

--   `Employees`

-- | employee_id | employee_name | department | salary | city   | experience | status   |
-- | ----------: | ------------- | ---------- | -----: | ------ | ---------: | -------- |
-- |         101 | Amit          | IT         |  60000 | Delhi  |          3 | Active   |
-- |         102 | Rahul         | IT         |  75000 | Delhi  |          5 | Active   |
-- |         103 | Priya         | HR         |  50000 | Mumbai |          2 | Active   |
-- |         104 | Sneha         | HR         |  55000 | Mumbai |          4 | Active   |
-- |         105 | Rohan         | Finance    |  80000 | Delhi  |          6 | Active   |
-- |         106 | Neha          | Finance    |  70000 | Pune   |          4 | Active   |
-- |         107 | Karan         | IT         |  90000 | Pune   |          7 | Active   |
-- |         108 | Anjali        | Sales      |  45000 | Delhi  |          1 | Inactive |
-- |         109 | Vikash        | Sales      |  55000 | Delhi  |          3 | Active   |
-- |         110 | Pooja         | Sales      |  65000 | Mumbai |          5 | Active   |
-- |         111 | Arjun         | Marketing  |  60000 | Pune   |          3 | Active   |
-- |         112 | Simran        | Marketing  |  70000 | Pune   |          5 | Active   |
-- |         113 | Varun         | IT         |  65000 | Mumbai |          4 | Active   |
-- |         114 | Nisha         | Finance    |  90000 | Delhi  |          8 | Active   |
-- |         115 | Mohit         | HR         |  60000 | Delhi  |          6 | Inactive |

-- ---

--   🎯 HAVING Practice Questions

--   🟢 Level 1 — Basic

--   Question 1 — Departments with Multiple Employees

-- Find all departments that have **more than 2 employees**.

-- **Display:**

-- * Department
-- * Employee count

-- **Difficulty:** ⭐

SELECT department ,COUNT(employee_id)
FROM employees
GROUP BY department
HAVING COUNT(employee_id) > 2;


--   Question 2 — Departments with High Average Salary

-- Find departments where the **average salary is greater than ₹60,000**.

-- **Display:**

-- * Department
-- * Average salary

-- **Difficulty:** ⭐

SELECT Department , AVG(salary) AS Average_Salary
FROM Employess
GROUP BY Department
HAVING AVG(salary)>60000;


--   Question 3 — Departments with High Total Salary

-- Find departments where the **total salary is greater than ₹150,000**.

-- **Display:**

-- * Department
-- * Total salary

-- **Difficulty:** ⭐

SELECT Department , SUM(salary) AS Total_Salary
FROM employees
GROUP BY Department
HAVING SUM(salary)>150000;




-- APPLY FROM there THESE DATA >>ORDERS.SQL 👇



--  Question 4 — Departments with High Maximum Salary

-- Find departments where the **maximum salary is greater than ₹80,000**.

-- **Display:**

-- * Department
-- * Maximum salary

--  **Difficulty:** ⭐⭐

SELECT department , MAX(salary) AS maximum_salary
FROM Staff_Performances
GROUP BY department
HAVING  MAX(salary)>80000;


--  Question 5 — Departments with High Minimum Salary

-- Find departments where the **minimum salary is greater than ₹50,000**.

-- **Display:**

-- * Department
-- * Minimum salary

-- **Difficulty:** ⭐⭐

SELECT department , MIN(salary) AS minimum_salary
FROM Staff_Performances
GROUP BY department
HAVING  MIN(salary)<50000;





--  🟡 Level 2 — Intermediate



--  Question 6 — Active Employees by Department

-- Consider only employees whose status is **`Active`**.

-- Find departments that have **more than 2 active employees**.

-- **Display:**

-- * Department
-- * Active employee count

-- **Difficulty:** ⭐⭐

SELECT department , COUNT(status) AS Active_Employee_Count
FROM Staff_Performances
WHERE status ='Active'
GROUP BY department
HAVING COUNT(status) > 2;




---Question 7 — Departments with High Average Experience

-- Find departments where the **average employee experience is greater than 4 years**.

-- **Display:**

-- * Department
-- * Average experience

-- **Difficulty:** ⭐⭐

SELECT department , AVG(experience) AS Average_Experience
FROM Staff_Performances
GROUP BY department
HAVING AVG(experience)>4;



--  Question 8 — Cities with Multiple Employees

-- Find cities that have **at least 3 employees**.

-- **Display:**

-- * City
-- * Employee count

-- **Difficulty:** ⭐⭐

SELECT  city , COUNT(staff_id) AS staff_numbers
FROM Staff_Performances
GROUP BY city 
HAVING COUNT(staff_id) >= 3;

--  Question 9 — Departments with a Large Salary Range

-- Find departments where the difference between the **highest salary and lowest salary is greater than ₹20,000**.

-- **Display:**

-- * Department
-- * Maximum salary
-- * Minimum salary
-- * Salary range

-- **Difficulty:** ⭐⭐⭐

SELECT department , 
MAX(salary) AS Maximum_Salary, 
MIN(salary) AS Minimum_Salary , 
(MAX(salary) - MIN(salary) ) AS Salary_range 
FROM  Staff_Performances
GROUP BY department
HAVING (MAX(salary) - MIN(salary) )  > 20000;


--  Question 10 — Departments with High Average Salary and Multiple Employees

-- Find departments that satisfy **both conditions**:

-- * Have at least **3 employees**
-- * Average salary is greater than **₹60,000**

-- **Display:**

-- * Department
-- * Employee count
-- * Average salary

-- **Difficulty:** ⭐⭐⭐

SELECT department, AVG(salary) AS Average_Salary , COUNT(staff_id) AS staff_numbers
 FROM Staff_Performances
GROUP BY department
HAVING COUNT(staff_id)>=3 AND  AVG(salary) >60000;





--  🔴 Level 3 — Advanced

--  Question 11 — Salary and Experience Analysis

-- Find departments where **all** of the following conditions are true:

-- * Average salary is greater than ₹60,000
-- * Average experience is greater than 4 years
-- * At least 2 employees belong to the department

-- **Display:**

-- * Department
-- * Employee count
-- * Average salary
-- * Average experience

-- **Difficulty:** ⭐⭐⭐

SELECT department ,
       AVG(salary) AS Average_Salary ,
      AVG(experience)AS Average_Experience,
      COUNT(staff_id) AS staff_numbers
 FROM Staff_Performances
GROUP BY department
HAVING AVG(salary) > 60000 
       AND AVG(experience) > 4
       AND COUNT(staff_id) >=2;
    



--  Question 12 — High-Paying Cities

-- Find cities where **all** of the following conditions are true:

-- * More than 2 employees work there
-- * Maximum salary is greater than ₹80,000
-- * Average salary is greater than ₹60,000

-- **Display:**

-- * City
-- * Employee count
-- * Maximum salary
-- * Average salary

-- **Difficulty:** ⭐⭐⭐⭐

SELECT city,
COUNT(staff_id) AS staff_numbers,
 MAX(salary) AS Maximum_Salary, 
AVG(salary) AS Average_Salary
FROM Staff_Performances 
GROUP BY city
HAVING 
     COUNT(staff_id) >2
    AND MAX(salary) >80000
    AND AVG(salary) > 60000;



--  Question 13 — Department Salary Concentration

-- Find departments where:

-- * Total salary is greater than ₹200,000
-- * Average salary is greater than ₹65,000

-- **Display:**

-- * Department
-- * Total salary
-- * Average salary

-- **Difficulty:** ⭐⭐⭐⭐

SELECT department,
SUM(salary) AS Total_Salary,
AVG(salary)AS Average_Salary
FROM Staff_Performances
GROUP BY department
HAVING SUM(salary)>200000 and 
       AVG(salary)> 65000;




--  Question 14 — Departments Above Company Average ⭐

-- Find departments where the **average department salary is greater than the overall average salary of the entire company**.

-- **Display:**

-- * Department
-- * Department average salary

--  Requirements

-- You must compare:
-- Department Average Salary
-- Overall Company Average Salary

-- 💡 **Hint:** You may need to use a **subquery**.

-- **Difficulty:** ⭐⭐⭐⭐⭐

 






--   🏆 Level 4 — Expert Challenge

--   Question 15 — Complete Department Performance Analysis

-- Find departments that satisfy **ALL** of the following conditions:

-- 1. Have at least **2 active employees**
-- 2. Average salary is greater than **₹60,000**
-- 3. Maximum salary is greater than **₹80,000**
-- 4. Minimum salary is greater than **₹50,000**
-- 5. Average experience is greater than **4 years**

-- **Display:**

-- * Department
-- * Active employee count
-- * Average salary
-- * Maximum salary
-- * Minimum salary
-- * Average experience

-- **Difficulty:** ⭐⭐⭐⭐⭐


SELECT department ,
 COUNT(*) AS staff_employees_count,
AVG(salary) AS Average_Salary,
MAX(salary)AS maximum_salary,
MIN(salary)AS Minimum_Salary,
AVG(experience) AS Average_Experience
FROM Staff_Performances
WHERE status='Active'
GROUP BY department
HAVING 
COUNT(*) >=2 
AND AVG(salary) >60000
AND MAX(salary)>80000
AND MIN(salary)>50000
AND AVG(experience)>4;