-- This query shows the films rented and returned.
-- They are ordering by Title, last renting length, and inventory id. 

SELECT i.film_id, i.inventory_id, f.title, SUM(r.return_date-r.rental_date) AS last_rent
FROM inventory i
JOIN film f ON i.film_id=f.film_id
JOIN rental r ON i.inventory_id=r.inventory_id
GROUP BY i.inventory_id, f.title
ORDER BY f.title, last_rent DESC, i.inventory_id