-- This query shows the customer list with addresses, cities, 
-- countries and total amount of films rented. Ordered descending

SELECT 
c.first_name, c.last_name, ad.address, ct.city, co.country, SUM(p.amount) AS amount 
FROM payment p 
JOIN customer c ON p.customer_id=c.customer_id
JOIN address ad ON ad.address_id=c.address_id
JOIN city ct ON ad.address_id=ct.city_id
FULL JOIN country co ON ct.country_id=co.country_id
GROUP BY c.customer_id, ad.address, ct.city, co.country
ORDER BY amount DESC;