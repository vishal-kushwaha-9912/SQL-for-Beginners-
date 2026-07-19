-- If your goal is to **master only these topics**:

-- * ✅ `SELECT`
-- * ✅ `FROM`
-- * ✅ `WHERE` (single condition only)
-- * ✅ `ORDER BY`



--  🟢 Level 1 – SELECT & FROM

--  Q1.

-- Display all columns from the `employee_compensation` table.

SELECT * 
FROM employee_compensation;


--  Q2.

-- Display only the first name and last name of all employees.

SELECT first_name, last_name 
FROM employee_compensation;


--  Q3.

-- Display the department of every employee.

SELECT emp_id, first_name, last_name, department
FROM employee_compensation;



--  Q4.

-- Display the base salary of every employee.

SELECT first_name ,base_salary 
FROM employee_compensation; 


--  Q5.

-- Display the employee ID, first name, and department.

SELECT emp_id, first_name, department
FROM employee_compensation;



--  Q6.

-- Display only the performance score of all employees.

SELECT first_name, performance_score 
FROM employee_compensation;

--  Q7.

-- Display the first name and hire date.


SELECT first_name, hire_date
FROM employee_compensation;



--  Q8.

-- Display the job grade and base salary.

SELECT job_grade , base_salary
FROM employee_compensation;


--  Q9.

-- Display all employees' commission percentages.

SELECT first_name , commission_pct 
FROM employee_compensation;


--   Q10.

-- Display the first name, last name, and performance score.

SELECT first_name , last_name, performance_score
FROM employee_compensation;


-- 🟢 Level 2 – WHERE (Single Condition)

--   Q11.

-- Show employees who work in Engineering.


SELECT first_name, department
FROM employee_compensation
WHERE department = 'Engineering';



--   Q12.

-- -- Show employees whose base salary is greater than 10000.

SELECT first_name , base_salary
FROM employee_compensation
WHERE base_salary >10000;


--   Q13.

-- Show employees whose performance score is 9.

SELECT first_name ,department, performance_score
FROM employee_compensation
WHERE performance_score = 9;


--   Q14.

-- Show employees hired after January 1, 2023.

SELECT first_name ,department ,hire_date
FROM employee_compensation
WHERE hire_date > '2023-01-01';

--   Q15.

-- Show employees whose commission percentage is 0.

SELECT first_name , commission_pct
FROM employee_compensation
WHERE commission_pct = 0;



--   Q16.

-- Show employees whose job grade is 'Senior'.

SELECT first_name ,department  ,job_grade
FROM employee_compensation
WHERE job_grade = 'Senior';


--   Q17.

-- Show employees whose department is Sales.

SELECT first_name , department ,job_grade
FROM employee_compensation
WHERE department = 'Sales' ;


--   Q18.

-- Show employees whose salary is less than 9000.

SELECT first_name , department, base_salary 
FROM employee_compensation
WHERE base_salary < 9000;


--   Q19.

-- Show employees whose performance score is greater than 8.

SELECT first_name ,department,performance_score
FROM employee_compensation
WHERE performance_score > 8 ;



--   Q20.

-- Show employees hired before January 1, 2023.

SELECT first_name, department,hire_date
FROM employee_compensation
WHERE hire_date < '2023-1-1';


--   Q21.

-- Show employees whose salary is equal to 10000.

SELECT first_name,department,base_salary
FROM employee_compensation
WHERE base_salary = 10000;


--   Q22.

-- Show employees whose performance score is less than 8.

SELECT first_name, department,performance_score
FROM employee_compensation
WHERE performance_score < 8;

--   Q23.

-- Show employees whose commission percentage is greater than 0.10.


SELECT first_name, department , commission_pct
FROM employee_compensation
WHERE commission_pct > 0.10;

--   Q24.

-- Show employees whose job grade is 'Manager'.

SELECT first_name ,department ,job_grade
FROM employee_compensation
WHERE job_grade = 'Manager';


--   Q25.

-- Show employees hired on or after January 1, 2024.

