
-- MEDIUM LEVEL QUESTIONS:
-- Teaching Focus: Multiple JOINs, SELF JOIN, Many-to-Many relationships
--
-- Q5. (3-Table JOIN with SELF JOIN) Show all authors, their mentor's names (if they have one), 
--     and the publications they authored. Use a SELF JOIN on authors table to get mentor information.
--     Handle NULL mentor_author_id for independent authors.
--


SELECT A.author_fullname AS author_name,
        M.author_fullname AS mentor_name,
        P.title AS publication_title
FROM authors AS A 
LEFT JOIN authors AS M
    ON A.mentor_author_id = M.author_id
LEFT JOIN publication_authorship AS PA
     ON A.author_id = PA.author_id
LEFT JOIN publications AS P
    ON PA.publication_id = P.publication_id;

---LEFT JOIN = “Keep my left-side records, even when the right side has nothing

---SELF JOIN = Joining a table with itself to find relationships between rows within that same table.

-- Q6. (Multiple JOINs with Many-to-Many) Display each publication with all its authors and their contribution types.
--     Include authors who haven't written any publications yet using LEFT JOIN.
--     Order by publication year descending.


SELECT A.author_fullname  AS author_name,
    P.title AS publication_title,
   PA.contribution_type ,
   P.publication_year

FROM authors AS A 

LEFT JOIN publication_authorship AS PA
     ON a.author_id = PA.publication_id
LEFT JOIN publications AS P
    ON PA.publication_id = p.publication_id
     ORDER BY p.publication_year DESC;

--
-- Q7. (3-Table LEFT JOIN) Show all subject categories, their publications, and the authors contributing to those publications.
--     What happens if a subject category has no publications?
--
-- Q8. (SELF JOIN for Many-to-Many) Find all authors who collaborated together on the same publication.
--     Show pairs of author names and the publication title they worked on together.
--     (Hint: JOIN publication_authorship table with itself)
 