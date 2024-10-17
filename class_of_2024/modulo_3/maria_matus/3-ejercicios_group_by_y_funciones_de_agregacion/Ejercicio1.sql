SELECT rating, AVG(rental_rate) AS tasa_promedio
FROM film 
GROUP BY rating