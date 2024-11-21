-- Escribe un query que muestre los nombres de las categorías (**name**) de películas,
-- ordenados alfabéticamente en orden descendente (de la Z a la A).
SELECT
    c.name
FROM
    category AS c
ORDER BY
    c.name DESC