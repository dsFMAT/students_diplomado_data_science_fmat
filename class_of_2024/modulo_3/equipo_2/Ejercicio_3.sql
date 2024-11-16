--- El equipo de finanzas quiere saber cuáles películas
--- han tenido un bajo ingreso total en sus alquileres. 
---Crea un reporte que incluya:

--- - Título de la película.
--- - Ingreso total generado.

--- Excluye del reporte las películas que generaron más de
--- $50. Ordena el resultado alfabéticamente por título.




SELECT 
    f.film_id, f.title AS titulo_de_la_pelicula, 
    sum(p.amount) AS Ingreso_total
FROM 
    film f
LEFT JOIN 
    inventory i ON i.film_id = f.film_id 
LEFT JOIN 
    rental r ON r.inventory_id = i.inventory_id 
RIGHT JOIN 
    payment p ON p.rental_id = r.rental_id 
GROUP BY f.film_id 
HAVING sum(p.amount) <=50
ORDER BY f.title ASC 
