--- #10. FUNCIONES NUMÉRICAS

--- Ejercicio: Análisis del Descuento Aplicado en Rentas y su Impacto en el Ingreso Total
--- Contexto:
--- La tienda de alquiler de películas quiere analizar el impacto de aplicar un descuento del 20% para ello se necesita:

--- El nuevo monto de la renta después de aplicar el descuento (discounted_amount).
--- La diferencia entre el monto original y el nuevo monto. (abs_difference)
--- El monto final redondeado al entero más cercano. (public_price)
--- Usa la tabla payments, y la columna amount como fuente de información, no olvides incluir el payment_id en tu consulta

select p.payment_id, p.amount, p.amount*0.80 as discounted_amount,
		p.amount- p.amount*0.80 as abs_difference,
		round(p.amount*0.80) as public_price
from payment p

--- Si es de interés conocer el nombre de la pelicula a la cual se le realiza el descuento:

select p.payment_id, f.title, p.amount, p.amount*0.80 as discounted_amount,
		abs(p.amount- p.amount*0.80) as abs_difference,
		round(p.amount*0.80) as public_price
FROM film f
LEFT JOIN inventory i ON i.film_id = i.film_id 
LEFT JOIN rental r ON r.inventory_id = i.inventory_id 
LEFT JOIN payment p ON r.customer_id = p.customer_id 


