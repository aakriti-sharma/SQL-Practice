CREATE VIEW v_courses_teachers AS
SELECT c.id,c.name,c.student_count,c.created_at,c.teacher_id,t.name as teacher_name,t.email as teacher_email
FROM courses c LEFT JOIN teachers t
ON c.teacher_id=t.id
