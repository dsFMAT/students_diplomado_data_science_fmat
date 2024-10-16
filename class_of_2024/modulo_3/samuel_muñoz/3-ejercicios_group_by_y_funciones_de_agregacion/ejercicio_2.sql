SELECT store_id, count(store_id) AS total_clientes 
FROM customer
GROUP BY store_id 