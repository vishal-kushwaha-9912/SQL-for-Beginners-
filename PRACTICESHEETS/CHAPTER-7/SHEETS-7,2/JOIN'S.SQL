-- ============================================
-- SQL JOINS PRACTICE - PEDAGOGICALLY FOCUSED
-- ============================================
-- Master INNER, LEFT, RIGHT, FULL, SELF, CROSS JOINs
-- Difficulty: BASICS, MEDIUM, HARD


-- ============================================
-- SCENARIO 1: GAMING PLATFORM (BASICS LEVEL)
-- ============================================
-- Teaching: INNER JOIN vs LEFT JOIN vs RIGHT JOIN vs FULL OUTER JOIN

CREATE TABLE gamers (
    gamer_id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    registration_date DATE,
    country VARCHAR(30)
);

CREATE TABLE games (
    game_id INT PRIMARY KEY,
    game_name VARCHAR(50) NOT NULL,
    genre VARCHAR(30),
    release_year INT
);

CREATE TABLE player_achievements (
    achievement_id INT PRIMARY KEY,
    gamer_id INT,
    game_id INT,
    achievement_name VARCHAR(50),
    unlocked_date DATE,
    FOREIGN KEY (gamer_id) REFERENCES gamers(gamer_id),
    FOREIGN KEY (game_id) REFERENCES games(game_id)
);

INSERT INTO gamers VALUES
(1, 'ShadowNinja', '2021-05-12', 'USA'),
(2, 'PixelQueen', '2020-08-23', 'Canada'),
(3, 'ThunderStrike', '2022-01-15', 'UK'),
(4, 'MysticFox', '2019-11-30', 'Australia'),
(5, 'IceBreaker', '2023-03-20', 'India'),
(6, 'GhostRider', '2023-06-10', 'Germany');

INSERT INTO games VALUES
(101, 'Dragon Quest', 'RPG', 2020),
(102, 'Cyber Dash', 'Action', 2021),
(103, 'Forest Mystery', 'Adventure', 2019),
(104, 'Space Invaders Pro', 'Shooter', 2022),
(105, 'Silent Night', 'Horror', 2023);

INSERT INTO player_achievements VALUES
(1, 1, 101, 'Dragon Slayer', '2023-06-10'),
(2, 1, 102, 'Speed Demon', '2023-07-15'),
(3, 2, 101, 'Dragon Slayer', '2023-05-20'),
(4, 3, 103, 'Explorer', '2023-08-01'),
(5, 4, 104, 'First Blood', '2023-09-05'),
(6, 2, 104, 'First Blood', '2023-04-12');

-- BASICS LEVEL QUESTIONS:
-- Teaching Focus: Understanding when to use INNER vs LEFT vs FULL JOINs
--
-- Q1. (INNER JOIN) Show username and achievement name for gamers who have unlocked achievements.
--     What happens to gamers with NO achievements in this query?
--
-- Q2. (LEFT JOIN) Show all gamers and their achievements (if any). Include gamers who haven't unlocked any achievement.
--     Which gamer(s) appear with NULL values?
--
-- Q3. (RIGHT JOIN) Show all games and the achievements unlocked in them. 
--     Which game(s) have no achievements yet?
--
-- Q4. (FULL OUTER JOIN) Show all gamers and all games with their achievement connections.
--     How many rows have NULL in gamer_id or game_id columns?


-- ============================================
-- SCENARIO 2: EMPLOYEE MANAGEMENT (MEDIUM LEVEL)
-- ============================================
-- Teaching: Multiple JOINs (3+ tables), SELF JOIN, Many-to-Many relationships

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    position VARCHAR(40),
    manager_id INT,
    department_id INT,
    salary DECIMAL(10, 2),
    FOREIGN KEY (manager_id) REFERENCES employees(employee_id)
);

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    budget DECIMAL(12, 2)
);

CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(60),
    department_id INT,
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE project_assignments (
    assignment_id INT PRIMARY KEY,
    employee_id INT,
    project_id INT,
    role_in_project VARCHAR(40),
    assignment_date DATE,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
);

