SELECT 
	DATE_TRUNC('month', rental.rental_date) AS month_rental_date,
	DATE_TRUNC('year', rental.rental_date) AS year_rental_date,
	count(film.film_id) AS films
FROM film
RIGHT JOIN inventory ON inventory.film_id = film.film_id 
LEFT JOIN rental ON rental.inventory_id = inventory.inventory_id
WHERE rental.rental_date >= (CURRENT_DATE - INTERVAL '20 years')
GROUP BY month_rental_date, year_rental_date
ORDER BY month_rental_date, year_rental_date DESC
	