SELECT 
    DATE_TRUNC('month', r.rental_date) AS rental_month,
    COUNT(*) AS rental_count
FROM rental r
WHERE r.rental_date >= NOW() - INTERVAL '20 years'
GROUP BY rental_month
ORDER BY rental_month DESC;