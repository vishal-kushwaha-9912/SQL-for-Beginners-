create table Employee_Project (
Employess_id varchar(60) NOT NULL,
project_id varchar(100) ,
assigned_date date not null,
role varchar(100) not null,
assignment_status VARCHAR(30) NOT NULL,
FOREIGN KEY (Employess_id) REFERENCES Employess(Employess_id),
    FOREIGN KEY (project_id) REFERENCES Project_table(project_id)


);

insert into Employee_Project
values
('EMP001', 'P001', '2026-01-15', 'Software Engineer', 'Active'),
('EMP002', 'P002', '2026-02-01', 'HR Coordinator', 'Completed'),
('EMP003', 'P003', '2026-03-10', 'Financial Analyst', 'Active'),
('EMP004', 'P004', '2026-04-05', 'Sales Executive', 'On Hold'),
('EMP005', 'P005', '2026-05-20', 'Marketing Manager', 'Active'),
('EMP006', 'P006', '2026-06-01', 'Database Administrator', 'Completed'),
('EMP007', 'P007', '2026-07-15', 'Support Engineer', 'Active'),
('EMP008', 'P008', '2026-08-10', 'Frontend Developer', 'Active'),
('EMP009', 'P009', '2026-09-01', 'Financial Consultant', 'On Hold'),
('EMP010', 'P010', '2026-10-05', 'Project Manager', 'Active');