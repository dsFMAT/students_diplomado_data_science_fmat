--- El equipo de negocios quiere entender los ingresos 
--- mensuales generados por cada categoría de película.
--- Necesitan un reporte que incluya:

--- - El nombre de la categoría.
--- - El mes y año en que se generaron los ingresos.
--- - El ingreso total mensual para esa categoría.

--- El reporte debe mostrar únicamente las categorías
--- que generaron ingresos mayores a $200 en algún mes 
--- y deben estar ordenadas de mayor a menor ingreso.

SELECT 
	c."name" AS categoria, 
    sum(p.amount) AS ingreso_total, 
    DATE_TRUNC('month', p.payment_date)::date AS fecha_mes
FROM film f
LEFT JOIN 
    film_category fc ON fc.film_id = f.film_id 
LEFT JOIN 
    category c ON c.category_id = fc.category_id 
LEFT JOIN 
    inventory i ON i.film_id = fc.film_id 
LEFT JOIN 
    rental r ON r.inventory_id = i.inventory_id 
LEFT JOIN 
    payment p ON p.rental_id =r.rental_id 
GROUP BY categoria, fecha_mes
HAVING  sum(p.amount) > 200
ORDER BY ingreso_total DESC
