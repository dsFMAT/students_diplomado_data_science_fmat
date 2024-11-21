-- La tienda de alquiler de películas está interesada en identificar las películas que
-- no han sido alquiladas recientemente.
-- Queremos generar un informe que muestre todas las películas,
-- junto con la fecha del último alquiler (si es que han sido alquiladas).
-- Las películas que no tienen registros de alquileres recientes deben mostrarse también,
-- con un valor nulo en la columna de la fecha del alquiler.
SELECT
    f.title AS titulo, MAX(r.rental_date) AS fecha_alquiler
FROM
    film AS f
LEFT JOIN inventory AS i ON f.film_id = i.film_id
LEFT JOIN rental AS r ON i.inventory_id = r.inventory_id
GROUP BY
    1