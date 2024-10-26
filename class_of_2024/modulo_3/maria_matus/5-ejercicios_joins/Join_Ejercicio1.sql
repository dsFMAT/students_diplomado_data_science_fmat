--- ### Ejercicio 1: **Películas por última fecha de alquiler**

--- La tienda de alquiler de películas está interesada en identificar las películas que no han
--- sido alquiladas recientemente. Queremos generar un informe que muestre todas las películas, 
--- junto con la fecha del último alquiler (si es que han sido alquiladas). Las películas que no 
--- tienen registros de alquileres recientes deben mostrarse también, con un valor nulo en la columna de la fecha 
--- del alquiler.




SELECT f.film_id, f.title, MAX(r.rental_date) AS ultima_fecha
FROM film f 
LEFT JOIN inventory i ON i.film_id = f.film_id 
LEFT JOIN rental r ON r.inventory_id  = i.inventory_id 
GROUP BY f.film_id, f.title 
ORDER BY ultima_fecha DESC 



