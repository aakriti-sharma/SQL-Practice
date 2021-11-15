-- Write a query to return the total number of unique customers for each month

SELECT EXTRACT(YEAR from rental_ts) AS year,
EXTRACT(MONTH from rental_ts) AS mon,
COUNT(DISTINCT customer_id) AS uu_cnt
FROM rental
GROUP BY year,mon
