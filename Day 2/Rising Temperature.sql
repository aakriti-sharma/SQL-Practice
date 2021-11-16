select c.id AS Id
from Weather c
where c.temperature - ( select temperature from Weather where recordDate = DATE_SUB(c.recordDate, INTERVAL 1 DAY ))>0;
