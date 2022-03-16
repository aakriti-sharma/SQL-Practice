SELECT country, CASE 
 				WHEN country is not null THEN COUNT(*) 
				ELSE 0
				END as teacher_count
FROM teachers
GROUP BY 1
ORDER BY 2 ASC, 1 ASC

-- ALT --
SELECT country, IFNULL(count(country),0) as teacher_count
FROM teachers
GROUP BY 1
ORDER BY 2 ASC, 1 ASC