INSERT INTO departments VALUES
(10, 'Engineering', 500000.00),
(20, 'Marketing', 300000.00),
(30, 'HR', 150000.00);

INSERT INTO employees VALUES
(101, 'Alice Johnson', 'Engineering Manager', NULL, 10, 95000.00),
(102, 'Bob Smith', 'Senior Developer', 101, 10, 85000.00),
(103, 'Carol White', 'Junior Developer', 101, 10, 60000.00),
(104, 'Diana Lee', 'Frontend Developer', 101, 10, 70000.00),
(105, 'Eve Brown', 'Marketing Manager', NULL, 20, 75000.00),
(106, 'Frank Davis', 'Marketing Specialist', 105, 20, 55000.00),
(107, 'Grace Wilson', 'HR Manager', NULL, 30, 65000.00),
(108, 'Henry Miller', 'Backend Developer', 101, 10, 80000.00);

INSERT INTO projects VALUES
(1001, 'Website Redesign', 10, '2023-01-15', '2023-06-30'),
(1002, 'Mobile App v2', 10, '2023-03-01', '2023-09-15'),
(1003, 'Brand Campaign 2023', 20, '2023-02-01', '2023-08-31'),
(1004, 'Data Analytics Platform', 10, '2023-04-01', '2024-02-28');

INSERT INTO project_assignments VALUES
(1, 102, 1001, 'Backend Lead', '2023-01-20'),
(2, 103, 1001, 'Frontend Developer', '2023-01-20'),
(3, 104, 1001, 'UI/UX Designer', '2023-01-20'),
(4, 102, 1002, 'Architecture Advisor', '2023-03-05'),
(5, 108, 1002, 'Backend Developer', '2023-03-05'),
(6, 104, 1002, 'Frontend Lead', '2023-03-05'),
(7, 105, 1003, 'Strategy Lead', '2023-02-10'),
(8, 106, 1003, 'Content Creator', '2023-02-10'),
(9, 102, 1004, 'Technical Lead', '2023-04-10'),
(10, 108, 1004, 'Data Engineer', '2023-04-10');

-- MEDIUM LEVEL QUESTIONS:
-- Teaching Focus: Multiple JOINs, SELF JOIN, Many-to-Many relationships
--
-- Q5. (3-Table JOIN) Show all employees, their department names, and their manager's names.
--     Use a SELF JOIN to connect managers. Handle NULL manager_id for top-level managers.
--
-- Q6. (Multiple JOINs with Many-to-Many) Show each project with all assigned employees and their roles.
--     Include employees who are not assigned to any project using LEFT JOIN.
--
-- Q7. (3-Table LEFT JOIN) Display all departments, their projects, and the employees assigned to those projects.
--     What happens if a department has no projects?
--
-- Q8. (JOIN with Filtering) Find all employees working on multiple projects (join project_assignments with itself 
--     to find employee_ids appearing more than once). Show their name and number of projects.


-- ============================================
-- SCENARIO 3: SUPPLIER INVENTORY SYSTEM (HARD LEVEL)
-- ============================================
-- Teaching: Complex multi-table JOINs, CROSS JOIN, Handling duplicates from JOINs, 
-- Performance considerations, Edge cases

CREATE TABLE suppliers (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(60),
    country VARCHAR(30),
    contact_person VARCHAR(50)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(60),
    category VARCHAR(30),
    price DECIMAL(10, 2)
);

