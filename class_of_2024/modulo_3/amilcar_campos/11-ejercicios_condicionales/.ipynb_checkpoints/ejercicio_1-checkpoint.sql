-- La tienda de alquiler de películas quiere analizar su catálogo
-- y clasificar las películas en función de su costo de renta y duración.
-- Se desea agrupar las películas en las siguientes categorías:
-- 1. **"Económica y Corta"**: Si el costo de renta es menor o igual a $2 y la duración es menor a 60 minutos.
-- 2. **"Económica y Larga"**: Si el costo de renta es menor o igual a $2 y la duración es de 60 minutos o más.
-- 3. **"Costosa y Corta"**: Si el costo de renta es mayor a $2 y la duración es menor a 60 minutos.
-- 4. **"Costosa y Larga"**: Si el costo de renta es mayor a $2 y la duración es de 60 minutos o más.
-- Usa la función `CASE` para realizar esta clasificación y mostrar las películas que pertenecen a cada categoría.
SELECT
    DISTINCT f.title,
    CASE
        WHEN f.rental_rate <= 2 AND f.length < 60 THEN 'Económica y Corta'
        WHEN f.rental_rate <= 2 AND f.length >= 60 THEN 'Económica y Larga'
        WHEN f.rental_rate > 2 AND f.length < 60 THEN 'Costosa y Corta'
        WHEN f.rental_rate > 2 AND f.length >= 60 THEN 'Costosa y Larga'
        END AS categoria
FROM
    film AS f