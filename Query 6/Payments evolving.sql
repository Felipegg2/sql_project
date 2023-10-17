-- This query shows how the payments have been evolving throughout time.

SELECT SUM(p.amount) as Total_payments, EXTRACT (YEAR FROM (p.payment_date::DATE)) as YEAR, 
EXTRACT (MONTH FROM (p.payment_date::DATE)) as MONTH,
EXTRACT (DAY FROM (p.payment_date::DATE)) as DAY
FROM payment p
GROUP BY YEAR, MONTH, DAY 
ORDER BY YEAR, MONTH, DAY