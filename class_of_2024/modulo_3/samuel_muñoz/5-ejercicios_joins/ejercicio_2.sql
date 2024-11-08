SELECT f.title, MIN(r.rental_date) AS primera_renta
FROM film f
LEFT JOIN inventory i ON f.film_id = i.film_id
LEFT JOIN rental r ON i.inventory_id = r.inventory_id 
GROUP BY f.title
HAVING MIN(r.rental_date) IS NULL