SELECT rating, count(rating)::float/(SELECT COUNT(*) FROM film f ) AS Numero_de_peliculas 
FROM film f 
GROUP BY rating
ORDER BY Numero_de_peliculas DESC

