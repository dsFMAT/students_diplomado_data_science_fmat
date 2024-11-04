-- Ejercicio 3:  Duración máxima y mínima de películas por clasificación

SELECT rating AS Clasificacion, min(length) AS Duracion_Minima, 
max(length) AS Duracion_maxima FROM film
GROUP BY rating
