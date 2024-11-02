/*
 * Results based on last rental cost, there wasn't a specific rent amount without promotions or discounts
*/
WITH max_rental_dates AS (
	SELECT 
		film.film_id,
		max(payment.payment_date) AS last_rental_date
	FROM film 
	RIGHT JOIN inventory ON inventory.film_id = film.film_id
	LEFT JOIN rental ON rental.inventory_id = inventory.inventory_id
	LEFT JOIN payment ON payment.rental_id = rental.rental_id
	GROUP BY film.film_id 
)
SELECT 
	film.film_id, 
	film.title,
	payment.amount AS last_rent_amount,
	film.length,
	CASE 
		WHEN payment.amount <= 2 AND film.length < 60 THEN 'Económica y Corta'
		WHEN payment.amount <= 2 AND film.length >= 60 THEN 'Económica y Larga'
		WHEN payment.amount > 2 AND film.length < 60 THEN 'Costosa y Corta'
		WHEN payment.amount > 2 AND film.length >= 60 THEN 'Costosa y Larga'
	END AS classification	
FROM film 
RIGHT JOIN inventory ON inventory.film_id = film.film_id
LEFT JOIN rental ON rental.inventory_id = inventory.inventory_id
LEFT JOIN payment ON payment.rental_id = rental.rental_id 
LEFT JOIN  max_rental_dates ON max_rental_dates.film_id = film.film_id 
WHERE payment.payment_date = max_rental_dates.last_rental_date
ORDER BY film.title ASC