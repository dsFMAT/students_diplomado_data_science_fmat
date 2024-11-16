SELECT 
    f.rating,
    COUNT(*) AS movie_count,
    (COUNT(*)*1.0 / (SELECT COUNT(*) FROM film)) AS percentage
FROM 
    film f
GROUP BY 
    f.rating
ORDER BY 
    percentage DESC;

 
