WITH cuenta_rentas AS (
 	SELECT i.film_id, count(*) AS cantidad_de_rentas_por_pelicula, f.length AS length, f.title AS title
 	FROM rental r 
	JOIN inventory i 
		ON r.inventory_id = i.inventory_id
	LEFT JOIN film f 
		ON i.film_id = f.film_id
	GROUP BY i.film_id, f.length, f.title),
promedio_de_ventas AS (
	SELECT AVG(cantidad_de_rentas_por_pelicula) AS promedio
	FROM cuenta_rentas
)
SELECT cr.title FROM cuenta_rentas cr, promedio_de_ventas p 
	WHERE cr.length > 120 
	AND cr.cantidad_de_rentas_por_pelicula > p.promedio



