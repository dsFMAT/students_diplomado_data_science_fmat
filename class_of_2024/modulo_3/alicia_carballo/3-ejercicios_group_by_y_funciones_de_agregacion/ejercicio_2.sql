SELECT store_id, COUNT(*) AS total_clientes
FROM customer
GROUP BY store_id;


--Clientes por tienda-- por qué solo 2, verificar customer