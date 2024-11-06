SELECT 
    DATE_TRUNC('month', rental_date) AS rental_month, 
    COUNT(*) AS total_rentals  
FROM 
    rental   --tabla alquiler--
WHERE 
    rental_date >= CURRENT_DATE - INTERVAL '20 years'   --fecha que representa exactamente 20 años antes del día de hoy--
GROUP BY 
    rental_month 
ORDER BY 
    rental_month DESC; 
   
   
   
   --cuántas películas fueron alquiladas por mes los últimos 20 años,--
   -- agrupando los resultados por mes —y año— y ordenándolos de manera descendente.--

   
   