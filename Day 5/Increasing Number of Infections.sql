SELECT n1.id as id
FROM new_cases n1 JOIN new_cases n2
ON n2.date=n1.date - INTERVAL 1 DAY
WHERE n1.increased_count > n2.increased_count
