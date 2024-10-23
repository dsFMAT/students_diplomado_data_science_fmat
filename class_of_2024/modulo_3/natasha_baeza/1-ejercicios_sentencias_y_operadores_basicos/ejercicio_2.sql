-- Ejercicio 2: Filtrar Películas con Tarifas y Duración
-- título y tarifa de películas con tarifa superior a $3 y duración mayor a 150 minutos


SELECT title AS Titulo, rental_rate AS Tarifa FROM film 
WHERE rental_rate> 3 AND length> 150