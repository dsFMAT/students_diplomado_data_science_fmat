
SELECT 
	payment_id,
	amount,
	amount * .8 AS discounted_amount,
	amount * .2 AS abs_difference,
	round(amount * .8) AS public_price
FROM payment 