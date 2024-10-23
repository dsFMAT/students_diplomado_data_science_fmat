-- Ejercicio 2:  Contar apellidos de actores que se repiten más de 3 veces

SELECT last_name AS Apellido, count(last_name) AS Numero_actores
FROM actor
GROUP BY last_name
HAVING(count(last_name)> 3)