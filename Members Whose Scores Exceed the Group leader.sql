SELECT ac.name
FROM ( 	SELECT g1.name as name ,g1.score as Player_score , g2.score as Leader_score 
		FROM group_members g1 INNER JOIN group_members g2
		WHERE g1.group_leader_id=g2.id
		) as ac
WHERE ac.Player_score>ac.Leader_score
