SELECT *
FROM ( SELECT c.name as course_name,c.student_count,t.name as teacher_name
       FROM courses c JOIN teachers t
	  ON c.teacher_id=t.id) ct
WHERE student_count=(SELECT MAX(student_count) FROM courses)
