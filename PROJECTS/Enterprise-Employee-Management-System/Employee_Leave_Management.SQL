create table Leave_Management (
Leave_ID varchar(30) primary key ,
Employess_name VARCHAR(100) NOT NULL,
Leave_Type VARCHAR(100) NOT NULL,
Start_Date date not null,
End_Date date not null, 
Reason varchar(200) not null,
Leave_Status VARCHAR(20) NOT NULL,
    Applied_Date DATE NOT NULL,
    Approved_By VARCHAR(100),
    Approval_Date DATE
);

insert into Leave_Management
value 
('L001', 'Vishal Kushwaha', 'Annual Leave', '2026-08-01', '2026-08-05', 'Family Vacation', 'Approved', '2026-07-20', 'Michael Brown', '2026-07-22'),

('L002', 'Rahul Sharma', 'Sick Leave', '2026-08-03', '2026-08-04', 'High Fever', 'Approved', '2026-08-02', 'Sophia Wilson', '2026-08-02'),

('L003', 'Priya Verma', 'Casual Leave', '2026-08-10', '2026-08-11', 'Personal Work', 'Pending', '2026-08-05', NULL, NULL),

('L004', 'Amit Patel', 'Emergency Leave', '2026-08-12', '2026-08-14', 'Family Emergency', 'Approved', '2026-08-08', 'Daniel Anderson', '2026-08-09'),

('L005', 'Sneha Gupta', 'Maternity Leave', '2026-09-01', '2026-11-30', 'Maternity Leave', 'Approved', '2026-08-20', 'Emma Clark', '2026-08-22'),

('L006', 'Rohan Singh', 'Sick Leave', '2026-08-18', '2026-08-20', 'Medical Treatment', 'Rejected', '2026-08-15', 'Benjamin Lewis', '2026-08-16'),

('L007', 'Anjali Yadav', 'Annual Leave', '2026-09-10', '2026-09-15', 'Holiday Trip', 'Pending', '2026-08-30', NULL, NULL),

('L008', 'Karan Mehta', 'Casual Leave', '2026-08-25', '2026-08-25', 'Bank Work', 'Approved', '2026-08-22', 'Charlotte Walker', '2026-08-23'),

('L009', 'Neha Joshi', 'Work From Home', '2026-08-28', '2026-08-29', 'Health Recovery', 'Approved', '2026-08-26', 'Henry Young', '2026-08-27'),

('L010', 'Arjun Mishra', 'Paternity Leave', '2026-09-05', '2026-09-12', 'Newborn Baby Care', 'Approved', '2026-08-28', 'Amelia King', '2026-08-29');
