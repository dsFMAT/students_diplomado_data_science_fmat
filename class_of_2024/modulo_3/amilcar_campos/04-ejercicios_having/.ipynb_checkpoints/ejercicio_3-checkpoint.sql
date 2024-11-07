-- Escribe un query que muestre el **ID del cliente** (**`customer_id`**)
-- y la **suma total de los pagos** realizados por cada cliente, 
-- pero solo para aquellos clientes que hayan pagado más de 180 en total.

SELECT
    p.customer_id, SUM(p.amount)
FROM
    payment AS p
GROUP BY
    1
HAVING
    SUM(p.amount) > 180