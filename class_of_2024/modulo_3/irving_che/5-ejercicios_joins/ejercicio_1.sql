SELECT 
	film.film_id,
	film.title,
	MAX(rental.rental_date) AS last_rental_date
FROM film 
LEFT JOIN inventory 
	ON inventory.film_id = film.film_id 
LEFT JOIN rental 
	ON rental.inventory_id = inventory.inventory_id 
GROUP BY film.film_id 
ORDER BY last_rental_date DESC 