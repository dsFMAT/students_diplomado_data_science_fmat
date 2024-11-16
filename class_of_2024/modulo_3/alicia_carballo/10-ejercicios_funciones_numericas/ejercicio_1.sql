
--1.El nuevo monto de la renta después de aplicar el descuento (discounted_amount).
--2. La diferencia entre el monto original y el nuevo monto. (abs_difference)
--3. El monto final redondeado al entero más cercano. (public_price)






SELECT  
    payment_id,
    amount AS original_amount,
    amount * 0.8 AS discounted_amount,
    amount - (amount * 0.8) AS abs_difference,
    ROUND(amount * 0.8) AS public_price,
    payment_date  
FROM 
    payment;
   
    
    EXTRACT(YEAR FROM payment_date) AS payment_year,
    EXTRACT(MONTH FROM payment_date) AS payment_month,

   
    EXTRACT(DOW FROM payment_date) AS payment_weekday,             

    -- pago en días desde la fecha actual
    CURRENT_DATE - payment_date AS payment_age_days,

    
    DATE_PART('month', AGE(payment_date)) AS payment_age_months,

    
    DATE_PART('year', AGE(payment_date)) AS payment_age_years,

    -- Ajuste de fecha al último día mes al pago
    DATE_TRUNC('month', payment_date) + INTERVAL '1 month' - INTERVAL '1 day' AS end_of_month,

    
    CASE 
        WHEN payment_date >= CURRENT_DATE - INTERVAL '1 year' THEN 'Yes'
        ELSE 'No'
    END AS recent_year_payment

FROM 
    payments;
    
   
   
   
   
   
   
   
   
 --SELECT * 
-- FROM information_schema.columns --
-- WHERE table_name = 'payments';--
