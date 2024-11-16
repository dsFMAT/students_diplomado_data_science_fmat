SELECT f.film_id, f.title, f.length, COUNT(r.rental_id) AS total_rentals
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY f.film_id, f.title, f.length
HAVING COUNT(r.rental_id) > (                 --sub--
    SELECT AVG(rental_count) 
    FROM (
        SELECT COUNT(rental_id) AS rental_count
        FROM inventory i
        JOIN rental r ON i.inventory_id = r.inventory_id
        GROUP BY i.film_id
    ) AS avg_rentals
) AND f.length > 120;




--error con with--
--La subconsulta esta en HAVING, calculamos el promedio de los conteos de alquileres por película.


















