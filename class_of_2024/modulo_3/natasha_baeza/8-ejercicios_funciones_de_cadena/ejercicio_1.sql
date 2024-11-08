SELECT 
customer_id,
INITCAP (TRIM(first_name)) AS formatted_first_name,
UPPER (last_name) AS corrected_last_name,
CONCAT (first_name,' ', last_name ) AS full_name,
REPLACE(first_name,'o','O') AS corrected_first_name,
SUBSTRING (first_name,1,3)  AS substring_first_name,
LENGTH(first_name || ' ' || last_name) AS name_length,
POSITION('a' IN last_name) AS position_of_A_in_last_name
FROM customer