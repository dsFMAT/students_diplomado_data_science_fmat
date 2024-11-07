-- Encuentra cuántas películas fueron alquiladas por mes los últimos 20 años,
-- agrupando los resultados por mes —y año— y ordenándolos de manera descendente.
-- Usa las funciones de truncamiento de fechas y de agregación.
SELECT
    DATE_TRUNC('month', r.rental_date) AS mes,
    COUNT(*) AS total_alquileres
FROM
    rental AS r
WHERE
    r.rental_date >= (CURRENT_DATE - INTERVAL '20 years')
GROUP BY
    mes
ORDER BY
    mes DESC