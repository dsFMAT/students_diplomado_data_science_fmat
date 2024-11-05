/*I couldn't use WITH here, because I needed the condition inside HAVING clause*/
SELECT 
	film.film_id, 
	film.title, 
	film.length,
	count(rental.rental_id) AS rentals
FROM 
	film 
RIGHT JOIN inventory 
    ON film.film_id = inventory.film_id 
LEFT JOIN rental 
    ON rental.inventory_id  = inventory.inventory_id
WHERE film.film_id > 120 
GROUP BY film.film_id 
HAVING count(rental.rental_id) > (SELECT 
  	AVG(payment.amount) 
  FROM 
  	rental 
  	JOIN payment 
  		ON payment.rental_id = rental.rental_id)
ORDER BY rentals 