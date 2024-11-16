--- La empresa desea identificar a los clientes frecuentes.
--- Crear una consulta que devuelva:

--- - Nombre completo del cliente.
--- - Número total de alquileres.
--- - Porcentaje que representa el numero de alquileres 
--- del cliente sobre el total de alquileres del negocio. 
--- Por ejemplo sí se han rentado 100 películas de manera
--- histórica, mientras que Juan Perez ha rentado 10 
--- películas, 
--- entonces Juan Perez tiene un porcentaje de 10%

--- El resultado debe incluir solo aquellos clientes que 
--- han hecho más de 40 alquileres. 
--- Ordena la lista de mayor a menor en función del número 
--- de alquileres.

SELECT 
    concat(c.first_name,' ', c.last_name) AS Nombre_completo,
    count(r.rental_id) AS total_alquileres, 
    (count(r.rental_id)*100)::float/(SELECT count(*) FROM rental r2)::float AS Porcentaje
FROM 
    rental r
RIGHT JOIN 
    customer c ON c.customer_id = r.customer_id
GROUP BY c.customer_id
HAVING count(r.rental_id) > 40
ORDER BY count(r.rental_id) DESC 

