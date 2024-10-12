SELECT rating ,max(length) AS Duracion_Max, min(length) AS Duracion_Min
FROM film f 
GROUP BY rating 
