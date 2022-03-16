SELECT c.name AS name
FROM courses c
WHERE c.created_at> (SELECT MIN(c1.created_at) 
				FROM courses c1
				WHERE c1.teacher_id=(SELECT t.id FROM teachers t WHERE t.name='Southern Emperor'))
				AND c.teacher_id!=(SELECT t.id FROM teachers t WHERE t.name='Southern Emperor')
