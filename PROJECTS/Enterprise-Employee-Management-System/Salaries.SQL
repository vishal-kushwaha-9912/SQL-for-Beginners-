CREATE TABLE Salaries (
    salary_id INT PRIMARY KEY,
    Employess_id varchar(60) NOT NULL,
    salary_amount DECIMAL(10,2) NOT NULL,
    salary_date DATE NOT NULL,
    bonus DECIMAL(10,2) DEFAULT 0.00,
    payment_method VARCHAR(50) NOT NULL,
    payment_status VARCHAR(20) NOT NULL,
       FOREIGN KEY (Employess_id)
        REFERENCES Employess(Employess_id)
);

insert into salaries
values
(1, 'EMP001', 65000.00, '2026-07-31', 5000.00, 'Bank Transfer', 'Paid'),
(2, 'EMP002', 45000.00, '2026-07-31', 2000.00, 'UPI', 'Paid'),
(3, 'EMP003', 55000.00, '2026-07-31', 3000.00, 'Bank Transfer', 'Paid'),
(4, 'EMP004', 48000.00, '2026-07-31', 1500.00, 'Cash', 'Paid'),
(5, 'EMP005', 70000.00, '2026-07-31', 6000.00, 'Bank Transfer', 'Paid'),
(6, 'EMP006', 72000.00, '2026-07-31', 4000.00, 'Cheque', 'Pending'),
(7, 'EMP007', 40000.00, '2026-07-31', 1000.00, 'UPI', 'Paid'),
(8, 'EMP008', 62000.00, '2026-07-31', 3500.00, 'Bank Transfer', 'Paid'),
(9, 'EMP009', 60000.00, '2026-07-31', 2500.00, 'Cash', 'Pending'),
(10, 'EMP010', 85000.00, '2026-07-31', 8000.00, 'Bank Transfer', 'Paid');