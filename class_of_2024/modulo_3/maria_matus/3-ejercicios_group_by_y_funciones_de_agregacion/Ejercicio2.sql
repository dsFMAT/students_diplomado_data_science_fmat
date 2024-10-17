SELECT COUNT(customer_id) AS Total_clientes, store_id 
FROM customer 
GROUP BY store_id