CREATE TABLE supplier_products (
    supplier_id INT,
    product_id INT,
    unit_cost DECIMAL(10, 2),
    lead_time_days INT,
    PRIMARY KEY (supplier_id, product_id),
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE warehouses (
    warehouse_id INT PRIMARY KEY,
    warehouse_name VARCHAR(60),
    location VARCHAR(50)
);

CREATE TABLE inventory (
    inventory_id INT PRIMARY KEY,
    product_id INT,
    warehouse_id INT,
    quantity_on_hand INT,
    reorder_level INT,
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (warehouse_id) REFERENCES warehouses(warehouse_id)
);

CREATE TABLE purchase_orders (
    order_id INT PRIMARY KEY,
    supplier_id INT,
    product_id INT,
    quantity_ordered INT,
    order_date DATE,
    delivery_date DATE,
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO suppliers VALUES
(1, 'TechParts Global', 'USA', 'John Doe'),
(2, 'EuroComponents', 'Germany', 'Hans Mueller'),
(3, 'Asian Electronics', 'China', 'Li Wang'),
(4, 'Quality Supplies', 'Japan', 'Yuki Tanaka'),
(5, 'Budget Parts Inc', 'India', 'Rajesh Kumar');

INSERT INTO products VALUES
(101, 'CPU Processor', 'Electronics', 250.00),
(102, 'RAM Module 8GB', 'Electronics', 45.00),
(103, 'SSD 512GB', 'Storage', 80.00),
(104, 'Motherboard', 'Electronics', 150.00),
(105, 'Power Supply 500W', 'PSU', 60.00),
(106, 'Cooling Fan', 'Cooling', 25.00);

INSERT INTO supplier_products VALUES
(1, 101, 200.00, 7),
(1, 102, 35.00, 5),
(1, 104, 120.00, 7),
(2, 101, 210.00, 10),
(2, 103, 70.00, 14),
(3, 102, 32.00, 3),
(3, 103, 65.00, 3),
(3, 105, 50.00, 5),
(4, 104, 130.00, 14),
(4, 106, 20.00, 7),
(5, 105, 45.00, 2),
(5, 106, 18.00, 2);

INSERT INTO warehouses VALUES
(1, 'North Hub', 'New York'),
(2, 'Central Hub', 'Chicago'),
(3, 'South Hub', 'Atlanta'),
(4, 'West Hub', 'Los Angeles');

INSERT INTO inventory VALUES
(1, 101, 1, 15, 5),
(2, 102, 1, 50, 20),
(3, 103, 1, 30, 10),
(4, 101, 2, 8, 5),
(5, 104, 2, 12, 5),
(6, 105, 2, 40, 15),
(7, 102, 3, 25, 10),
(8, 106, 3, 60, 20),
(9, 101, 4, 5, 5),
(10, 103, 4, 20, 10);

INSERT INTO purchase_orders VALUES
(2001, 1, 101, 10, '2023-08-15', '2023-08-25'),
(2002, 1, 102, 20, '2023-08-16', '2023-08-22'),
(2003, 2, 101, 15, '2023-08-18', '2023-09-05'),
(2004, 3, 102, 30, '2023-08-20', '2023-08-25'),
(2005, 3, 103, 25, '2023-08-21', '2023-08-27'),
(2006, 4, 106, 50, '2023-08-22', '2023-09-02'),
(2007, 5, 105, 100, '2023-08-25', '2023-08-28');

-- HARD LEVEL QUESTIONS:
-- Teaching Focus: Complex JOINs, CROSS JOIN, Handling JOIN duplicates, Performance awareness
--
-- Q9. (Complex Multi-Table JOIN) Find all products that are supplied by multiple suppliers.
--     Show: product name, supplier names, unit costs from each supplier, and lead times.
--     Hint: You'll need to JOIN supplier_products with itself or use multiple JOINs.
--
-- Q10. (CROSS JOIN + Filtering) Find which products could theoretically be stocked in each warehouse
--      (all products CROSS JOINed with all warehouses), but then FILTER to show only combinations
--      where that product is actually NOT currently in inventory. This shows "missing stock opportunities".
--
-- Q11. (Handling JOIN Duplicates) Show purchase orders with supplier names and product names.
--      Some products might be supplied by multiple suppliers. Count how many rows you get and explain
--      why. Is this the correct result? How would you deduplicate if needed?
--
-- Q12. (Advanced Multi-Table Join with Aggregation) For each product, show:
--      - Product name and price
--      - Number of suppliers offering it
--      - Minimum and maximum unit cost across all suppliers
--      - Total quantity currently in stock across all warehouses
--      - Number of purchase orders for this product
--      This requires JOINing 5 tables. Think about the JOIN order and potential duplicates.