SELECT DISTINCT p.height
FROM players p JOIN players p1 JOIN players p2
ON p.id+1=p1.id AND p1.id+1=p2.id
WHERE p2.height>=p.height AND p1.height>=p.height AND p.height!=0
