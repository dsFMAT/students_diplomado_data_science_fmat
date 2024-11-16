SELECT f.title, max(r.rental_date) AS ultima_renta
FROM rental r
INNER JOIN inventory i ON r.inventory_id = i.inventory_id
INNER JOIN film f ON i.film_id = f.film_id 
GROUP BY f.title