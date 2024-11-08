SELECT c.name,
       (COUNT(fc.film_id) * 1.0 / (SELECT COUNT(*) FROM film))*100 AS porcentaje
FROM film_category fc
LEFT JOIN category c
  ON fc.category_id = c.category_id
GROUP BY c.name
ORDER BY porcentaje