SELECT first_name ,department ,job_grade , hire_date
FROM employee_compensation
WHERE hire_date >= '2024-1-1' ;




---

--  🟠 Level 3 – ORDER BY

--   Q26.

-- Display all employees sorted by salary (lowest to highest).

SELECT first_name,department, base_salary 
FROM employee_compensation
ORDER BY base_salary ASC ;


--   Q27.

-- Display all employees sorted by salary (highest to lowest).

SELECT first_name  ,department ,base_salary
FROM employee_compensation
ORDER BY base_salary DESC;


--   Q28.

-- Sort employees alphabetically by first name.

SELECT first_name , department
 FROM employee_compensation 
ORDER BY first_name ASC;


--   Q29.

-- Sort employees alphabetically by last name.


SELECT last_name 
 FROM employee_compensation 
ORDER BY last_name ASC;



--   Q30.

-- Sort employees by hire date (oldest first).


SELECT first_name ,department , hire_date
FROM employee_compensation
ORDER BY hire_date ASC;



--   Q31.

-- Sort employees by hire date (newest first).


SELECT first_name ,department , hire_date
FROM employee_compensation
ORDER BY hire_date DESC;



--   Q32.

-- Sort employees by performance score (highest first).


SELECT first_name, department,performance_score
FROM employee_compensation
ORDER BY performance_score DESC;


--   Q33.

-- Sort employees by department.

SELECT first_name, department
FROM employee_compensation
ORDER BY department ASC;




--   Q34.

-- Sort employees by commission percentage.


SELECT first_name, commission_pct
FROM employee_compensation
ORDER BY commission_pct ASC;



--   Q35.

-- Sort employees by job grade.


SELECT first_name, job_grade
FROM employee_compensation
ORDER BY job_grade ASC;



-- ---

--  🔴 Level 4 – WHERE + ORDER BY

--   Q36.

-- Show Engineering employees sorted by salary (highest first).


SELECT first_name,department, base_salary
FROM employee_compensation
WHERE department = 'Engineering'
ORDER BY base_salary DESC;


--   Q37.

-- Show Sales employees sorted by performance score.


SELECT first_name  ,department, performance_score
FROM employee_compensation
WHERE department = 'Sales'
ORDER BY performance_score ASC;




--   Q38.

-- Show employees earning more than 9000 sorted by hire date.

SELECT first_name  ,department, base_salary
FROM employee_compensation
WHERE base_salary > 9000
ORDER BY hire_date DESC;



--   Q39.

-- Show employees with performance score above 7 sorted by salary.


SELECT first_name  ,performance_score, base_salary
FROM employee_compensation
WHERE performance_score > 7
ORDER BY base_salary ASC;




--   Q40.

-- Show employees hired after 2022 sorted by first name.


SELECT first_name  ,hire_date, base_salary
FROM employee_compensation
WHERE hire_date > '2022-12-31'
ORDER BY first_name ASC;


--   Q41.

-- Show Senior employees sorted by salary descending.


SELECT first_name  ,job_grade, base_salary
FROM employee_compensation
WHERE job_grade = 'Senior'
ORDER BY base_salary DESC;



--   Q42.

-- Show employees whose commission is greater than 0 sorted by commission percentage.


SELECT first_name  ,commission_pct 
FROM employee_compensation
WHERE commission_pct > 0
ORDER BY commission_pct ASC;


--   Q43.

-- Show Finance employees sorted by performance score descending.


SELECT first_name  ,department , performance_score
FROM employee_compensation
WHERE department = 'Finance'
ORDER BY performance_score DESC;


--   Q44.

-- Show employees earning less than 10000 sorted by hire date.


SELECT first_name  , base_salary ,hire_date
FROM employee_compensation
WHERE base_salary < 10000
ORDER BY hire_date ASC;



--   Q45.

-- Show Manager sorted by salary descending.



SELECT first_name , job_grade , base_salary
FROM employee_compensation
WHERE job_grade = 'Manager'
ORDER BY base_salary DESC;

-- -- ---
