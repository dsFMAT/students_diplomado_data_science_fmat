--- Ejercicio 2
--- Obtener el porcentaje de películas en la base de datos distribuidas por clasificación (rating).
--- Este análisis ayudará a comprender la proporción de películas en cada clasificación, lo que permitirá
--- tomar decisiones informadas sobre la oferta de contenido para diferentes grupos de audiencia, identificando
--- si alguna clasificación está sobre o sub-representa

--- Usa Subconsultas
						

													


SELECT rating, count(film_id), count(film_id)::float/(SELECT count(film_id) 
												FROM film)*100 AS Porcentaje
FROM film f 
GROUP BY f.rating 

