SELECT f.film_id, 
       f.title, 
       MAX(r.rental_date) AS ultima_fecha_alquiler    --MAX para obtener la fecha más reciente de alquiler para cada película--
FROM film f
LEFT JOIN inventory i ON f.film_id = i.film_id
LEFT JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY f.film_id, f.title
ORDER BY ultima_fecha_alquiler DESC;







/*film está relacionada con inventory a través de film_id.
inventory está relacionada con rental a través de inventory_id, 
y la tabla rental contiene la información sobre las fechas de alquiler (rental_date).