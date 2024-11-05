SELECT
	film.rating AS category, 
	count(film.rating) AS films,
	(count(film.rating) * 100) / (
		SELECT count(*) FROM film
	)::float AS percentage_by_category
FROM film 
GROUP BY film.rating 