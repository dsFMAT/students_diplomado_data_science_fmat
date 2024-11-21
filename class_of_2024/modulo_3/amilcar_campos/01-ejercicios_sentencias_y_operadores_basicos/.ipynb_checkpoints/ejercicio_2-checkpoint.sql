-- Selecciona el título y la tarifa de
-- las películas que tengan una tarifa superior a $3 y una duración mayor a 150 minutos.
SELECT
    f.title, f.rental_duration
FROM film AS f
WHERE
    f.rental_rate > 3 AND
    f.length > 150