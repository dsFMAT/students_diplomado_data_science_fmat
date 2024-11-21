-- Escribe un query que muestre el título de las películas y su fecha de lanzamiento (**release_year**),
-- ordenadas de la más reciente a la más antigua.
SELECT 
    f.title, f.release_year
FROM 
    film AS f
ORDER BY f.release_year DESC