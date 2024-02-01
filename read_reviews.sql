SELECT
    users.profile_pictureURL,
    users.first_name,
    users.last_name,
	reviews.review_date, 
	reviews.house_id, 
	reviews.user_id, 
	reviews.star_rating, 
	reviews.review_description
FROM reviews
JOIN users
ON users.user_id_id = reviews.user_id
WHERE house_id = 1


-- Insert reviews
INSERT INTO reviews (
    review_date, 
    house_id,
    user_id, 
	star_rating, 
	review_description

)
VALUES (
    '2024-01-22',
    1,
    1234,
    '5',
    'Great place to stay! The house is very clean and comfortable, and the location is perfect. The host was very friendly and helpful. Highly Recommend!'
),
    (
    '2024-01-05',
    1,
    1234,
    '3',
    'On the positive side, the location was fantastic - just a short walk to the beach and local eateries. The view from the balcony was breathtaking, especially during sunsets. However, the houst itself left a bit to be desired. The decor was charming and beach-themed, but the cleanliness was not up to par; we found dust in several corners and the bathroom fixtures were a bit dated. The amenities listed were all present, but the Wi-Fi was frustatingly slow and unreliable. Additionally, while the host was polite, their response was slower than expected, which made coordinating check-in more challening than it needed to be. It''s decent place if your''re not too fussy about the finer details and are more focused on location and views'
);