SELECT 
    title AS Nombre_Pelicula,
    CASE
        WHEN rental_rate <= 2 AND length < 60 THEN 'Económica y Corta'
        WHEN rental_rate <= 2 AND length >= 60 THEN 'Económica y Larga'
        WHEN rental_rate > 2 AND length < 60 THEN 'Costosa y Corta'
        WHEN rental_rate > 2 AND length >= 60 THEN 'Costosa y Larga'
    END AS categoria,
    rental_rate AS costo_renta,
    length AS duracion
FROM 
    film
    ORDER BY categoria ASC,Nombre_Pelicula ASC;