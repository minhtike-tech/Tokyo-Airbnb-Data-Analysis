SELECT * FROM clean_listings cl 
LIMIT 10;

SELECT * FROM reviews r 
LIMIT 10;

SELECT r.reviewer_name,cl.neighbourhood_cleansed, COUNT(r.id) as times_visited FROM clean_listings cl 
JOIN reviews r 
ON cl.id = r.listing_id 
GROUP BY r.reviewer_name
ORDER BY times_visited DESC
LIMIT 10;

SELECT cl.neighbourhood_cleansed, COUNT(r.id) as total_reviews FROM clean_listings cl 
JOIN reviews r 
ON r.listing_id  = cl.id 
GROUP BY cl.neighbourhood_cleansed 
ORDER BY total_reviews DESC
LIMIT 10;

SELECT cl.neighbourhood_cleansed, 
       COUNT(r.id) as total_reviews,
       AVG(CAST(REPLACE(REPLACE(cl.price, '$', ''), ',', '') AS FLOAT)) as avg_price
FROM clean_listings cl
JOIN reviews r ON cl.id = r.listing_id
GROUP BY cl.neighbourhood_cleansed
ORDER BY total_reviews DESC
LIMIT 10;

