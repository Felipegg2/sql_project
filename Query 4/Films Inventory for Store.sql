-- This query shows how many films there are in each store. 
-- They are ordering descending by inventory available, title, length and store.

SELECT COUNT(i.film_id) as inventory_avai, f.title, f.length, i.store_id
FROM inventory i
FULL JOIN film f ON i.film_id=f.film_id
FULL JOIN rental r ON i.inventory_id=r.inventory_id
GROUP BY i.film_id, f.title, f.length, i.store_id
ORDER BY inventory_avai desc, f.title