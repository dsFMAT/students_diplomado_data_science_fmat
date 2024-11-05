--- ### Ejercicio 2: **Películas nunca rentadas**


--- Crea un query que muestre únicamente aquellas películas que nunca hayan sido rentadas


SELECT f.film_id, f.title, count(r.rental_id) AS Num_rentas
FROM film f 
LEFT JOIN inventory i ON i.film_id = f.film_id 
LEFT JOIN rental r ON r.inventory_id  = i.inventory_id 
GROUP BY f.film_id 
HAVING count(r.rental_id) = 0
