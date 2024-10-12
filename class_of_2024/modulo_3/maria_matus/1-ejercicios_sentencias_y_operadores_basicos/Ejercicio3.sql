SELECT title AS Titulo,
	rental_rate * 1.16 AS Tarifa_con_iva
FROM film
WHERE rental_rate <=2

