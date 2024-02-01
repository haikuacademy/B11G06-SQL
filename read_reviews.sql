SELECT 
	reviews.review_date, 
	reviews.first_name, 
	reviews.last_name, 
	reviews.star_rating, 
	reviews.review_description
FROM reviews
JOIN houses
ON houses.house_id = reviews.house_id


-- Insert reviews
INSERT INTO reviews (
    review_date, 
    first_name, 
	last_name, 
	star_rating, 
	review_description

)

VALUES (
    '2024-01-22',
    'Mike',
    'Lino'


)
