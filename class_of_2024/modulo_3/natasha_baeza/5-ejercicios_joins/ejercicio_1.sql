-- Ejercicio 1:  Películas por última fecha de alquiler


SELECT f.title AS Pelicula, MAX(r.rental_date) AS Ultima_Renta
FROM film f
LEFT JOIN inventory i
	ON f.film_id= i.film_id
LEFT JOIN rental r
	ON i.inventory_id= r.inventory_id
GROUP BY F.title
ORDER BY ultima_renta ASC