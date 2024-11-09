SELECT c.name , 
DATE_TRUNC('month', r.rental_date) AS Anio_Mes, 
sum(p.amount) AS Ingreso_Mensual
FROM category c
JOIN film_category fc 
	ON fc.category_id = c.category_id
JOIN film f 
	ON f.film_id = fc.film_id
JOIN inventory i 
	ON f.film_id = i.film_id 
JOIN rental r 
	ON i.inventory_id = r.inventory_id 
JOIN payment p 
	ON r.rental_id = p.rental_id 
GROUP BY c.name ,Anio_Mes
HAVING sum(p.amount) > 200
ORDER BY Ingreso_Mensual DESC;