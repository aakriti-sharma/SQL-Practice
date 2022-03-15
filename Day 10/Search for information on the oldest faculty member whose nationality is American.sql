SELECT *
FROM teachers
WHERE country = 'USA' AND age=(SELECT MAX(age) FROM teachers WHERE country = 'USA' GROUP BY country)
