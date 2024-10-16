SELECT rating, avg(rental_rate) AS promedio_tasa_alquiler 
FROM film
GROUP BY rating
ORDER BY promedio_tasa_alquiler DESC