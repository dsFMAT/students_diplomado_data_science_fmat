SELECT 
    f.film_id, 
    f.title, 
    r.rental_date
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
WHERE r.rental_date IS NULL




