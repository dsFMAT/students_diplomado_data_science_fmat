/*Ejercicio 3*/
SELECT 
	title AS titulo, 
	rental_rate * 1.16 AS tarifa_con_iva 
FROM 
	film 
WHERE rental_rate <= 2