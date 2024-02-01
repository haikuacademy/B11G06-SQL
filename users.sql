--insert users
INSERT INTO users (first_name, last_name, email, password, profile_picture)
VALUES ('Bob', 'Smith','bobsmith@gmail.com﻿', '1234BOB﻿', 'https://www.fakepersongenerator.com/Face/male/male20161083948806152.jpg');


--read login users
SELECT email, password FROM users;


--login profile users
SELECT profile_picture, first_name, last_name, email FROM users;


--update profile users
UPDATE users
SET profile_picture = '', first_name = '', last_name = '', email = '', password = '' 
WHERE user_id = 1234;

