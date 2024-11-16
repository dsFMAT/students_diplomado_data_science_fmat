SELECT 
    p.payment_id,
    p.amount AS original_amount,
    p.amount * 0.8 AS discounted_amount,
    p.amount - (p.amount * 0.8) AS abs_difference,
    ROUND(p.amount * 0.8,0) AS public_price
FROM payment p;
