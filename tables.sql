CREATE TABLE users (
	user_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(100),
	password VARCHAR(50),
	imageURL VARCHAR(255)
);

-- register

INSERT INTO users (first_name, last_name, email, password, imageURL)
VALUES ('Bob', 'Smith', 'bobsmith@gmail.com', '1234BOB', 'https://www.fakepersongenerator.com/Face/male/male20161083948806152.jpg')

-- Login query 
SELECT * FROM users
WHERE email = 'bobsmith@gmail.com' AND password = '1234BOB'

6 files 
1. Create 
