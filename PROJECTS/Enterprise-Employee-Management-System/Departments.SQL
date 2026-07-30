create table Departments(
Departments_id int primary key not null,
Departments_name varchar(100)not null,
Office_Location varchar(100) not null,
contact_email varchar(100) unique not null,
phone_number varchar(15)unique not null
);

insert into  Departments 
VALUES
(1, 'Information Technology', 'New Delhi', 'it@company.com', '9876501001'),
(2, 'Human Resources', 'Mumbai', 'hr@company.com', '9876501002'),
(3, 'Finance', 'Bengaluru', 'finance@company.com', '9876501003'),
(4, 'Sales', 'Hyderabad', 'sales@company.com', '9876501004'),
(5, 'Marketing', 'Pune', 'marketing@company.com', '9876501005'),
(6, 'Customer Support', 'Chennai', 'support@company.com', '9876501006'),
(7, 'Research & Development', 'Noida', 'rnd@company.com', '9876501007'),
(8, 'Operations', 'Kolkata', 'operations@company.com', '9876501008'),
(9, 'Administration', 'Ahmedabad', 'admin@company.com', '9876501009'),
(10, 'Legal', 'Jaipur', 'legal@company.com', '9876501010');