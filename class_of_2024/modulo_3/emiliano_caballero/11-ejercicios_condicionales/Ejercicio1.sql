/*
El equipo de negocios quiere entender los ingresos mensuales generados por cada categoría de película. Necesitan un reporte que incluya:

- El nombre de la categoría.
- El mes y año en que se generaron los ingresos.
- El ingreso total mensual para esa categoría. #Está en payment

El reporte debe mostrar únicamente las categorías que generaron ingresos mayores a $200 en algún mes y deben estar ordenadas de mayor a menor ingreso.
*/

SELECT c.name , DATE_TRUNC('month', r.rental_date) AS Anio_Mes, sum(p.amount) AS Ingreso_Mensual
FROM category c
JOIN film_category fc 
	ON fc.category_id = c.category_id
JOIN film f 
	ON f.film_id = fc.film_id
JOIN inventory i 
	ON f.film_id = i.film_id 
JOIN rental r 
	ON i.inventory_id = r.inventory_id 
JOIN payment p 
	ON r.rental_id = p.rental_id 
GROUP BY c.name ,Anio_Mes
HAVING sum(p.amount) > 200
ORDER BY Ingreso_Mensual DESC;
-------------------------------
SELECT
    c.name AS categoria,
    TO_CHAR(DATE_TRUNC('month', r.rental_date), 'YYYY-MM') AS year_month,
    SUM(p.amount) AS ingreso_mensual
FROM
    payment p
        INNER JOIN rental r ON p.rental_id = r.rental_id
        INNER JOIN inventory i ON r.inventory_id = i.inventory_id
        INNER JOIN film f ON i.film_id = f.film_id
        INNER JOIN film_category fc ON f.film_id = fc.film_id
        INNER JOIN category c ON fc.category_id = c.category_id
GROUP BY
    1, 2
HAVING
    SUM(p.amount) > 200
ORDER BY
    ingreso_mensual DESC
/*
 La empresa desea identificar a los clientes frecuentes. Crear una consulta que devuelva:

- Nombre completo del cliente.
- Número total de alquileres.
- Porcentaje que representa el numero de alquileres del cliente sobre el total de alquileres del negocio. Por ejemplo sí se han rentado 100 películas de manera histórica, mientras que Juan Perez ha rentado 10 películas, entonces Juan Perez tiene un porcentaje de 10%

El resultado debe incluir solo aquellos clientes que han hecho más de 40 alquileres. Ordena la lista de mayor a menor en función del número de alquileres.
 */

SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS nombre_Completo,
    COUNT(r.rental_id) AS rentas_totales,
    ROUND((COUNT(r.rental_id) * 100.0) / (SELECT COUNT(*) FROM rental), 2) AS porcentaje_alquiler
FROM customer c
JOIN rental r 
	ON c.customer_id = r.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING COUNT(r.rental_id) > 40
ORDER BY rentas_totales DESC;
------------------------------------------------------
SELECT
    CONCAT(c.first_name, ' ', c.last_name) AS nombre_completo,
    COUNT(r.rental_id) AS total_alquileres,
    ROUND((COUNT(r.rental_id) * 100.0 / (SELECT COUNT(*) FROM rental)), 2) AS porcentaje_alquileres
FROM
    customer c
        INNER JOIN rental r ON c.customer_id = r.customer_id
GROUP BY
    c.first_name, c.last_name
HAVING
    COUNT(r.rental_id) > 40
ORDER BY
    total_alquileres DESC

/*
 * El equipo de finanzas quiere saber cuáles películas han tenido un bajo ingreso total en sus alquileres. Crea un reporte que incluya:

- Título de la película.
- Ingreso total generado.

Excluye del reporte las películas que generaron más de $50. Ordena el resultado alfabéticamente por título.*/

SELECT 
    f.title,
    SUM(p.amount) AS ingreso_Total
FROM film f
JOIN inventory i 
	ON f.film_id = i.film_id
JOIN rental r 
	ON i.inventory_id = r.inventory_id
JOIN payment p 
	ON r.rental_id = p.rental_id
GROUP BY f.title
HAVING SUM(p.amount) <= 50
ORDER BY f.title ASC;
--------------------------------------
SELECT
    f.title AS titulo,
    SUM(p.amount) AS ingreso_total
FROM
    film f
    INNER JOIN inventory i ON f.film_id = i.film_id
    INNER JOIN rental r ON i.inventory_id = r.inventory_id
    INNER JOIN payment p ON r.rental_id = p.rental_id
GROUP BY
    f.title
HAVING
    SUM(p.amount) <= 50
ORDER BY
    titulo
/*
 El equipo de marketing quiere saber cuales son las tres películas más populares por categoría, permitiendo empates. Realiza un análisis que incluya:

- Nombre de la categoría.
- Título de la película.
- Número de veces que la película ha sido rentada.
- Ranking de popularidad de cada película dentro de su categoría (siendo 1 la más rentada).

La consulta debe ordenar las películas dentro de cada categoría en función del ranking.
 * */


WITH pelicula_popular AS (
    SELECT
        c.name AS categoria,
        f.title AS titulo,
        COUNT(r.rental_id) AS total_rentas,
        DENSE_RANK() OVER (PARTITION BY c.name ORDER BY COUNT(r.rental_id) DESC) AS ranking_popularidad
    FROM
        category c
        INNER JOIN film_category fc ON c.category_id = fc.category_id
        INNER JOIN film f ON fc.film_id = f.film_id
        INNER JOIN inventory i ON f.film_id = i.film_id
        INNER JOIN rental r ON i.inventory_id = r.inventory_id
    GROUP BY
        c.name, f.title
)
SELECT
    categoria,
    titulo,
    total_rentas,
    ranking_popularidad
FROM
    pelicula_popular
WHERE
    ranking_popularidad <= 3
ORDER BY
    categoria, ranking_popularidad, titulo

