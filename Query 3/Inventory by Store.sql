-- This query shows how many films there are in the stores and the
-- rental rate of each one.

SELECT f.title, (SELECT address FROM address WHERE address.address_id = s.address_id) AS shop,
COUNT (f.title), f.rental_rate
FROM store s
JOIN inventory i ON s.store_id=i.store_id
JOIN film f ON i.film_id=f.film_id
GROUP BY shop, f.title, f.rental_rate