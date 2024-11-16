SELECT DATE_PART('year',rental_date) AS Año, TO_CHAR(rental_date,'Month') AS Mes, COUNT(rental_date) AS rentas
FROM rental r 
WHERE rental_date >= (CURRENT_DATE - INTERVAL '20 years')
GROUP BY año, mes 
ORDER BY rentas DESC