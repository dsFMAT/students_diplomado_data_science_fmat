SELECT rating, count(rating) AS peliculas, avg(length) AS duracion_promedio 
FROM film
GROUP BY rating
HAVING count(rating) > 190 AND avg(length) > 112
