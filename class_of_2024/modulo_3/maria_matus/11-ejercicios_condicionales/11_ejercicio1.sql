--- La tienda de alquiler de películas quiere analizar su catálogo y clasificar las películas en función de 
--- su costo de renta y duración. Se desea agrupar las películas en las siguientes categorías:

--- "Económica y Corta": Si el costo de renta es menor o igual a $2 y la duración es menor a 60 minutos.
--- "Económica y Larga": Si el costo de renta es menor o igual a $2 y la duración es de 60 minutos o más.
--- "Costosa y Corta": Si el costo de renta es mayor a $2 y la duración es menor a 60 minutos.
--- "Costosa y Larga": Si el costo de renta es mayor a $2 y la duración es de 60 minutos o más.

--- Instrucciones:
--- Usa la función CASE para realizar esta clasificación y mostrar las películas que pertenecen a cada categoría.


SELECT DISTINCT f.title, p.amount, f.length,
		CASE
			WHEN p.amount <=2 AND f.length < 60 THEN 'Económica y Corta'
			WHEN p.amount <=2 AND f.length >=60 THEN 'Económica y Larga'
			WHEN p.amount > 2 AND f.length < 60 THEN 'Costosa y Corta'
			WHEN p.amount > 2 AND f.length >=60 THEN 'Costosa y larga'
			else 'Otros'
		end as Categoria
FROM film f
LEFT JOIN inventory i ON i.film_id = f.film_id 
LEFT JOIN rental r ON r.inventory_id = i.inventory_id 
LEFT JOIN payment p ON r.customer_id = p.customer_id 


# Nota: Le puse DISTINCT, ya que había filas repetidas.