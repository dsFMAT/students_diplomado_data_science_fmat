-- La tienda de alquiler de películas quiere analizar el impacto de  aplicar un descuento del 20% para ello se necesita:
--
-- 1. El nuevo monto de la renta después de aplicar el descuento (discounted_amount).
-- 2. La diferencia entre el monto original y el nuevo monto. (abs_difference)
-- 3. El monto final redondeado al entero más cercano. (public_price)
--
-- Usa la tabla payments, y la columna amount como fuente de información, no olvides incluir el payment_id en tu consulta
SELECT
    p.payment_id,
    p.amount AS original_amount,
    p.amount * 0.80 AS discounted_amount,
    p.amount - (p.amount * 0.80) AS abs_difference,
    ROUND(p.amount * 0.80) AS public_price
FROM
    payment As p