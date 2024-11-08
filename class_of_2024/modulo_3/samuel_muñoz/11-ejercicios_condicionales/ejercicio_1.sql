SELECT title, rental_rate, length,
       CASE
       	WHEN rental_rate <= 2 AND length < 60 THEN 'Económica y Corta'
       	WHEN rental_rate <= 2 AND length >= 60 THEN 'Económica y Larga'
       	WHEN rental_rate > 2 AND length < 60 THEN 'Costosa y Corta'
       	WHEN rental_rate > 2 AND length >= 60 THEN 'Costosa y Larga'
       END AS categoria
FROM film f 