INSERT INTO bookings (price_night, booking_date, message, total_price, user_id)
VALUES 
	(250, '2024-12-20', 'hello there!', 500, 2),
	(100, '2024-12-20', 'hello there!', 1256, 4),
	(100, '2024-12-20', 'hello there!', 1247, 3),
	(300, '2024-12-20', 'hello there!', 300, 5),
	(500, '2024-12-20', 'hello there!', 256, 6);



SELECT houses.house_photoURL, houses.location, houses.bedrooms, houses.bathrooms, houses.price_night, houses.total_price, bookings.booking_date
FROM bookings
LEFT JOIN houses	
ON houses.user_id = bookings.user_id




