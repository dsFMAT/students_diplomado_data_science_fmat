SELECT f.film_id, 
       f.title, 
       COUNT(r.rental_id) AS cantidad_rentas
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY f.film_id, f.title
ORDER BY cantidad_rentas DESC
LIMIT 10;


--mostrará las 10 películas que más veces han sido alquiladas, 
--junto con el número de veces que cada una ha sido alquiladas, ordenadas de mayor a menor.