CREATE TABLE users (
	user_id SERIAL PRIMARY KEY NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	password VARCHAR(50) NOT NULL,
	imageURL VARCHAR(255)
);

CREATE TABLE houses (
	house_id SERIAL PRIMARY KEY NOT NULL,
	location VARCHAR(50) NOT NULL,
	bedrooms INT NOT NULL,
	bathrooms INT NOT NULL,
	price_night INT NOT NULL,
	description VARCHAR(2500) NOT NULL,
	user_id INT REFERENCES users(user_id) 
	-- ask if int or serial during references -- 
);

CREATE TABLE bookings (
	user_id SERIAL REFERENCES users(user_id), -- ask-
	booking_id SERIAL PRIMARY KEY NOT NULL,
	price_night INT NOT NULL,
	total_price INT NOT NULL
);

CREATE TABLE reviews (
	review_id SERIAL PRIMARY KEY NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	review_description VARCHAR(2500) NOT NULL,
	star_rating FLOAT,
	review_date DATE,
	user_id INT REFERENCES users(user_id), -- asks--
	house_id INT REFERENCES houses(house_id)

);

CREATE TABLE house_photos (
	photo_id SERIAL PRIMARY KEY NOT NULL,
	house_id INT REFERENCES houses(house_id),
	photo_url imageURL VARCHAR(255),
	feature_photo BOOLEAN,
);