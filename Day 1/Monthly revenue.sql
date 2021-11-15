-- Write a query to return the total movie rental revenue for each month

SELECT EXTRACT (YEAR FROM payment_ts) AS year,
EXTRACT (MONTH FROM payment_ts) AS mon,
SUM(amount)
FROM payment
GROUP BY year,mon;
