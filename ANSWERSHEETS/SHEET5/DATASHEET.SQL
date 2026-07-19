CREATE TABLE employees_NEWS (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);

INSERT INTO employees_NEWS VALUES
(1, 'Rajesh', 'IT', 52000, '2021-01-18'),
(2, 'Priya', 'Sales', 47000, '2022-04-12'),
(3, 'Ankit', 'IT', 68000, '2019-08-25'),
(4, 'Sunita', 'HR', 56000, '2020-02-10'),
(5, 'Alok', 'IT', 43000, '2023-06-05'),
(6, 'Geeta', 'HR', 41000, '2021-11-30');