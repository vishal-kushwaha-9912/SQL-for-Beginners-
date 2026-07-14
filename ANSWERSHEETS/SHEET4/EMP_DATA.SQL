-- ========== EMPLOYEES_NEW TABLE ==========

CREATE TABLE employees_new (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(20),
    salary DECIMAL(10,2),
    hire_date DATE
);

INSERT INTO employees_new VALUES
(1, 'Arjun', 'Sales', 58000, '2020-02-10'),
(2, 'Karan', 'Sales', 49000, '2021-04-18'),
(3, 'Anjali', 'IT', NULL, '2022-07-05'),   -- NULL salary
(4, 'Simran', 'IT', 68000, '2019-12-20'),
(5, 'Deepak', 'HR', 43000, '2023-01-25'),
(6, 'Pooja', 'Sales', 53000, '2020-09-15');