-- Escribe un query que muestre la duración máxima y mínima
-- de las películas para cada clasificación (**rating**).
SELECT
    f.rating, MAX(f.length), MIN(f.length)
FROM
    film AS f
GROUP BY
    1