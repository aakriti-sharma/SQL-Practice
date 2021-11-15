/*Write a query to return the average customer spend by month.
Definition: average customer spend: total customer spend divided by the unique number of customers for that month.*/

SELECT EXTRACT(YEAR from payment_ts) AS year,
EXTRACT(MONTH from payment_ts) AS mon,
SUM(amount)/COUNT(DISTINCT customer_id) AS avg_spend
FROM payment
GROUP BY year,mon
