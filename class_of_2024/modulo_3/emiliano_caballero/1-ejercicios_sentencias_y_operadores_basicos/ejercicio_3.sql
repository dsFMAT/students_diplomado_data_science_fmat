
SELECT  title AS titulo ,rental_rate*1.16 AS tarifa_cIVA
FROM film f 
WHERE rental_rate <= 2