SELECT customer_id,COUNT(order_date)
FROM dannys_diner.sales
GROUP BY 1
