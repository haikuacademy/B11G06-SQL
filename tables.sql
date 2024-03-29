CREATE TABLE users (
	user_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	password VARCHAR(50) NOT NULL,
	profile_pictureURL VARCHAR(255)
);

CREATE TABLE houses (
	reviews_count INT,
	star_rating FLOAT,
	house_id SERIAL PRIMARY KEY,
	location VARCHAR(50) NOT NULL,
	bedrooms INT NOT NULL,
	bathrooms INT NOT NULL,
	price_night INT NOT NULL,
	description VARCHAR(2500) NOT NULL,
	user_id INT REFERENCES users(user_id) 
	
);

CREATE TABLE bookings (
	user_id INT REFERENCES users(user_id),
	house_id INT REFERENCES houses(house_id),
	booking_id SERIAL PRIMARY KEY,
	price_night INT REFERENCES houses(price_night),
	booking_date DATE NOT NULL,
	message VARCHAR(250),
	total_price INT NOT NULL
);

CREATE TABLE reviews (
	review_id SERIAL PRIMARY KEY,
	review_description VARCHAR(2500) NOT NULL,
	star_rating FLOAT NOT NULL,
	review_date DATE NOT NULL,
	user_id INT REFERENCES users(user_id), 
	house_id INT REFERENCES houses(house_id)

);

CREATE TABLE house_photos (
	photo_id SERIAL PRIMARY KEY,
	house_id INT REFERENCES houses(house_id),
	house_photosURL VARCHAR(255),
	feature_photo BOOLEAN

);
