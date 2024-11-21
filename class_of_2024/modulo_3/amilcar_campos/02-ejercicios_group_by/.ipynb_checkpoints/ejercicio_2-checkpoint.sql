-- Escribe un query que muestre el nombre y el apellido de los actores, ordenados alfabéticamente por su apellido.
SELECT a.first_name, a.last_name
FROM
    actor AS a
ORDER BY
    a.last_name