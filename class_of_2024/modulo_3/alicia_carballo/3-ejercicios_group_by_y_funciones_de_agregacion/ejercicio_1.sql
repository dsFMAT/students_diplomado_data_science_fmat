SELECT rating, AVG(rental_rate) AS promedio_tasa_alquiler
FROM film
GROUP BY rating;

/*Promedio de tasa de alquiler por clasificación/*