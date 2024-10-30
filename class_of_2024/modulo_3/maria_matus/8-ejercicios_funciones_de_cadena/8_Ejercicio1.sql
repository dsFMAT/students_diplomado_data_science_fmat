--- Ejercicios Funciones de Cadena

--- Construye una consulta que devuelva a los customers con las siguientes columnas:
--- customer_id: El ID del cliente.
--- formatted_first_name: El nombre del cliente formateado con INITCAP() y sin espacios extra.
--- corrected_last_name: El apellido en mayúsculas.
--- full_name: El nombre completo concatenado y separando first y last name con un espacio.
--- corrected_first_name: El nombre con las letras "o" reemplazadas por "O".
--- substring_first_name: Los primeros 3 caracteres del nombre.
--- name_length: La longitud total del nombre completo.
--- position_of_A_in_last_name: La posición de la letra "A" en el apellido (o 0 si no existe).


SELECT customer_id AS ID_Cliente, TRIM(INITCAP(first_name)) AS formatted_first_name,
	   UPPER(last_name) AS corrected_last_name, concat(first_name, ' ', last_name) AS full_name,
	   REPLACE(first_name, 'o', 'O') AS corrected_first_name, SUBSTRING(first_name, 1,3) AS substring_first_name,
	   (LENGTH(concat(c.first_name, ' ', c.last_name))) AS name_length, POSITION('A' IN first_name) AS position_of_A_in_last_name
FROM customer c

