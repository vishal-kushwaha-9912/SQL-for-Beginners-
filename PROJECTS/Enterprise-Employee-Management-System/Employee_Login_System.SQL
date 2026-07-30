create table Login_System (
Employess_id VARCHAR(150) NOT NULL,
Username VARCHAR(50) unique NOT NULL,
Password_hash VARCHAR(20) not null,
 email VARCHAR(100) UNIQUE NOT NULL,
    role VARCHAR(30) NOT NULL,
    account_status VARCHAR(20) NOT NULL,
    last_login DATETIME,
    created_at DATETIME NOT NULL,
    updated_at DATETIME,

    FOREIGN KEY (Employess_id)
        REFERENCES Employess(Employess_id)
        );

insert into Login_System
value
('EMP001', 'vishal.k', 'Vishal@123', 'vishal.k@company.com', 'Admin', 'Active', '2026-07-30 09:15:22', '2026-01-15 09:00:00', '2026-07-30 09:15:22'),
('EMP002', 'rahul.s', 'Rahul@123', 'rahul.s@company.com', 'HR', 'Active', '2026-07-30 08:40:15', '2026-01-20 10:30:00', '2026-07-30 08:40:15'),
('EMP003', 'priya.v', 'Priya@123', 'priya.v@company.com', 'Employee', 'Active', '2026-07-29 17:25:41', '2026-02-01 08:15:00', '2026-07-29 17:25:41'),
('EMP004', 'amit.p', 'Amit@123', 'amit.p@company.com', 'Employee', 'Inactive', '2026-02-10 11:00:00', '2026-07-20 14:12:35', '2026-07-20 14:12:35'),
('EMP005', 'sneha.g', 'Sneha@123', 'sneha.g@company.com', 'Manager', 'Active', '2026-07-30 10:05:12', '2026-03-05 09:45:00', '2026-07-30 10:05:12'),
('EMP006', 'rohan.s', 'Rohan@123', 'rohan.s@company.com', 'Employee', 'Locked', '2026-07-18 16:30:45', '2026-03-20 10:20:00', '2026-07-18 16:30:45'),
('EMP007', 'anjali.y', 'Anjali@123', 'anjali.y@company.com', 'Employee', 'Active', '2026-07-30 07:55:08', '2026-04-01 08:30:00', '2026-07-30 07:55:08'),
('EMP008', 'karan.m', 'Karan@123', 'karan.m@company.com', 'Employee', 'Active', '2026-07-29 19:48:20', '2026-04-15 09:10:00', '2026-07-29 19:48:20'),
('EMP009', 'neha.j', 'Neha@123', 'neha.j@company.com', 'Manager', 'Active', '2026-07-30 11:22:55', '2026-05-01 10:00:00', '2026-07-30 11:22:55'),
('EMP010', 'arjun.m', 'Arjun@123', 'arjun.m@company.com', 'Admin', 'Active', '2026-07-30 08:05:33', '2026-05-20 09:30:00', '2026-07-30 08:05:33');
