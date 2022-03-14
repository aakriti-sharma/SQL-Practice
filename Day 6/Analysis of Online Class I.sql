SELECT student_id,MIN(date) as earliest_course_date
FROM online_class_situations
WHERE course_number > 0
GROUP BY student_id
