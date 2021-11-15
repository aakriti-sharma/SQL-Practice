--Write a query to return the titles of the 5 shortest movies by duration.

SELECT title
FROM film
ORDER BY length
LIMIT 5;
