SELECT 
    f.film_id,
    f.title,
    f.rental_rate,
    f.length,
    CASE
        WHEN f.rental_rate <= 2 AND f.length < 60 THEN 'Económica y Corta'
        WHEN f.rental_rate <= 2 AND f.length >= 60 THEN 'Económica y Larga'
        WHEN f.rental_rate > 2 AND f.length < 60 THEN 'Costosa y Corta'
        WHEN f.rental_rate > 2 AND f.length >= 60 THEN 'Costosa y Larga'
    END AS category
FROM film f
ORDER BY category;
