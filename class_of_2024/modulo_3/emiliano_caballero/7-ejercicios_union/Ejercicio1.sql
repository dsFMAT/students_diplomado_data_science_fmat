SELECT 
    a.actor_id,
    a.first_name,
    a.last_name
FROM actor a
WHERE a.first_name = 'Adam'
UNION ALL
SELECT 
    a.actor_id,
    a.first_name,
    a.last_name
FROM actor a
WHERE a.last_name = 'Wood';

