SELECT 
	customer_id,
	trim(initcap(first_name)) AS formatted_first_name,
	upper(last_name) AS corrected_last_name,
	CONCAT(first_name, ' ', last_name) AS full_name,
	REPLACE(first_name, 'o', 'O') AS corrected_first_name,
	SUBSTRING(first_name, 1, 3) AS substring_first_name,
	LENGTH(CONCAT(first_name, ' ', last_name))-1 AS name_length,
	POSITION('A' IN upper(last_name)) AS position_of_A_in_last_name
FROM customer 