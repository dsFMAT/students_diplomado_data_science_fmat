--- Ejercicio 1:
--- Encuentra cuántas películas fueron alquiladas por mes los últimos 20 años, agrupando los resultados 
--- por mes —y año— y ordenándolos de manera descendente. Usa las funciones de truncamiento de fechas y 
--- de agregación.


SELECT date_trunc('month', r.rental_date) AS month, count(f.film_id) 
FROM film f
LEFT JOIN inventory i ON i.film_id = i.film_id 
LEFT JOIN rental r ON r.inventory_id = i.inventory_id 
WHERE rental_date >= (CURRENT_DATE - INTERVAL '20 years')
GROUP BY date_trunc('month', r.rental_date)
ORDER BY date_trunc('month', r.rental_date) DESC