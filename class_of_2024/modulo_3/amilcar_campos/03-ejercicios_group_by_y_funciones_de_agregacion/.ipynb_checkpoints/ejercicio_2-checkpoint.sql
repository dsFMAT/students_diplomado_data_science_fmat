-- Escribe un query que muestre el total de clientes (tabla customer) por cada tienda (store_id)
SELECT
    store_id, COUNT(c.customer_id)
FROM
    customer AS c
GROUP BY
    1