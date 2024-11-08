SELECT first_name, last_name 
FROM actor a 
WHERE first_name = 'Adam'
UNION ALL
SELECT first_name, last_name 
FROM actor a 
WHERE last_name = 'Wood'