SELECT title AS titulo, rental_rate AS tarifa, rental_rate*0.16 AS iva16
FROM film
WHERE rental_rate <= 2