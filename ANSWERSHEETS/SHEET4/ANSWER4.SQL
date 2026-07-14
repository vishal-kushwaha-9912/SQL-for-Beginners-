
--  📝 THE QUESTIONS

--  🟢 LEVEL 1: The Essentials (Sections 0–8)

-- **Q1.** How many total employees work at the company?

SELECT COUNT(*)
FROM employees_new;



-- **Q2.** What is the total salary paid to all employees? *(Remember the NULL!)*

SELECT SUM(salary)
FROM employees_new;


-- **Q3.** What is the average salary of all employees? *(Round to 2 decimals)*

SELECT ROUND(AVG(salary), 2) AS average_salary
FROM employees_new;

-- **Q4.** Who earns the highest salary, and who earns the lowest? *(Write one query that shows both values)*

SELECT MAX(salary) AS highest ,
MIN(salary) AS lowest 
FROM employees_new;


-- **Q5.** How many **different** departments exist in the company?

SELECT COUNT(DISTINCT department)
FROM employees_new;

--  🟡 LEVEL 2: The Advanced Playbook (Sections 9–17)

-- **Q6.** Write a single query that shows **ALL** of these statistics for the employees table:
-- - Total staff count
-- - Total payroll
-- - Average salary (rounded to 2 decimals)
-- - Lowest salary
-- - Highest salary

SELECT COUNT(*) AS staff ,
SUM(salary) AS payroll,
ROUND(AVG(salary), 2) AS average_salary,
max(salary) AS Highest_income,
MIN(salary) AS Lowest_income
FROM employees_new;



-- **Q7.** What is the total revenue (sum of `amount`) from orders placed on **January 10, 2025**?

SELECT SUM(amount) AS total_revenue
FROM orders_new 
WHERE order_date = '2025-01-10';

-- **Q8.** What is the average order value **for the entire orders table**, rounded to 2 decimal places?

SELECT ROUND(AVG(amount),2) AS average_order
FROM orders_new;


-- **Q9.** How many **unique customers** placed orders?

SELECT COUNT( DISTINCT customer_id) AS unique_customers
FROM orders_new;

-- **Q10.** What is the total payroll **specifically for the Sales department**?

SELECT SUM(salary) AS total_payroll
FROM employees_new
WHERE department = 'sales';


--  🔴 LEVEL 3: The Boss Challenges (Trap Questions)

-- **Q11.** *(The HAVING Trap)*  
-- Write a query to find **which departments** have a total payroll **greater than $100,000**.  
-- *(Hint: You cannot use `WHERE` for this!)*


SELECT department, SUM(salary) AS total_payroll
FROM employees_new
GROUP BY department
HAVING SUM(salary) > 100000;  


-- **Q12.** *(Math on Aggregates)*  
-- Write a query to show:
-- - The highest salary
-- - The lowest salary
-- - The **difference** between them (Pay Gap)

SELECT 
MAX(salary) AS Highest_income,
MIN(salary) AS Lowest_income,
MAX(salary) - MIN(salary) AS pay_gap
FROM employees_new;

-- **Q13.** *(Counting NULLs)*  
-- Write a query to count **exactly how many employees** have a `NULL` salary.

SELECT *
FROM employees_new
WHERE salary IS NULL ;



-- **Q14.** *(Bonus: COALESCE Rescue)*  
-- Write a query that returns the average salary of all employees. **But if the result is `NULL`** (imagine the table was empty), show `0` instead.

SELECT COALESCE(ROUND(AVG(salary), 2), 0) AS average_salary
FROM employees_new;