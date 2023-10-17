-- This query shows the 100 films with the highest rental rate.
-- They are ordering descending by rental rate, category and title.

SELECT f.title, c.name as Category, f.rental_rate
FROM category c
JOIN film_category fc ON c.category_id=fc.category_id
JOIN film f ON f.film_id=fc.film_id
GROUP BY c.name, f.title, f.rental_rate
ORDER BY f.rental_rate DESC, C.name, f.title
LIMIT 100