SELECT 
    f.rating,
    COUNT(*) AS total_movies,
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM film)) AS percentage
FROM 
    film f
GROUP BY 
    f.rating
ORDER BY 
    percentage DESC;

   
   
   
   --(SELECT COUNT(*) FROM film),aqui subconsulta que cuenta el total de películas en la tabla film--