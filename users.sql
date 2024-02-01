--create table users
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(50) NOT NULL,
    profile_pictureURL VARCHAR(255)
);

--insert users
INSERT INTO users (user_id, first_name, last_name, email, password, profile_pictureURL)
VALUES ('Bob', 'Smith','bobsmith@gmail.com﻿', '1234BOB﻿', 'https://www.fakepersongenerator.com/Face/male/male20161083948806152.jpg');


--read login users
SELECT email, password FROM users;


--login profile users
SELECT profile_picture, first_name, last_name, email FROM users;


--update profile users
UPDATE users
SET profile_picture = '', first_name = '', last_name = '', email = '', password = '' 
WHERE user_id = 1234;

