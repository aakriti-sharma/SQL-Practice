SELECT t.name as team, p.name as player , p.scores as score
FROM players p JOIN teams t
ON p.team_id=t.id 
WHERE (t.id,p.scores) IN (	SELECT team_id,MAX(scores)
				 	FROM players
					GROUP BY team_id )
