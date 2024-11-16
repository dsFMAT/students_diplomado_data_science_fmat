SELECT 
    title,
    rental_rate AS rental_cost,
    length AS duration,   --aqui es alias-renombrar--
    CASE
        WHEN rental_rate <= 2 AND length < 60 THEN 
        WHEN rental_rate <= 2 AND length >= 60 THEN 
        WHEN rental_rate > 2 AND length < 60 THEN 
        WHEN rental_rate > 2 AND length >= 60 THEN 
        ELSE 'Categoría no definida'
    END AS movie_category
FROM 
    film;

   
  --uso case 
   --"Económica y Corta"**: Si el costo de renta es menor o igual a $2 y la duración es menor a 60 minutos.
--"Económica y Larga"**: Si el costo de renta es menor o igual a $2 y la duración es de 60 minutos o más.
--"Costosa y Corta"**: Si el costo de renta es mayor a $2 y la duración es menor a 60 minutos.
--"Costosa y Larga"**: Si el costo de renta es mayor a $2 y la duración es de 60 minutos o más.
   
   
 -- con CURRENT_DATE que pasa?-