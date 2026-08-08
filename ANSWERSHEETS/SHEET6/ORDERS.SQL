-- ============================================
-- DATABASE NAME: HAVING_Practice_DB
-- TABLE NAME: Staff_Performance
-- ============================================
 


-- ============================================
-- CREATE TABLE: Staff_Performance
-- ============================================

CREATE TABLE Staff_Performances(
    staff_id INT PRIMARY KEY,
    staff_name VARCHAR(100) NOT NULL,
    department VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    city VARCHAR(50) NOT NULL,
    experience INT NOT NULL,
    status VARCHAR(20) NOT NULL
);


-- ============================================
-- INSERT DATA
-- ============================================

INSERT INTO Staff_Performances
(staff_id, staff_name, department, salary, city, experience, status)
VALUES
(101, 'Amit', 'IT', 60000, 'Delhi', 3, 'Active'),
(102, 'Rahul', 'IT', 75000, 'Delhi', 5, 'Active'),
(103, 'Priya', 'HR', 50000, 'Mumbai', 2, 'Active'),
(104, 'Sneha', 'HR', 55000, 'Mumbai', 4, 'Active'),
(105, 'Rohan', 'Finance', 80000, 'Delhi', 6, 'Active'),
(106, 'Neha', 'Finance', 70000, 'Pune', 4, 'Active'),
(107, 'Karan', 'IT', 90000, 'Pune', 7, 'Active'),
(108, 'Anjali', 'Sales', 45000, 'Delhi', 1, 'Inactive'),
(109, 'Vikash', 'Sales', 55000, 'Delhi', 3, 'Active'),
(110, 'Pooja', 'Sales', 65000, 'Mumbai', 5, 'Active'),
(111, 'Arjun', 'Marketing', 60000, 'Pune', 3, 'Active'),
(112, 'Simran', 'Marketing', 70000, 'Pune', 5, 'Active'),
(113, 'Varun', 'IT', 65000, 'Mumbai', 4, 'Active'),
(114, 'Nisha', 'Finance', 90000, 'Delhi', 8, 'Active'),
(115, 'Mohit', 'HR', 60000, 'Delhi', 6, 'Inactive');


-- ============================================
-- VIEW DATA
-- ============================================

 