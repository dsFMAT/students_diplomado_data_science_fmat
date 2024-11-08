SELECT f.title, COUNT(r.rental_date) AS Total_rentas
FROM film f
LEFT JOIN inventory i ON f.film_id = i.film_id
LEFT JOIN rental r ON i.inventory_id = r.inventory_id 
GROUP BY f.title
ORDER BY Total_rentas DESC
LIMIT 10