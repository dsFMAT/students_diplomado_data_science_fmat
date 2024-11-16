SELECT rating ,avg(rental_rate ) AS Promedio_Tasa_Alquiler
FROM film f 
GROUP BY rating 