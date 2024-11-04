-- Ejercicio 2:  Clientes por tienda

SELECT store_id AS tienda, count(DISTINCT customer_id) AS Clientes FROM Customer
GROUP BY store_id
