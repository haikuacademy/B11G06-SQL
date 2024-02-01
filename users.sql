--update profile users
UPDATE users
SET profile_picture = '', first_name = '', last_name = '', email = '', password = '' 
WHERE user_id = 1234;
