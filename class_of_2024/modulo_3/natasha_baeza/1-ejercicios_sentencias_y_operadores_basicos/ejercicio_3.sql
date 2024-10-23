-- Ejercicio 3: Películas con Tarifas Reducidas
-- título y tarifa de películas con tarifa menor o igual a $2, aplicando 
-- alias a las columnas para renombrarlas. Muestra la tarifa de las películas con IVA (16%)


SELECT title AS Titulo, rental_rate*1.16 AS Tarifa_con_IVA FROM film 
WHERE rental_rate<= 2