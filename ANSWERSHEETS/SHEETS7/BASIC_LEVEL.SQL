-- BASICS LEVEL QUESTIONS:
-- Teaching Focus: Understanding when to use INNER vs LEFT vs FULL JOINs
--
-- Q1. (INNER JOIN) Show username and achievement name for gamers who have unlocked achievements.
--     What happens to gamers with NO achievements in this query?
-- SELECT gm.gamer_id ,gm.username ,pa.achievement_name
-- FROM player_achievements AS pa
-- INNER JOIN gamers AS gm
--     ON gm.gamer_id = pa.gamer_id;

-- for all the data at onces

SELECT *
FROM player_achievements 
INNER JOIN gamers 
    ON gamers.gamer_id = player_achievements.gamer_id;

-- Q2. (LEFT JOIN) Show all gamers and their achievements (if any). Include gamers who haven't unlocked any achievement.
--     Which gamer(s) appear with NULL values?

SELECT  *
FROM gamers AS G
LEFT JOIN player_achievements AS PA
    ON G.gamer_id = PA.gamer_id;



-- Q3. (RIGHT JOIN) Show all games and the achievements unlocked in them. 
--     Which game(s) have no achievements yet?


SELECT  *
FROM player_achievements AS PA
 RIGHT JOIN games AS G
    ON G.game_id = PA.game_id;




--
-- Q4. (FULL OUTER JOIN) Show all gamers and all games with their achievement connections.
--     How many rows have NULL in gamer_id or game_id columns?
SELECT *
FROM gamers AS G
FULL OUTER JOIN player_achievements AS PA
    ON G.gamer_id = PA.gamer_id
FULL OUTER JOIN games AS GM
    ON PA.game_id = GM.game_id;

