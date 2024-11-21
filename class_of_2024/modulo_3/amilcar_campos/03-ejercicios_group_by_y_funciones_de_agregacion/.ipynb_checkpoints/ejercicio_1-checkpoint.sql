-- Escribe un query que muestre el promedio de la tasa de alquiler (**rental_rate**)
-- para cada clasificación (**rating**).
SELECT
    f.rating, AVG(f.rental_rate)
FROM
    film AS f
GROUP BY
    1