SELECT 
    first_name AS Nombre, last_name AS Apellido FROM actor
WHERE
    first_name = 'Adam'
UNION ALL
SELECT 
    first_name AS Nombre, last_name AS Apellido FROM actor
WHERE 
    last_name = 'Wood';