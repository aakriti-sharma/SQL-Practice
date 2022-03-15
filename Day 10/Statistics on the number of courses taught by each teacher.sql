SELECT t.name AS teacher_name, COUNT(student_count) AS course_count
FROM teachers t LEFT JOIN courses c 
ON t.id=c.teacher_id
GROUP BY t.id
ORDER BY 2 DESC ,1 
