SELECT score
FROM player_scores
GROUP BY score
HAVING COUNT(*)>=3
