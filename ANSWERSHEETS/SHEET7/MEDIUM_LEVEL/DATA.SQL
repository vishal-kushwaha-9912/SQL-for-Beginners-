
-- ============================================
-- SCENARIO 2: UNIVERSITY LIBRARY SYSTEM (MEDIUM LEVEL)
-- ============================================
-- Teaching: Multiple JOINs (3+ tables), SELF JOIN, Many-to-Many relationships
 
CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    author_fullname VARCHAR(60),
    birth_year INT,
    nationality VARCHAR(30),
    mentor_author_id INT,
    FOREIGN KEY (mentor_author_id) REFERENCES authors(author_id)
);
 
CREATE TABLE subject_categories (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(50),
    department_offering VARCHAR(40)
);
 
CREATE TABLE publications (
    publication_id INT PRIMARY KEY,
    title VARCHAR(80),
    subject_id INT,
    publication_year INT,
    pages INT,
    FOREIGN KEY (subject_id) REFERENCES subject_categories(subject_id)
);
 
CREATE TABLE publication_authorship (
    authorship_id INT PRIMARY KEY,
    author_id INT,
    publication_id INT,
    contribution_type VARCHAR(40),
    listed_order INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id),
    FOREIGN KEY (publication_id) REFERENCES publications(publication_id)
);
 
INSERT INTO subject_categories VALUES
(1, 'Quantum Physics', 'Science'),
(2, 'Ancient History', 'Humanities'),
(3, 'Marine Biology', 'Science'),
(4, 'Renaissance Art', 'Arts');
 
INSERT INTO authors VALUES
(201, 'Marie Curie', 1867, 'Polish-French', NULL),
(202, 'Albert Einstein', 1879, 'German', NULL),
(203, 'Niels Bohr', 1885, 'Danish', 202),
(204, 'Rosalind Franklin', 1920, 'British', 201),
(205, 'Stephen Hawking', 1942, 'British', 203),
(206, 'Giorgio Vasari', 1511, 'Italian', NULL),
(207, 'Leonardo da Vinci', 1452, 'Italian', 206);
 
INSERT INTO publications VALUES
(501, 'Radioactivity and Its Properties', 1, 1903, 245),
(502, 'On the Electrodynamics of Moving Bodies', 1, 1905, 30),
(503, 'Theory of Atomic Structure', 1, 1913, 156),
(504, 'DNA Structure and X-ray Diffraction', 3, 1952, 89),
(505, 'Brief History of Time', 1, 1988, 256),
(506, 'Lives of the Artists', 2, 1550, 912);
 
INSERT INTO publication_authorship VALUES
(1, 201, 501, 'Primary Author', 1),
(2, 201, 501, 'Co-Author', 2),
(3, 202, 502, 'Primary Author', 1),
(4, 203, 503, 'Primary Author', 1),
(5, 202, 503, 'Contributor', 2),
(6, 204, 504, 'Lead Researcher', 1),
(7, 205, 505, 'Primary Author', 1),
(8, 203, 505, 'Contributor', 2),
(9, 206, 506, 'Primary Author', 1);