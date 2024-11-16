SELECT payment_id,
amount AS monto_original,
(amount* 0.8)AS discounted_amount,
amount - (amount* 0.8) AS abs_difference,
ceil (amount*0.8) AS public_price
FROM payment
GROUP BY payment_id