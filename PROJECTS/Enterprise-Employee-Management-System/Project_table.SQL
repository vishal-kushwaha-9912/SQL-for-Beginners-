
create table Project_table(
project_id varchar(100) primary key not null,
project_name varchar(100) not null,
start_date date ,
end_date date,
budgest decimal (12,2) not null,
status varchar(60) not null
);

insert into Project_table
value 
('P001', 'Employee Management System', '2026-01-15', '2026-06-30', 250000.00, 'Completed'),
('P002', 'Library Management System', '2026-02-01', '2026-07-20', 180000.00, 'Completed'),
('P003', 'E-Commerce Website', '2026-03-10', '2026-09-30', 500000.00, 'In Progress'),
('P004', 'Hospital Management System', '2026-04-05', '2026-12-15', 650000.00, 'Planning'),
('P005', 'Payroll Management System', '2026-05-20', '2026-11-30', 320000.00, 'In Progress'),
('P006', 'Inventory Management System', '2026-06-01', '2026-10-31', 275000.00, 'Completed'),
('P007', 'Online Banking System', '2026-07-15', '2027-01-31', 850000.00, 'In Progress'),
('P008', 'Student Management Portal', '2026-08-10', '2027-02-28', 210000.00, 'Planning'),
('P009', 'Hotel Booking Application', '2026-09-01', '2027-03-31', 450000.00, 'In Progress'),
('P010', 'Customer Relationship Management', '2026-10-05', '2027-05-31', 600000.00, 'Planning');

