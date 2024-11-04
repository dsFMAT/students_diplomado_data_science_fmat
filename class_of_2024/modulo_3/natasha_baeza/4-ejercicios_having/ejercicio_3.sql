-- Ejercicio 3:  Clientes con pagos totales mayores a 180


SELECT customer_id AS ID_Cliente, sum(amount) AS suma_pagos
FROM payment 
GROUP BY customer_id
having(sum(amount)>180)
ORDER BY suma_pagos DESC