 SELECT 
	date_trunc('month', rental_date) AS fecha,
	count(rental_id) AS cantidad_de_peliculas
FROM rental 
WHERE rental_date >= (CURRENT_DATE - INTERVAL '20 years')
GROUP BY fecha
ORDER BY fecha DESC 
