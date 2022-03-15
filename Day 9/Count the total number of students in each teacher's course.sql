SELECT t.name as teacher_name,CASE
						WHEN SUM(c.student_count)>0 THEN SUM(c.student_count) 
						ELSE 0
						END AS student_count
FROM teachers t LEFT JOIN courses c 
ON c.teacher_id=t.id
GROUP BY t.id	
