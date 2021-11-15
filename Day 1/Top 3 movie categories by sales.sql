--Write a query to find the top 3 film categories that generated the most sales.

SELECT category
FROM sales_by_film_category
ORDER BY total_sales DESC
LIMIT 3;
