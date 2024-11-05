--- Ejercicio 3: **Top 10 más rentadas**

-- Ahora crea un query para mostrar el top 10 de aquellas películas que más han sido rentadas, 
--- ordenadas de mayor a menor cantidad de rentas




SELECT f.film_id, f.title, count(R.rental_id) AS Num_rentas
FROM film f 
LEFT JOIN inventory i ON i.film_id = f.film_id 
LEFT JOIN rental r ON r.inventory_id  = i.inventory_id 
GROUP BY f.film_id 
ORDER BY Num_rentas DESC
LIMIT 10
