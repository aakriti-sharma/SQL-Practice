SELECT bike_id,sb.user_id
FROM shared_bicycles sb
GROUP BY 1,2
HAVING COUNT(*)>=3
