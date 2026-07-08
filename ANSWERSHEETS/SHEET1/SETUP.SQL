
CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    age INT,
    salary INT,
    department VARCHAR(50),
    city VARCHAR(50),
    email VARCHAR(50)
);

INSERT INTO employees VALUES 
(101, 'Rahul', 28, 50000, 'IT', 'Delhi', 'rahul@company.com'),
(102, 'Priya', 32, 60000, 'HR', 'Mumbai', 'priya@company.com'),
(103, 'Aman', 25, 45000, 'IT', 'Delhi', NULL),
(104, 'Neha', 35, 70000, 'Finance', 'Bangalore', 'neha@company.com'),
(105, 'Rohan', 29, 55000, 'IT', 'Pune', 'rohan@company.com'),
(106, 'Simran', 27, 48000, 'HR', 'Delhi', 'simran@company.com'),
(107, 'Vikram', 31, 65000, 'Finance', 'Mumbai', 'vikram@company.com'),
(108, 'Anaya', 26, 52000, 'IT', 'Bangalore', NULL);