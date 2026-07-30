create table Performance_Reviews (
Review_id varchar(100) primary key not null,
Employess_id varchar(60) NOT NULL,
Review_date date not null,
Rating varchar(30) not null,
Comments varchar(100) not null,
Reviewed_by varchar(50) not null
);

insert into Performance_Reviews
value

('REV001', 'EMP001', '2026-06-30', 'Excellent', 'Consistently exceeded project expectations.', 'Michael Brown'),
('REV002', 'EMP002', '2026-06-30', 'Good', 'Handled HR operations efficiently.', 'Sophia Wilson'),
('REV003', 'EMP003', '2026-06-30', 'Excellent', 'Delivered accurate financial reports on time.', 'Daniel Anderson'),
('REV004', 'EMP004', '2026-06-30', 'Average', 'Needs improvement in achieving sales targets.', 'Olivia Taylor'),
('REV005', 'EMP005', '2026-06-30', 'Excellent', 'Successfully managed multiple marketing campaigns.', 'William Harris'),
('REV006', 'EMP006', '2026-06-30', 'Outstanding', 'Maintained database performance with zero downtime.', 'Emma Clark'),
('REV007', 'EMP007', '2026-06-30', 'Good', 'Provided excellent customer support services.', 'Benjamin Lewis'),
('REV008', 'EMP008', '2026-06-30', 'Excellent', 'Developed responsive and user-friendly interfaces.', 'Charlotte Walker'),
('REV009', 'EMP009', '2026-06-30', 'Good', 'Prepared detailed financial analysis reports.', 'Henry Young'),
('REV010', 'EMP010', '2026-06-30', 'Outstanding', 'Led the project team successfully and met all deadlines.', 'Amelia King');
