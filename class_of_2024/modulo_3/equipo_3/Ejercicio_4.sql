WITH ranking_peliculas AS (
    SELECT 
        c.name AS Categoria,
        f.title AS Pelicula,
        COUNT(r.rental_id) AS rentas,
        DENSE_RANK() OVER (PARTITION BY c.category_id ORDER BY COUNT(r.rental_id) DESC) AS ranking
    FROM rental r
    INNER JOIN inventory i ON r.inventory_id = i.inventory_id
    INNER JOIN film f ON i.film_id = f.film_id
    INNER JOIN film_category fc ON f.film_id = fc.film_id
    INNER JOIN category c ON fc.category_id = c.category_id
    GROUP BY c.category_id, c.name, f.title
)
SELECT 
    Categoria,
    Pelicula,
    Rentas,
    ranking
FROM ranking_peliculas
WHERE ranking <= 3
ORDER BY categoria, ranking