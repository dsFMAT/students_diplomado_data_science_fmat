SELECT 
    customer_id, 
    SUM(amount) AS total_pagado
FROM 
    payment
GROUP BY 
    customer_id
HAVING 
    SUM(amount) > 180;

   
   --Clientes con pagos totales mayores a 180--