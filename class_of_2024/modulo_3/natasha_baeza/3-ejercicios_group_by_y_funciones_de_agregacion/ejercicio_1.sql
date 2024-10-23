-- Ejercicio 1: Promedio de tasa de alquiler por clasificación

SELECT rating AS Clasificacion, ROUND(avg(rental_rate),3) AS Tasa_Alquiler FROM film
GROUP BY Clasificacion
