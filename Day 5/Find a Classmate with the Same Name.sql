SELECT name
FROM students
GROUP BY name
HAVING COUNT(*)>1
