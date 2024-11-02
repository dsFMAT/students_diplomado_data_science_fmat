WITH rental_counts AS (
    SELECT 
        f.film_id,
        f.title,
        f.length,
        COUNT(r.rental_id) AS rental_count
    FROM film f
    JOIN inventory i 
    	ON f.film_id = i.film_id
    JOIN rental r 
    	ON i.inventory_id = r.inventory_id
    GROUP BY f.film_id, f.title, f.length
)
SELECT 
    rc.film_id,
    rc.title,
    rc.rental_count,
    rc.length
FROM rental_counts rc
WHERE rc.rental_count > (SELECT AVG(rental_count) FROM rental_counts)
    AND rc.length > 120
ORDER BY 
    rc.rental_count DESC;
