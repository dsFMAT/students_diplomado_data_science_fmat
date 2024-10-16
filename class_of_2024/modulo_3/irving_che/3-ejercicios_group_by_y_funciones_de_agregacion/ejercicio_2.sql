SELECT 
	store_id, 
	count(store_id) AS total_customer 
FROM 
	customer 
GROUP BY store_id