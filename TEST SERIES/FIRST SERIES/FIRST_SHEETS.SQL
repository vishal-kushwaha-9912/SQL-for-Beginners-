-- -- Topics Covered

-- * ✅ SELECT
-- * ✅ WHERE
-- * ✅ ORDER BY
-- * ✅ Aggregate Functions (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`)
-- * ✅ GROUP BY
-- * ✅ HAVING

-- **Rules**

-- * Time: **45–60 minutes**
-- * No AI or Google.
-- * Write only SQL queries.
-- * Think like you're answering questions from a business manager.
-- * Assume the table already exists.

-- ---

--  Data Analyst SQL Assessment – Test Paper 1

--  Table: `sales_records`

-- | Column         | Data Type |
-- | -------------- | --------- |
-- | order_id       | INT       |
-- | customer_name  | VARCHAR   |
-- | product_name   | VARCHAR   |
-- | category       | VARCHAR   |
-- | amount         | DECIMAL   |
-- | order_date     | DATE      |
-- | city           | VARCHAR   |
-- | sales_person   | VARCHAR   |
-- | payment_method | VARCHAR   |
-- | status         | VARCHAR   |



--   Question 1 – Revenue Overview

-- The Finance Manager wants to know **how much total revenue the company has generated**.

-- **Task:**
-- Write a query to show the total revenue.


-- SELECT SUM(amount) AS Total_revenue
-- FROM sales_records;




--   Question 2 – Successful Orders

-- The Operations team wants to know **how many orders were successfully delivered**.

-- **Task:**
-- Count only the delivered orders.

-- SELECT status  , COUNT(*) AS order_list
-- FROM sales_records
-- WHERE [status] = 'delivered'
-- GROUP BY STATUS  ;



--   Question 3 – Highest Value Order

-- The CEO wants to see **the most expensive order ever placed**.

-- **Task:**
-- Display all details of the highest-value order.

-- SELECT TOP 1 *
-- FROM sales_records
-- ORDER BY amount DESC;


--   Question 4 – Sales by Category

-- Management wants to know **how much revenue each product category generated**.

-- **Task:**
-- Show total revenue for every category.

-- SELECT category , SUM(amount)  AS Total_Revenue
-- FROM sales_records
-- GROUP BY category;



--   Question 5 – Busy Cities

-- The Marketing team wants to know **which cities have received more than 6 orders**.

-- **Task:**
-- Show city and total number of orders.
 
-- SELECT city,
--        COUNT(*) AS Total_Order
-- FROM sales_records
-- GROUP BY city
-- HAVING COUNT(*) > 6;

--   Question 6 – Premium Customers

-- Find customers whose **average purchase amount is greater than ₹50,000**.

-- Show:

-- * Customer Name
-- * Average Purchase

-- SELECT customer_name  , AVG(amount) AS Average_purs
-- FROM sales_records
-- GROUP BY customer_name
-- HAVING AVG(amount)>50000;



--   Question 7 – Best Performing Salesperson

-- Management wants to know **which salesperson generated the highest total sales**.

-- Show only the top performer.

-- SELECT TOP 1 
--  sales_person,
--  SUM(amount) AS Total_Sales
-- FROM sales_records 
-- GROUP BY sales_person
-- ORDER BY  SUM(amount) DESC;

--   Question 8 – Pending Orders

-- The Logistics team wants to review all **Pending orders**.

-- Display:

-- * Order ID
-- * Customer Name
-- * Amount

-- Sort by highest amount first.

-- SELECT order_id , customer_name , amount 
-- FROM sales_records
-- WHERE [status] = 'pending'
-- ORDER BY amount DESC;



--   Question 9 – Payment Analysis

-- Finance wants to know **how many orders were paid using each payment method**.

-- Show:

-- * Payment Method
-- * Number of Orders

-- SELECT payment_method ,COUNT(order_id) AS Total_orders
-- FROM sales_records
-- GROUP BY payment_method;

--                     -- OR 

-- SELECT payment_method ,COUNT(*) AS Total_orders
-- FROM sales_records
-- GROUP BY payment_method;


--   Question 10 – High Revenue Categories

-- Find categories that generated **more than ₹500,000** in total revenue.

-- SELECT  category ,
-- SUM(amount) AS Total_Revenue
-- FROM sales_records
-- GROUP BY category
-- HAVING SUM(amount) > 500000;





--   Question 11 – Customer Spending Report

-- Show each customer's:

-- * Total Amount Spent

-- Sort from highest spender to lowest.

-- ---

--   Question 12 – Largest Order in Each Category

-- Management wants to know the **largest order placed in every category**.

-- Show:

-- * Category
-- * Highest Order Amount

-- ---

--   Question 13 – Daily Business Report

-- Show:

-- * Order Date
-- * Total Revenue
-- * Number of Orders

-- Sort by date.

-- ---

--   Question 14 – VIP Cities

-- Find cities where the **average order amount is greater than ₹40,000**.

-- ---

--   Question 15 – Executive Dashboard Question

-- The CEO asks:

-- > "Show me the **Top 5 product categories** by total revenue. Along with the total number of orders in each category. Display the highest-performing categories first."

-- Show:

-- * Category
-- * Total Revenue
-- * Total Orders

-- ---

--    Difficulty Level

-- | Questions | Level                                               |
-- | --------- | --------------------------------------------------- |
-- | 1–5       | 🟢 Easy                                             |
-- | 6–10      | 🟡 Medium                                           |
-- | 11–15     | 🔵 Interview Level (using only your current topics) |

-- ---