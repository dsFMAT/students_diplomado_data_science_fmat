WITH pelicula_popular AS (
    SELECT
        c.name AS categoria,
        f.title AS titulo,
        COUNT(r.rental_id) AS total_rentas,
        DENSE_RANK() OVER (PARTITION BY c.name ORDER BY COUNT(r.rental_id) DESC) AS ranking_popularidad
    FROM
        category c
        INNER JOIN film_category fc ON c.category_id = fc.category_id
        INNER JOIN film f ON fc.film_id = f.film_id
        INNER JOIN inventory i ON f.film_id = i.film_id
        INNER JOIN rental r ON i.inventory_id = r.inventory_id
    GROUP BY
        c.name, f.title
)

SELECT
    categoria,
    titulo,
    total_rentas,
    ranking_popularidad
FROM
    pelicula_popular
WHERE
    ranking_popularidad <= 3
ORDER BY
    categoria, ranking_popularidad, titulo