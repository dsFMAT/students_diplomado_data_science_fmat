SELECT f.film_id, 
       f.title
FROM film f
LEFT JOIN inventory i ON f.film_id = i.film_id
LEFT JOIN rental r ON i.inventory_id = r.inventory_id
WHERE r.rental_date IS NULL
GROUP BY f.film_id, f.title;







--recuerda que f. es el alias--

--No deberían existir registros en la tabla de rental asociados a esas películas--
--filtrar películas donde la columna rental_date sea NULL--