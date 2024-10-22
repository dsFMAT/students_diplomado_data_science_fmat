SELECT last_name, count(*) AS numero_actores 
FROM actor
GROUP BY last_name
HAVING count(*) >3