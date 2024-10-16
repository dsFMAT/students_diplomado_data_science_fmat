/*Ejercicio 3*/
SELECT  
	customer_id,
	SUM(amount) AS total_amount
FROM  
	payment	 
GROUP BY customer_id 
HAVING SUM(amount) > 180