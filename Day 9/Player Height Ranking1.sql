SELECT p1.height, ( SELECT COUNT(*) FROM (SELECT DISTINCT height FROM players) p2 WHERE p1.height<p2.height) +1 AS "Rank"
FROM players p1
ORDER BY 2

-- ALTERNATE
select height, dense_rank() over(order by height desc) as 'rank'
from players
order by 'rank';
