SELECT 
    f.film_id, 
    f.title, 
    COUNT(r.rental_date) AS cantidad_de_rentas
FROM 
    film f
LEFT JOIN 
    inventory i 
    ON 
    f.film_id = i.film_id 
LEFT JOIN 
    rental r 
    ON 
    i.inventory_id = r.inventory_id 
GROUP BY 
    f.film_id, 
    f.title
ORDER BY 3 DESC 
LIMIT 10



