SELECT 
	rating,
	MIN(length) AS min_length,
	MAX(length) AS max_length
FROM 
	film 
GROUP BY rating