-- Write a query to return daily revenue in June, 2020.

SELECT DATE(payment_ts) AS dt, SUM(amount) AS sum
FROM payment
WHERE EXTRACT(MONTH from payment_ts)=6 AND EXTRACT(YEAR from payment_ts)=2020
GROUP BY DATE(payment_ts)
