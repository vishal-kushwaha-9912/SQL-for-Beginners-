-- ============================================
-- SQL JOINS PRACTICE - PEDAGOGICALLY FOCUSED
-- ============================================
-- Master INNER, LEFT, RIGHT, FULL, SELF, CROSS JOINs
-- Difficulty: BASICS, MEDIUM, HARD


-- ============================================
-- SCENARIO 1: GAMING PLATFORM (BASICS LEVEL)
-- ============================================
-- Teaching: INNER JOIN vs LEFT JOIN vs RIGHT JOIN vs FULL OUTER JOIN

CREATE TABLE gamers (
    gamer_id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    registration_date DATE,
    country VARCHAR(30)
);

CREATE TABLE games (
    game_id INT PRIMARY KEY,
    game_name VARCHAR(50) NOT NULL,
    genre VARCHAR(30),
    release_year INT
);

CREATE TABLE player_achievements (
    achievement_id INT PRIMARY KEY,
    gamer_id INT,
    game_id INT,
    achievement_name VARCHAR(50),
    unlocked_date DATE,
    FOREIGN KEY (gamer_id) REFERENCES gamers(gamer_id),
    FOREIGN KEY (game_id) REFERENCES games(game_id)
);

INSERT INTO gamers VALUES
(1, 'ShadowNinja', '2021-05-12', 'USA'),
(2, 'PixelQueen', '2020-08-23', 'Canada'),
(3, 'ThunderStrike', '2022-01-15', 'UK'),
(4, 'MysticFox', '2019-11-30', 'Australia'),
(5, 'IceBreaker', '2023-03-20', 'India'),
(6, 'GhostRider', '2023-06-10', 'Germany');

INSERT INTO games VALUES
(101, 'Dragon Quest', 'RPG', 2020),
(102, 'Cyber Dash', 'Action', 2021),
(103, 'Forest Mystery', 'Adventure', 2019),
(104, 'Space Invaders Pro', 'Shooter', 2022),
(105, 'Silent Night', 'Horror', 2023);

INSERT INTO player_achievements VALUES
(1, 1, 101, 'Dragon Slayer', '2023-06-10'),
(2, 1, 102, 'Speed Demon', '2023-07-15'),
(3, 2, 101, 'Dragon Slayer', '2023-05-20'),
(4, 3, 103, 'Explorer', '2023-08-01'),
(5, 4, 104, 'First Blood', '2023-09-05'),
(6, 2, 104, 'First Blood', '2023-04-12');

-- BASICS LEVEL QUESTIONS:
-- Teaching Focus: Understanding when to use INNER vs LEFT vs FULL JOINs
--
-- Q1. (INNER JOIN) Show username and achievement name for gamers who have unlocked achievements.
--     What happens to gamers with NO achievements in this query?
--
-- Q2. (LEFT JOIN) Show all gamers and their achievements (if any). Include gamers who haven't unlocked any achievement.
--     Which gamer(s) appear with NULL values?
--
-- Q3. (RIGHT JOIN) Show all games and the achievements unlocked in them. 
--     Which game(s) have no achievements yet?
--
-- Q4. (FULL OUTER JOIN) Show all gamers and all games with their achievement connections.
--     How many rows have NULL in gamer_id or game_id columns?

 