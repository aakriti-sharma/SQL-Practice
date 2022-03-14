SELECT id,a,b,c,CASE 
				WHEN a*a+b*b=c*c THEN 'Yes' 
				ELSE 'No' 
				END AS right_triangle
FROM line_segments
