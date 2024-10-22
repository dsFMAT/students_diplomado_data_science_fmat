/*Ejercicio 1*/
SELECT 
	rating, 
	COUNT(rating) AS films_count,
	AVG(length) AS length_duration
FROM 
	film 
GROUP BY rating 
HAVING COUNT(rating) > 190 AND AVG(length) > 112

