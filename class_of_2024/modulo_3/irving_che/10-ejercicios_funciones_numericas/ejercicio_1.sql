SELECT 
	film.film_id,
	film.title,
	sum(payment.amount) AS current_amount,
	sum(payment.amount) * .8 AS discounted_amount,
	abs(sum(payment.amount) - sum(payment.amount) * .8) AS abs_difference,
	ROUND(sum(payment.amount) * .8) AS public_price
FROM film 
RIGHT JOIN inventory ON inventory.film_id = film.film_id
LEFT JOIN rental ON rental.inventory_id = inventory.inventory_id
LEFT JOIN payment ON payment.rental_id = rental.rental_id 
GROUP BY film.film_id 
ORDER BY public_price DESC