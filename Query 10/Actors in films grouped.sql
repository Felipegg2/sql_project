-- This query shows a table grouped by how many actors there are in films. 
-- and the number of films with the same number of actors.

WITH actor_film as 
(SELECT COUNT (DISTINCT f.title) as movie, COUNT (a.first_name) AS number_of_actors
FROM film f
JOIN film_actor fa ON f.film_id=fa.film_id
JOIN actor a ON fa.actor_id=a.actor_id
GROUP BY f.title
ORDER BY number_of_actors DESC)

SELECT number_of_actors, SUM (movie) AS number_of_films
FROM ACTOR_FILM
GROUP BY number_of_actors, movie
ORDER BY number_of_actors DESC;