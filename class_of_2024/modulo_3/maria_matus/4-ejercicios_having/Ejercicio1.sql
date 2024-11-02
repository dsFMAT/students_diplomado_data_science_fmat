SELECT rating,  COUNT(*) AS Numero_peliculas, AVG(length) AS duracion_promedio
FROM film
GROUP BY rating 
HAVING COUNT(*)>190 AND AVG(length) >112