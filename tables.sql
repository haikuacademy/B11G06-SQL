CREATE TABLE users (
	user_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	password VARCHAR(50) NOT NULL,
	profile_pictureURL VARCHAR(255)
);

CREATE TABLE houses (
	house_id SERIAL PRIMARY KEY,
	location VARCHAR(50) NOT NULL,
	bedrooms INT NOT NULL,
	bathrooms INT NOT NULL,
	price_night INT NOT NULL,
	description VARCHAR(2500) NOT NULL,
	user_id INT REFERENCES users(user_id) 
	
);

CREATE TABLE bookings (
	user_id SERIAL REFERENCES users(user_id), 
	booking_id SERIAL PRIMARY KEY NOT NULL,
	price_night INT NOT NULL,
	booking_date DATE,
	message VARCHAR(250),
	total_price INT NOT NULL
);

CREATE TABLE reviews (
	review_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	review_description VARCHAR(2500) NOT NULL,
	star_rating FLOAT,
	review_date DATE,
	user_id INT REFERENCES users(user_id), 
	house_id INT REFERENCES houses(house_id)

);

CREATE TABLE house_photos (
	photo_id SERIAL PRIMARY KEY,
	house_id INT REFERENCES houses(house_id),
	house_photosURL VARCHAR(255),
	feature_photo BOOLEAN

);
