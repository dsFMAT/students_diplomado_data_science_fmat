SELECT 
    customer_id,
    TRIM(INITCAP(first_name)) AS formatted_first_name,
    UPPER(last_name) AS corrected_last_name,
    TRIM(CONCAT(TRIM(first_name), ' ', TRIM(last_name))) AS full_name,
    REPLACE(first_name, 'o', 'O') AS corrected_first_name,
    SUBSTRING(first_name FROM 1 FOR 3) AS substring_first_name,
    LENGTH(TRIM(CONCAT(TRIM(first_name), ' ', TRIM(last_name)))) AS name_length,
    POSITION('A' IN last_name) AS position_of_A_in_last_name
FROM 
    customer;

   
   
   
 --INITCAP() para capitalizar el primer carácter--
 --TRIM() para eliminar espacios--
 --leng longitud--