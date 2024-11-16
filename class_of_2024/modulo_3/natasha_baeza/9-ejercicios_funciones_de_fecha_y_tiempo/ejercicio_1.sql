SELECT 
    TO_CHAR(DATE_TRUNC('month', rental_date), 'YYYY-MM') AS año_mes,
    EXTRACT(YEAR FROM rental_date) AS año,
    EXTRACT(MONTH FROM rental_date) AS mes,
    COUNT(*) AS total_rentas
FROM 
    rental
WHERE 
    rental_date >= NOW() - INTERVAL '20 years'
GROUP BY 
    año_mes, año, mes
ORDER BY 
    año DESC, mes DESC;
