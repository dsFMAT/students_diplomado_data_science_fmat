SELECT store_id , count(customer_id) AS Clientes
FROM customer c 
GROUP BY store_id
