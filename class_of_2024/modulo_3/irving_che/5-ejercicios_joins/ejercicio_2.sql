SELECT 
	film.film_id,
	film.title,
	COUNT(inventory.film_id) AS rentals
FROM film 
LEFT JOIN inventory 
	ON inventory.film_id = film.film_id 
GROUP BY film.film_id
HAVING COUNT(inventory.film_id) = 0