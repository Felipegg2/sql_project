-- This query lists films, actors, rating, language and length.
-- It's ordering by length.

SELECT DISTINCT(f.title), a.first_name, a.last_name, f.rating, lg.name as Language, f.length
FROM film f
JOIN film_actor fa ON f.film_id=fa.film_id
JOIN actor a ON fa.actor_id=a.actor_id
LEFT JOIN language lg ON lg.language_id=f.language_id
ORDER BY length DESC;