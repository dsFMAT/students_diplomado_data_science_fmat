-- Escribe un query que muestre el título de las películas cuya tasa de alquiler es exactamente de 4.99.
-- Usa la tabla `film`.
-- Filtra las películas cuyo valor de `rental_rate` sea igual a 4.99.
-- Muestra solo el título (`title`) de las películas, mostrar el titulo con el nombre titulo en lugar de title.
SELECT film.title AS titulo FROM film
    WHERE rental_rate=4.99