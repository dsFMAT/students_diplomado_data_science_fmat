SELECT last_name, count(last_name) AS numero_de_actores
FROM actor
GROUP BY last_name
HAVING count(last_name) > 3
ORDER BY numero_de_actores DESC