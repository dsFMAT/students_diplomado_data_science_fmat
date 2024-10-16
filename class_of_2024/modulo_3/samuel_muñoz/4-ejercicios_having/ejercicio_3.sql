SELECT customer_id, sum(amount) AS monto
FROM payment
GROUP BY customer_id 
HAVING sum(amount) > 180
ORDER BY monto DESC