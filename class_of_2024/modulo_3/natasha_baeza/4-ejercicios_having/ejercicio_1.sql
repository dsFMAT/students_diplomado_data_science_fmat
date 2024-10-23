-- Ejercicio 1:  Clasificaciones con más de 190 películas y duración promedio mayor a 112 minutos

SELECT rating AS Clasificacion, count(DISTINCT film_id) AS Total_peliculas, 
round(avg(length),2) AS Duracion_promedio FROM film
GROUP BY rating
HAVING(count(DISTINCT film_id)> 190 AND round(avg(length),2)>112)