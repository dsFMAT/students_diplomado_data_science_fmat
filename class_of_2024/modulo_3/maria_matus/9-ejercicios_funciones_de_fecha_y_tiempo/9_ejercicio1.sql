--- Ejercicio 1:
--- Encuentra cuántas películas fueron alquiladas por mes los últimos 20 años, agrupando los resultados 
--- por mes —y año— y ordenándolos de manera descendente. Usa las funciones de truncamiento de fechas y 
--- de agregación.


select date_trunc('month', r.rental_date) as month, count(f.film_id) 
FROM film f
LEFT JOIN inventory i ON i.film_id = i.film_id 
LEFT JOIN rental r ON r.inventory_id = i.inventory_id 
WHERE rental_date >= (CURRENT_DATE - INTERVAL '20 years')
group by date_trunc('month', r.rental_date)
order by date_trunc('month', r.rental_date) desc 