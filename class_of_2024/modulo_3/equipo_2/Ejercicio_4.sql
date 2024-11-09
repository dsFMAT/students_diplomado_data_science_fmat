--- El equipo de marketing quiere saber cuales son las 
--- tres películas más populares por categoría, 
--- permitiendo empates. Realiza un análisis que incluya:

--- - Nombre de la categoría.
--- - Título de la película.
--- - Número de veces que la película ha sido rentada.
--- - Ranking de popularidad de cada película dentro de 
--- su categoría (siendo 1 la más rentada).

--- La consulta debe ordenar las películas dentro de cada
---  categoría en función del ranking.

WITH NUM_RENTS AS (
    SELECT 
        c."name" AS categoria, f.title AS titulo, 
    	count(f.film_id) AS conteo, 
    	DENSE_RANK() OVER (PARTITION BY c.name 
            ORDER BY count(f.film_id) DESC) AS ranking
    FROM 
        film f
    LEFT JOIN 
        film_category fc ON fc.film_id = f.film_id 
    LEFT JOIN 
        category c ON c.category_id = fc.category_id 
    LEFT JOIN 
        inventory i ON i.film_id = fc.film_id 
    LEFT JOIN 
        rental r ON r.inventory_id = i.inventory_id
    GROUP BY c."name", f.film_id 
    ORDER BY c."name", f.title 
)
SELECT *
FROM NUM_RENTS r
WHERE r.ranking<=3
ORDER BY r.categoria, r.ranking
