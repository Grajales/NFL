-- 1. List the names of all NFL teams'

SELECT NAME
FROM TEAMS
ORDER BY NAME
-- 2. List the stadium name and head coach of all NFC teams
SELECT (STADIUM,HEAD_COACH)
FROM TEAMS
WHERE CONFERENCE = 'NFC'

-- 3. List the head coaches of the AFC South
SELECT HEAD_COACH
FROM TEAMS
WHERE CONFERENCE = 'AFC'
AND DIVISION = 'South'

-- 4. The total number of players in the NFL
SELECT COUNT(DISTINCT(ID))
FROM PLAYERS;

-- "COMMIT: NFL - queried some NFL stuff"


-- 5. The team names and head coaches of the NFC North and AFC East
(SELECT (NAME,HEAD_COACH)
FROM TEAMS
WHERE CONFERENCE = 'AFC'
AND DIVISION = 'East')
UNION
(SELECT (NAME,HEAD_COACH)
FROM TEAMS
WHERE CONFERENCE = 'NFC'
AND DIVISION = 'North')

-- 6. The 50 players with the highest salaries
SELECT name
FROM PLAYERS
ORDER BY SALARY DESC
LIMIT 50

-- 7. The average salary of all NFL players
SELECT AVG(salary) AS AverageSalary FROM players;

-- 8. The names and positions of players with a salary above 10_000_000
SELECT (name,position)
FROM PLAYERS
Where SALARY>10000000
ORDER BY SALARY DESC

-- "COMMIT: NFL - wow there's a lot of nfl data"

-- HUNGRY FOR MORE!!!!!!!

-- 9. The player with the highest salary in the NFL

-- 10. The name and position of the first 100 players with the lowest salaries

-- 11. The average salary for a DE in the nfl

-- 12. The names of all the players on the Buffalo Bills

-- 13. The total salary of all players on the New York Giants

-- 14. The player with the lowest salary on the Green Bay Packers
