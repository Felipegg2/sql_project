--  This query shows how many clients have been made some payment 
-- by city and country. Additionally, there has a column with the latest date. 
-- when a payment was made.

SELECT COUNT (p.customer_id) AS Sum_Clients, ct.city, co.country, 
(MAX (p.payment_date)::DATE) AS Last_Payment
FROM payment p 
JOIN customer c ON p.customer_id=c.customer_id
JOIN address ad ON ad.address_id=c.address_id
JOIN city ct ON ad.address_id=ct.city_id
FULL JOIN country co ON ct.country_id=co.country_id
GROUP BY ct.city, co.country
ORDER BY Sum_Clients DESC;