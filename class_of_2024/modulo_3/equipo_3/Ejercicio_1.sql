SELECT 
    c.name AS categoria,
    TO_CHAR(DATE_TRUNC('month', p.payment_date), 'YYYY-MM') AS mes_anio,
    SUM(p.amount) AS ingreso_total_mensual
FROM 
    payment p
JOIN 
    rental r ON p.rental_id = r.rental_id
JOIN 
    inventory i ON r.inventory_id = i.inventory_id
JOIN 
    film f ON i.film_id = f.film_id
JOIN 
    film_category fc ON f.film_id = fc.film_id
JOIN 
    category c ON fc.category_id = c.category_id
GROUP BY 
    c.name, DATE_TRUNC('month', p.payment_date)
HAVING 
    SUM(p.amount) > 0
ORDER BY 
    ingreso_total_mensual DESC;