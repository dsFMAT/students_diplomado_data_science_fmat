SELECT rating, MIN(length) AS Duracion_minima, MAX(length) AS Duracion_maxima
FROM film 
GROUP BY rating  