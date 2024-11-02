SELECT 
	customer_id,
	trim(initcap(first_name))  AS formatted_first_name,
	upper(last_name) AS  corrected_last_name,
	replace(first_name, 'o','0') AS corrected_first_name,
	substring(first_name, 1, 3) AS substring_first_name,
	length(concat(first_name, ' ', last_name)) AS name_length,
	position('A' IN last_name) AS position_of_A_in_last_name
FROM customer