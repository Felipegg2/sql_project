-- This query shows how the films are distributed within special features and 
-- rating. It's ordered by number of films, special features and rating.

SELECT special_features, rating, COUNT(special_features) as Amount
from film
GROUP BY special_features, rating
ORDEr BY Amount DESC, special_features, rating