SELECT s.customer_id,sum(m.price)
FROM dannys_diner.sales s JOIN dannys_diner.menu m
ON s.product_id=m.product_id
GROUP BY 1
