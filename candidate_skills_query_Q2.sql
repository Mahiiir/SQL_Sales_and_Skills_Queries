--Question - 2:

CREATE TABLE Applications (
    candidate_id INTEGER,
    skills VARCHAR
);

-- Inserting data into the Applications table
INSERT INTO Applications (candidate_id, skills) VALUES
(101, 'Power BI'),
(101, 'Python'),
(101, 'SQL'),
(102, 'Tableau'),
(102, 'SQL'),
(108, 'Python'),
(108, 'SQL'),
(108, 'Power BI'),
(104, 'Python'),
(104, 'Excel');

WITH Rskills AS(
	SELECT candidate_id, skills
	FROM Applications
	WHERE skills IN ('Python', 'SQL', 'Power BI'))
SELECT candidate_id, COUNT(skills)
FROM Rskills
GROUP BY candidate_id
HAVING COUNT(skills) = 3;
