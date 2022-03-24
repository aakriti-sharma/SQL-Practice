SELECT s.customer_id,m.product_name
FROM dannys_diner.sales s JOIN dannys_diner.menu m
ON s.product_id=m.product_id
WHERE (s.order_date,s.customer_id) IN (SELECT MIN(order_date), customer_id
FROM dannys_diner.sales
GROUP BY 2)  
