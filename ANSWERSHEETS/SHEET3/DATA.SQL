-- 1. Create and Populate Employees Table
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    hire_date DATE,
    city VARCHAR(50)
);

INSERT INTO Employees (emp_id, emp_name, department, salary, hire_date, city) VALUES
(1, 'Rahul', 'IT', 50000, '2020-03-15', 'Mumbai'),
(2, 'Aman', 'Sales', 45000, '2021-06-20', 'Delhi'),
(3, 'Neha', 'IT', 70000, '2018-11-10', 'Bangalore'),
(4, 'Priya', 'HR', 55000, '2019-01-05', 'Mumbai'),
(5, 'Ravi', 'IT', 45000, '2022-02-14', 'Pune'),
(6, 'Mohit', 'HR', 40000, '2020-09-22', 'Chennai'),
(7, 'Isha', 'Sales', 52000, '2021-04-30', 'Delhi'),
(8, 'Vikram', 'Sales', 48000, '2022-01-18', 'Mumbai');


