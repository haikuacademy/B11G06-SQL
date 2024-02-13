--USERS register create*/
INSERT INTO users (first_name, last_name, email, password, profile_picture)
VALUES (Bob, Sponge, bob.sponge@gmail.com, 123456, https://randomuser.me/api/portraits/men/90.jpg),
    (Man, Super, superM@gmail.com, 111222, https://randomuser.me/api/portraits/men/68.jpg),
    (Snow, Jhon, white@gmail.com, 123789, https://randomuser.me/api/portraits/men/67.jpg),
    (Solo, Hans, yosolo@yahoo.com, 123963, https://randomuser.me/api/portraits/men/69.jpg),
    (Woman, Wonder, wondering@hotmail.com, 112566, https://randomuser.me/api/portraits/women/37.jpg)

--USERS login
SELECT email, password FROM users

--USERS read profile
SELECT first_name, last_name, email, profile_picture FROM users

--USERS update profile
UPDATE users
SET first_name = '', last_name = '', email = '', profile_picture = ''
WHERE user_id = 
