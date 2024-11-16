SELECT payment_id, amount, amount*(1-0.2) AS discounted_amount,
       amount - amount*(1-0.2) AS abs_difference,
       ROUND(amount*(1-0.2),0) AS public_price
FROM payment p 