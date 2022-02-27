SELECT s1.score, ( SELECT COUNT(DISTINCT s2.score)+1 
                    FROM Scores s2
                    WHERE s2.score > s1.score) as "rank"
FROM Scores s1
ORDER BY 2
