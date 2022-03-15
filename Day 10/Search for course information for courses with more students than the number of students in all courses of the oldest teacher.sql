SELECT *
FROM courses 
WHERE student_count > (	SELECT MAX(c1.student_count) 
					FROM courses c1 JOIN teachers t1
					ON t1.id=c1.teacher_id
					WHERE t1.age = (SELECT MAX(t2.age) FROM teachers t2)
					GROUP BY t1.age )
