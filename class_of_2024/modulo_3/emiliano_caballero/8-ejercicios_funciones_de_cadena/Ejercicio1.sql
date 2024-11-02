SELECT 
    c.customer_id,
    INITCAP(TRIM(c.first_name)) AS formatted_first_name,
    UPPER(c.last_name) AS corrected_last_name,
    CONCAT(TRIM(c.first_name), ' ', TRIM(c.last_name)) AS full_name,
    REPLACE(c.first_name, 'o', 'O') AS corrected_first_name,
    SUBSTRING(c.first_name, 1, 3) AS substring_first_name,
    LENGTH(CONCAT(TRIM(c.first_name), ' ', TRIM(c.last_name))) AS name_length,
    POSITION('A' IN c.last_name) AS position_of_A_in_last_name
FROM 
    customer c;
