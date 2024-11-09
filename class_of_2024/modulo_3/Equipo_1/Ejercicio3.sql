SELECT 
    f.title,
    SUM(p.amount) AS ingreso_Total
FROM film f
JOIN inventory i 
	ON f.film_id = i.film_id
JOIN rental r 
	ON i.inventory_id = r.inventory_id
JOIN payment p 
	ON r.rental_id = p.rental_id
GROUP BY f.title
HAVING SUM(p.amount) <= 50
ORDER BY f.title ASC;