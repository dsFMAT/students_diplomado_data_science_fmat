/*Ejercicio 2*/
SELECT 
	last_name,
	COUNT(last_name) AS last_name_count 
FROM
	actor
GROUP BY last_name 
HAVING COUNT(last_name) > 3