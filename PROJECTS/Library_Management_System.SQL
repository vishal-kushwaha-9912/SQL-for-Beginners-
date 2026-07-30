CREATE DATABASE Library_Management_System;
USE Library_Management_System;

CREATE TABLE BOOKS(
Books_id int primary key , 
title varchar(100)not null,
Author varchar(100)not null ,
Genre  varchar (100)not null,
publication_year int not null  ,
price decimal(10,2)not null,
Available_copies int not null
);

insert into BOOKS
(Books_id, title, Author, Genre, publication_year,price,Available_copies)
value 
(1, 'Atomic Habits', 'James Clear', 'Self Help', 2018, 25.99, 10),
(2, 'Python Crash Course', 'Eric Matthes', 'Programming', 2023, 39.99, 5),
(3, 'The Alchemist', 'Paulo Coelho', 'Fiction', 1988, 15.99, 8),
(4, 'Clean Code', 'Robert C. Martin', 'Programming', 2008, 45.50, 6),
(5, 'The Psychology of Money', 'Morgan Housel', 'Finance', 2020, 22.75, 12),
(6, 'Deep Work', 'Cal Newport', 'Productivity', 2016, 18.99, 7),
(7, 'Rich Dad Poor Dad', 'Robert T. Kiyosaki', 'Finance', 1997, 19.99, 9),
(8, 'Introduction to Algorithms', 'Thomas H. Cormen', 'Computer Science', 2022, 89.99, 4),
(9, 'The Pragmatic Programmer', 'Andrew Hunt', 'Programming', 2019, 49.99, 5),
(10, 'Think and Grow Rich', 'Napoleon Hill', 'Self Help', 1937, 17.50, 11);



create table MEMBERS(
member_id int primary key ,
first_name varchar(80) not null,
last_name varchar(80)not null,
Email varchar(120) UNIQUE not null,
phone_number varchar(15)not null,
join_date date not null
);

INSERT INTO Members
VALUES
(101, 'Vishal', 'Kushwaha', 'vishal@email.com', '9876543210', '2026-07-01'),
(102, 'Rahul', 'Sharma', 'rahul@email.com', '9876501234', '2026-07-15'),
(103, 'Priya', 'Verma', 'priya@email.com', '9876512345', '2026-07-20'),
(104, 'Amit', 'Patel', 'amit@email.com', '9876523456', '2026-08-01'),
(105, 'Sneha', 'Gupta', 'sneha@email.com', '9876534567', '2026-08-05'),
(106, 'Rohan', 'Singh', 'rohan@email.com', '9876545678', '2026-08-10'),
(107, 'Anjali', 'Yadav', 'anjali@email.com', '9876556789', '2026-08-15'),
(108, 'Karan', 'Mehta', 'karan@email.com', '9876567890', '2026-08-20'),
(109, 'Neha', 'Joshi', 'neha@email.com', '9876578901', '2026-08-25'),
(110, 'Arjun', 'Mishra', 'arjun@email.com', '9876589012', '2026-09-01');



create table borrow_history (
Borrowid int primary key,
member_id int  not null,
Books_id  int not null ,
Borrow_Date date not null,
Return_date date ,
FOREIGN key (member_id )  REFERENCES Members(member_id),
 FOREIGN KEY (Books_id) REFERENCES BOOKS(Books_id)
);

INSERT INTO borrow_history
VALUES
(1, 101, 1, '2026-07-20', '2026-07-30'),
(2, 102, 2, '2026-07-21', '2026-07-31'),
(3, 103, 3, '2026-07-22', NULL),
(4, 104, 4, '2026-07-23', '2026-08-02'),
(5, 105, 5, '2026-07-24', NULL),
(6, 106, 6, '2026-07-25', '2026-08-04'),
(7, 107, 7, '2026-07-26', NULL),
(8, 108, 8, '2026-07-27', '2026-08-06'),
(9, 109, 9, '2026-07-28', NULL),
(10, 110, 10, '2026-07-29', '2026-08-08');


-- select * from BOOKS
-- select * from  borrow_history

-- SELECT COUNT(*) FROM Members;
-- SELECT COUNT(*) FROM BOOKS;


-- SELECT *
-- FROM borrow_history
-- WHERE Return_date IS NULL;



