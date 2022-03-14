SELECT name as courses_name,created_at as courses_created_at,CASE 
													WHEN DATEDIFF("2021-04-01",created_at)>0 THEN FLOOR(DATEDIFF("2021-04-01",created_at)/365) 
													WHEN DATEDIFF("2021-04-01",created_at)<=0 THEN 0
												END AS year_diff
FROM courses 
