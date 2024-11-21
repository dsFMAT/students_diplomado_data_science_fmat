-- Selecciona el título y la tarifa de las películas con una tarifa menor o igual a $2,
-- aplicando alias a las columnas para renombrarlas. Muestra la tarifa de las películas con IVA (16%)
SELECT f.title AS titulo, f.rental_rate * 1.16 AS tarifa
FROM film AS f
WHERE
    f.rental_rate <= 2