SELECT last_name, count(actor_id) 
FROM actor 
GROUP BY last_name 
HAVING count(actor_id) > 3 