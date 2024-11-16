WITH rentas_por_pelicula AS (SELECT f.title, COUNT(r.rental_date) AS Total_rentas
                             FROM film f
						     LEFT JOIN inventory i ON f.film_id = i.film_id
						     LEFT JOIN rental r ON i.inventory_id = r.inventory_id 
							 GROUP BY f.title),
	 promedio_rentas AS (SELECT AVG(Total_rentas) AS promedio
	                        FROM rentas_por_pelicula)            
SELECT f.title, COUNT(r.rental_date) AS Total_rentas
                             FROM film f
						     LEFT JOIN inventory i ON f.film_id = i.film_id
						     LEFT JOIN rental r ON i.inventory_id = r.inventory_id
						     WHERE f.length > 120
							 GROUP BY f.title
							 HAVING COUNT(r.rental_date) > (SELECT promedio FROM promedio_rentas)