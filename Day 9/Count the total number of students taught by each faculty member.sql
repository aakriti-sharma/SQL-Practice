CREATE VIEW v_teachers AS
SELECT teacher_id,name, email, age, country,student_count
FROM teachers t RIGHT JOIN v_courses vc 
ON t.id=vc.teacher_id
