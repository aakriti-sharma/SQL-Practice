CREATE VIEW v_courses AS
SELECT c.id,c.name,c.student_count
FROM courses c LEFT JOIN teachers t
ON t.id=c.teacher_id 
WHERE t.country NOT IN ('JP','USA') OR t.country is null
