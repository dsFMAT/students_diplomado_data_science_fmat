SELECT 
CONCAT(c.first_name, ' ', c.last_name) AS nombre_Completo,
COUNT(r.rental_id) AS rentas_totales,
ROUND((COUNT(r.rental_id) * 100.0) / 
(SELECT COUNT(*) FROM rental), 2) AS porcentaje_alquiler
FROM customer c
JOIN rental r 
	ON c.customer_id = r.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING COUNT(r.rental_id) > 40
ORDER BY rentas_totales DESC;