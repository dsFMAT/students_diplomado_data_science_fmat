SELECT customer_id, SUM(amount) AS total_payments
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 180;
