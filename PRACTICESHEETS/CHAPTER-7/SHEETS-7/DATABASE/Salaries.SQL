
-- =========================
-- 6. Payroll_Register
-- =========================
CREATE TABLE Payroll_Register (
    employee_id INT PRIMARY KEY,
    salary DECIMAL(10,2),
    FOREIGN KEY (employee_id)
        REFERENCES Workforce_Record(employee_id)
);

INSERT INTO Payroll_Register VALUES
(101,90000),
(102,70000),
(103,50000),
(104,80000),
(105,45000),
(106,55000),
(107,48000),
(108,62000),
(109,75000),
(110,40000);