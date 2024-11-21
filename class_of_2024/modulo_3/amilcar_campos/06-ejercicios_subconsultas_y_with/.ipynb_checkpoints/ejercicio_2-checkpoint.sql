-- Obtener el porcentaje de películas en la base de datos distribuidas por clasificación (rating).
-- Este análisis ayudará a comprender la proporción de películas en cada clasificación,
-- lo que permitirá tomar decisiones informadas sobre la oferta de contenido
-- para diferentes grupos de audiencia, identificando si alguna clasificación está sobre o sub-representa
SELECT
    rating,
    ROUND(COUNT(f.*) * 100.0 / (SELECT COUNT(f.*) FROM film AS f), 2) AS porcentaje
FROM
    film AS f
GROUP BY
    rating
ORDER BY
    porcentaje DESC