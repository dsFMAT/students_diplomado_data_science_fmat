SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name = 'Adam'

UNION ALL

SELECT actor_id, first_name, last_name
FROM actor
WHERE last_name = 'Wood';




--combina los resultados de ambas consultas y permite incluir duplicados--
--
