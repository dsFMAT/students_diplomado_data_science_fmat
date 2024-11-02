SELECT 
	rating, 
	AVG(rental_rate) AS avg_rental_range 
FROM 
	film 
GROUP BY rating