SELECT c.name,c.address
FROM companies c inner join records r
on c.id=r.company_id
GROUP BY c.id
HAVING COUNT(*) = (SELECT COUNT(*) 
                    FROM records
                    GROUP BY company_id 
                    ORDER BY COUNT(*)  DESC
                    LIMIT 1)
