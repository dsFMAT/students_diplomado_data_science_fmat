-- Escribe un query que muestre las clasificaciones (**`rating`**)
-- que tienen más de 190 películas y una duración promedio mayor a 112 minutos.
SELECT
    rating,
    COUNT(f.*) AS peliculas,
    AVG(f.length) AS duracion
FROM
    film AS f
GROUP BY
    f.rating
HAVING
    COUNT(f.*) > 190
   AND AVG(f.length) > 112;