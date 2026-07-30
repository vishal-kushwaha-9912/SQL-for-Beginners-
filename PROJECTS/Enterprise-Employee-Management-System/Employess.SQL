create table Employess(
Employess_id varchar(60) primary key,
Employess_name varchar(100) not null,
Department varchar(100) not null,
salary decimal(10,2) not null
);
INSERT INTO Employess
(Employess_id, Employess_name, Department, salary)
VALUES
('EMP001', 'Vishal Kushwaha', 'IT', 65000.00),
('EMP002', 'Rahul Sharma', 'HR', 45000.00),
('EMP003', 'Priya Verma', 'Finance', 55000.00),
('EMP004', 'Amit Patel', 'Sales', 48000.00),
('EMP005', 'Sneha Gupta', 'Marketing', 70000.00),
('EMP006', 'Rohan Singh', 'IT', 72000.00),
('EMP007', 'Anjali Yadav', 'Support', 40000.00),
('EMP008', 'Karan Mehta', 'IT', 62000.00),
('EMP009', 'Neha Joshi', 'Finance', 60000.00),
('EMP010', 'Arjun Mishra', 'Management', 85000.00);
