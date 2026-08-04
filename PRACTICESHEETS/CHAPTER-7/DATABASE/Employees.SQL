-- =========================
-- 3. Workforce_Record
-- =========================
CREATE TABLE Workforce_Record (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department_id INT,
    manager_id INT,
    FOREIGN KEY (department_id)
        REFERENCES Division_Center(department_id)
);

INSERT INTO Workforce_Record VALUES
(101,'Amit',2,NULL),
(102,'Rahul',2,101),
(103,'Priya',1,101),
(104,'Sneha',3,101),
(105,'Rohan',4,102),
(106,'Anjali',5,102),
(107,'Vikas',NULL,101),
(108,'Karan',2,101),
(109,'Pooja',3,104),
(110,'Neha',NULL,NULL);