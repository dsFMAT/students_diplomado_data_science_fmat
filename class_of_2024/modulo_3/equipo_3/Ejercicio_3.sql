WITH PagosPeliculas AS (
    SELECT
        f.title AS Pelicula,
        SUM(p.amount) AS Ingreso
    FROM film f
    INNER JOIN inventory i ON f.film_id = i.film_id
    INNER JOIN rental r ON i.inventory_id = r.inventory_id
    INNER JOIN payment p ON r.rental_id = p.rental_id
    GROUP BY f.title
)
SELECT
    Pelicula,
    Ingreso
FROM PagosPeliculas
WHERE Ingreso <= 50
ORDER BY Pelicula ASC