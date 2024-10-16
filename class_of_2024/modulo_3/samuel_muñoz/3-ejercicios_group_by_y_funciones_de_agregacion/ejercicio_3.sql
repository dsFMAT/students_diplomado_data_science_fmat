SELECT rating, max(length) AS duracion_max, min(length) AS duracion_min
FROM film
GROUP BY rating
ORDER BY duracion_max DESC, duracion_min DESC