-- ============================================
-- SCENARIO 3: FILM FESTIVAL NOMINATION SYSTEM (HARD LEVEL)
-- ============================================
-- Teaching: Complex multi-table JOINs, CROSS JOIN, Handling duplicates from JOINs, 
-- Performance considerations, Edge cases
 
CREATE TABLE filmmakers (
    filmmaker_id INT PRIMARY KEY,
    filmmaker_name VARCHAR(60),
    origin_country VARCHAR(30),
    specialization VARCHAR(40)
);
 
CREATE TABLE festivals (
    festival_id INT PRIMARY KEY,
    festival_name VARCHAR(60),
    host_city VARCHAR(40),
    year INT
);
 
CREATE TABLE films (
    film_id INT PRIMARY KEY,
    film_title VARCHAR(80),
    duration_minutes INT,
    release_year INT,
    primary_filmmaker_id INT,
    FOREIGN KEY (primary_filmmaker_id) REFERENCES filmmakers(filmmaker_id)
);
 
CREATE TABLE film_crew (
    crew_id INT PRIMARY KEY,
    filmmaker_id INT,
    film_id INT,
    role_type VARCHAR(40),
    FOREIGN KEY (filmmaker_id) REFERENCES filmmakers(filmmaker_id),
    FOREIGN KEY (film_id) REFERENCES films(film_id)
);
 
CREATE TABLE screening_venues (
    venue_id INT PRIMARY KEY,
    venue_name VARCHAR(60),
    festival_id INT,
    capacity INT,
    FOREIGN KEY (festival_id) REFERENCES festivals(festival_id)
);
 
CREATE TABLE film_screenings (
    screening_id INT PRIMARY KEY,
    film_id INT,
    venue_id INT,
    screening_date DATE,
    time_slot VARCHAR(20),
    FOREIGN KEY (film_id) REFERENCES films(film_id),
    FOREIGN KEY (venue_id) REFERENCES screening_venues(venue_id)
);
 
INSERT INTO filmmakers VALUES
(301, 'Spike Lee', 'USA', 'Director'),
(302, 'Wong Kar-wai', 'Hong Kong', 'Director'),
(303, 'Ava DuVernay', 'USA', 'Producer'),
(304, 'Bong Joon-ho', 'South Korea', 'Director'),
(305, 'Greta Gerwig', 'USA', 'Director'),
(306, 'Denis Villeneuve', 'Canada', 'Director'),
(307, 'Lynne Ramsay', 'UK', 'Cinematographer');
 
INSERT INTO festivals VALUES
(401, 'Sundance Film Festival', 'Park City', 2024),
(402, 'Cannes Film Festival', 'Cannes', 2024),
(403, 'Berlin International', 'Berlin', 2024);
 
INSERT INTO films VALUES
(601, 'Urban Echoes', 95, 2023, 301),
(602, 'Neon Memories', 118, 2023, 302),
(603, 'Freedom Stories', 142, 2023, 303),
(604, 'Class Divide', 132, 2023, 304),
(605, 'Retro Dreams', 105, 2023, 305),
(606, 'Silent Night', 156, 2023, 306);
 
INSERT INTO film_crew VALUES
(701, 301, 601, 'Director'),
(702, 307, 601, 'Cinematographer'),
(703, 302, 602, 'Director'),
(704, 303, 603, 'Producer'),
(705, 304, 604, 'Director'),
(706, 305, 605, 'Director'),
(707, 306, 606, 'Director'),
(708, 307, 606, 'Cinematographer');
 
INSERT INTO screening_venues VALUES
(801, 'Main Theater', 401, 1200),
(802, 'Independent Hall', 401, 400),
(803, 'Grand Palais', 402, 2000),
(804, 'Petit Palais', 402, 600),
(805, 'Berlin Kino', 403, 900);
 
INSERT INTO film_screenings VALUES
(901, 601, 801, '2024-01-20', '19:00'),
(902, 602, 803, '2024-05-14', '20:30'),
(903, 603, 802, '2024-01-21', '15:00'),
(904, 604, 804, '2024-05-15', '18:00'),
(905, 605, 801, '2024-01-22', '16:30'),
(906, 606, 805, '2024-02-16', '20:00'),
(907, 601, 802, '2024-01-23', '14:00'),
(908, 602, 803, '2024-05-16', '21:00');
 
-- HARD LEVEL QUESTIONS:
-- Teaching Focus: Complex JOINs, CROSS JOIN, Handling JOIN duplicates, Performance awareness
--
-- Q9. (Complex Multi-Table JOIN) Find all films that have been screened at multiple festivals.
--     Show: film title, all festivals where it screened, venue names, and screening dates.
--     Hint: You'll need to JOIN through screening_venues to get festival information.
--
-- Q10. (CROSS JOIN + Filtering) Create a theoretical pairing of every filmmaker with every festival.
--      Then filter to show only those pairings where that filmmaker's film was actually screened 
--      at that festival. This identifies "presence" opportunities.
--
-- Q11. (Handling JOIN Duplicates) Show all films with their crew members and the festivals where 
--      they're being screened. Some films may have multiple crew members and multiple screenings.
--      Count how many rows you get and explain why duplicates occur. How would you deduplicate?
--
-- Q12. (Advanced Multi-Table Join) For each filmmaker, show:
--      - Filmmaker name and country
--      - Number of films they worked on
--      - Total number of screening venues those films appeared in
--      - List of all festivals where their films screened (avoid duplicates)
--      - Total screenings across all their films
--      This requires JOINing 5-6 tables. Think about the JOIN order and GROUP BY complexity.
 
 