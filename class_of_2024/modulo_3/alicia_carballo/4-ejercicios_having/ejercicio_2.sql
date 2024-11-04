SELECT 
    last_name AS apellido, 
    COUNT(*) AS numero_actores
FROM 
    actor
GROUP BY 
    last_name
HAVING 
    COUNT(*) > 3;

   
   --lista de apellidos que se repiten más de 3 veces--