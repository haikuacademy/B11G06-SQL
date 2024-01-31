CREATE TABLE users (
	user_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(100),
	password VARCHAR(50),
	imageURL VARCHAR(255)
);

CREATE TABLE houses (
	house_id SERIAL PRIMARY KEY,
	location VARCHAR(50),
	bedrooms INT,
	bathrooms INT,
	price_night INT,
	description VARCHAR(2500),
	user_id INT REFERENCES users(user_id) 
	-- ask if int or serial during references -- 
);

CREATE TABLE bookings (
	user_id SERIAL REFERENCES users(user_id), -- ask-
	booking_id SERIAL PRIMARY KEY,
	price_night INT,
	total_price INT
);

CREATE TABLE reviews (
	review_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	review_description VARCHAR(2500),
	star_rating FLOAT,
	review_date DATE,
	user_id INT REFERENCES users(user_id), -- asks--
	house_id INT REFERENCES houses(house_id)

);

CREATE TABLE house_photos (
	photo_id SERIAL PRIMARY KEY,
	house_id INT REFERENCES houses(house_id),
	photo_url imageURL VARCHAR(255),
	feature_photo BOOLEAN,
);