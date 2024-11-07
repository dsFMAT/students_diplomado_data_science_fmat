-- Obtener la lista de películas
-- que han sido alquiladas más veces que el promedio de todas las películas
-- en otras palabras, el promedio de veces que se ha rentado cada película —,
-- y cuya duración es mayor a 120 minutos.
WITH pelicula_rentas AS (
    SELECT
        fi.title,
        fi.length,
        COUNT(r.rental_id) AS total_rentas
    FROM
        film AS fi
            LEFT JOIN inventory i ON fi.film_id = i.film_id
            LEFT JOIN rental r ON i.inventory_id = r.inventory_id
    GROUP BY
        fi.film_id, fi.title, fi.length
),
     promedio_rentas AS (
         SELECT
             AVG(pr.total_rentas) AS rentas_promedio
         FROM
             pelicula_rentas AS pr
     )
SELECT
    pr.title,
    pr.total_rentas
FROM
    pelicula_rentas AS pr
        INNER JOIN promedio_rentas p ON pr.total_rentas > p.rentas_promedio
WHERE
    pr.length > 120
ORDER BY
    pr.total_rentas DESC