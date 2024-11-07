-- Escribe un query que muestre el apellido (**`last_name`**)
-- y el número de actores que comparten ese apellido,
-- pero solo para aquellos apellidos que aparecen más de 3 veces.
SELECT
    a.last_name, COUNT(a.last_name)
FROM
    actor AS a
GROUP BY 1
HAVING COUNT(a.last_name) > 3