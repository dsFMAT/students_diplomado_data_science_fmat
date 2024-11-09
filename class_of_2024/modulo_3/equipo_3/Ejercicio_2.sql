SELECT 
	CONCAT(c.first_name, ' ', c.last_name) AS full_name, 
	COUNT(rental_id) AS numero_de_alquileres,
	(COUNT(rental_id) * 1.0 / (SELECT COUNT(*) FROM rental))*100 AS porcentaje
FROM rental r
LEFT JOIN customer c 
ON r.customer_id = c.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING COUNT(rental_id) > 40
ORDER BY numero_de_alquileres DESC