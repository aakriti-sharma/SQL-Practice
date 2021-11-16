select name AS Customers
from Customers c
where c.id not in (select customerId from orders)
