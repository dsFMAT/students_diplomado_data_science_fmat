--- Ejercicio 1:
--- Obtener la lista de películas que han sido alquiladas más veces que el promedio de todas las películas 
--- — en otras palabras, el promedio de veces que se ha rentado cada película —, y cuya duración es mayor a 120 minutos. 
--- Esta información nos permitirá identificar películas populares (por encima del promedio en rentas) que también 
--- son más largas, lo que podría indicar un mayor interés por parte de los clientes en contenido extenso.
--- Usa With, puedes usar subconsultas si lo consideras necesario

WITH conteo_rentas_por_pelicula AS
	(SELECT f.film_id, f.title, f.length AS duracion, COUNT(r.rental_id) AS numero_de_rentas 
	FROM film f
	JOIN inventory i ON i.film_id = f.film_id 
	JOIN rental r ON r.inventory_id = i.inventory_id 
	GROUP BY f.film_id, f.title, f.length
	) 
	SELECT *
	FROM conteo_rentas_por_pelicula AS crp
	WHERE crp.duracion >120 AND crp.numero_de_rentas >(	SELECT round(avg(numero_de_rentas),2) 
														FROM conteo_rentas_por_pelicula)
												
													

