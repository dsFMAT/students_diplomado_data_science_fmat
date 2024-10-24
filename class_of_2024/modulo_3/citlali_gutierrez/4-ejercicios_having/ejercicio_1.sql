SELECT rating
FROM film 
GROUP BY rating 
HAVING COUNT(film_id) > 190 AND AVG(length) > 112



