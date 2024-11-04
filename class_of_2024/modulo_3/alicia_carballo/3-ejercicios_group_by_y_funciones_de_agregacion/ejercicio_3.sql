SELECT 
    rating, 
    MAX(length) AS duracion_maxima, 
    MIN(length) AS duracion_minima
FROM 
    film
GROUP BY 
    rating;

   /*Este query te proporcionará la duración máxima
    y mínima de las películas para cada clasificación en la tabla film/*