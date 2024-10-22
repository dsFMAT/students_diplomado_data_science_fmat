-- Ejercicio 2:  Películas nunca rentadas


SELECT f.title AS Pelicula, count(r.rental_date) AS total_rentas
FROM film f
LEFT JOIN inventory i
	ON f.film_id= i.film_id
LEFT JOIN rental r
	ON i.inventory_id= r.inventory_id
GROUP BY 
    f.title
--ORDER BY total_rentas ASC
HAVING count(DISTINCT r.rental_date)=0