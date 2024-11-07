-- Ahora crea un query para mostrar el top 10 de aquellas películas que más han sido rentadas,
-- ordenadas de mayor a menor cantidad de rentas
SELECT
    f.title AS titulo, COUNT(r.rental_date) AS numero_rentas
FROM
    film AS f
        LEFT JOIN inventory AS i ON f.film_id = i.film_id
        LEFT JOIN rental AS r ON i.inventory_id = r.inventory_id
GROUP BY
    1
ORDER BY
    2 DESC
LIMIT 10