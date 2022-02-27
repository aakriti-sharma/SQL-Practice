SELECT DISTINCT num as ConsecutiveNums
FROM Logs l1
WHERE l1.id IN ( SELECT id FROM Logs WHERE num=l1.num) AND
      l1.id-1 IN ( SELECT id FROM Logs WHERE num=l1.num) AND
      l1.id+1 IN ( SELECT id FROM Logs WHERE num=l1.num) 
