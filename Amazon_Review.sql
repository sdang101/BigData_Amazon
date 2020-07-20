-- Statistical summary of vine_table
SELECT vine 
	, COUNT(*) 
	, CAST(AVG(star_rating) AS DECIMAL(10,2)) AS avg_star_rating
	, CAST(variance(star_rating) AS DECIMAL(10,2)) AS variance_star_rating
	, CAST(AVG(helpful_votes) AS DECIMAL(10,2)) AS avg_helpful_votes
	, CAST(variance(helpful_votes) AS DECIMAL(10,2)) AS variance_helpful_votes
	, CAST(AVG(total_votes) AS DECIMAL(10,2)) AS avg_total_votes
	, CAST(variance(total_votes) AS DECIMAL(10,2)) AS variance_total_votes		 			 		
FROM vine_table
GROUP BY vine;

-- Statistical summary of vine_table for 5 star_rating
SELECT  v.vine 
	, COUNT(*) 
	, CAST(AVG(star_rating) AS DECIMAL(10,2)) AS avg_star_rating
	, CAST(AVG(helpful_votes) AS DECIMAL(10,2)) AS avg_helpful_votes
	, CAST(variance(helpful_votes) AS DECIMAL(10,2)) AS variance_helpful_votes
	, CAST(AVG(total_votes) AS DECIMAL(10,2)) AS avg_total_votes
	, CAST(variance(total_votes) AS DECIMAL(10,2)) AS variance_total_votes			 			 
FROM vine_table AS v 
WHERE v.star_rating = 5 
GROUP BY v.vine;