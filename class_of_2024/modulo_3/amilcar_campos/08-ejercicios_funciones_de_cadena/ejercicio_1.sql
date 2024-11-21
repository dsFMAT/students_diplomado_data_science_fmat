-- Construye una consulta que devuelva a los customers con las siguientes columnas:
-- `customer_id`: El ID del cliente.
-- `formatted_first_name`: El nombre del cliente formateado con `INITCAP()` y sin espacios extra.
-- `corrected_last_name`: El apellido en mayúsculas.
-- `full_name`: El nombre completo concatenado y separando first y last name con un espacio.
-- `corrected_first_name`: El nombre con las letras "o" reemplazadas por "O".
-- `substring_first_name`: Los primeros 3 caracteres del nombre.
-- `name_length`: La longitud total del nombre completo.
-- `position_of_A_in_last_name`: La posición de la letra "A" en el apellido (o 0 si no existe).
SELECT
    c.customer_id,
    INITCAP(TRIM(c.first_name)) AS formatted_first_name,
    UPPER(c.last_name) AS corrected_last_name,
    CONCAT(TRIM(c.first_name), ' ', TRIM(c.last_name)) AS full_name,
    REPLACE(c.first_name, 'o', 'O') AS corrected_first_name,
    SUBSTRING(c.first_name FROM 1 FOR 3) AS substring_first_name,
    LENGTH(TRIM(c.first_name) || ' ' || TRIM(c.last_name)) AS name_length,
    COALESCE(POSITION('A' IN UPPER(c.last_name)), 0) AS position_of_A_in_last_name
FROM
    customer AS c