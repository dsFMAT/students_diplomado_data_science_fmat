SELECT 
    rating, 
    COUNT(*) AS total_peliculas, 
    AVG(length) AS duracion_promedio
FROM 
    film
GROUP BY 
    rating
HAVING 
    COUNT(*) > 190 AND AVG(length) > 112;

   /*Clasificaciones con más de 190 películas y duración promedio mayor a 112 minutos/*