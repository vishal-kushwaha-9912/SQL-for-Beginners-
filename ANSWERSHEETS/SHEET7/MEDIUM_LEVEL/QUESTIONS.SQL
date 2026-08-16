
-- MEDIUM LEVEL QUESTIONS:
-- Teaching Focus: Multiple JOINs, SELF JOIN, Many-to-Many relationships
--
-- Q5. (3-Table JOIN with SELF JOIN) Show all authors, their mentor's names (if they have one), 
--     and the publications they authored. Use a SELF JOIN on authors table to get mentor information.
--     Handle NULL mentor_author_id for independent authors.
--
-- Q6. (Multiple JOINs with Many-to-Many) Display each publication with all its authors and their contribution types.
--     Include authors who haven't written any publications yet using LEFT JOIN.
--     Order by publication year descending.
--
-- Q7. (3-Table LEFT JOIN) Show all subject categories, their publications, and the authors contributing to those publications.
--     What happens if a subject category has no publications?
--
-- Q8. (SELF JOIN for Many-to-Many) Find all authors who collaborated together on the same publication.
--     Show pairs of author names and the publication title they worked on together.
--     (Hint: JOIN publication_authorship table with itself)
 