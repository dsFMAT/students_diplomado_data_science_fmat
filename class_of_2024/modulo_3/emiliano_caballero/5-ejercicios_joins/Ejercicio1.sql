SELECT 
    film.film_id,
    film.title,
    MAX(rental.rental_date) AS last_rental_date
FROM film f
LEFT JOIN inventory i 
	ON f.film_id = i.film_id
LEFT JOIN rental r 
	ON inventory.inventory_id = rental.inventory_id
GROUP BY film.film_id, film.title
ORDER BY last_rental_date;
