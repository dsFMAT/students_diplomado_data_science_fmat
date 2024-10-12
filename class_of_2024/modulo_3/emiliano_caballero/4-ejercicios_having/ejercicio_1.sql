SELECT rating , count(*) 
FROM film f 
GROUP BY rating 
HAVING count(*) > 190 AND avg(length) > 112 