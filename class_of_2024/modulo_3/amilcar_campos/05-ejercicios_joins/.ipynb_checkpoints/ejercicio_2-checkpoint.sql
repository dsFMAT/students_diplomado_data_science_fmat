-- Crea un query que muestre únicamente aquellas películas que nunca hayan sido rentadas
SELECT
    DISTINCT f.title AS titulo
FROM
    film AS f
        LEFT JOIN inventory AS i ON f.film_id = i.film_id
        LEFT JOIN rental AS r ON i.inventory_id = r.inventory_id
GROUP BY 1
HAVING
    MAX(r.rental_date) IS NULL