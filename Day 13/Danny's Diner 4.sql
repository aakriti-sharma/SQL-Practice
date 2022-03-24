SELECT cp.product_id,m.product_name,cp.countp as max_count FROM(SELECT product_id,count(*) as countp
FROM dannys_diner.sales
GROUP BY 1
LIMIT 1) cp JOIN dannys_diner.menu m
ON cp.product_id=m.product_id
