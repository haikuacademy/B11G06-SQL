
-- House list

INSERT INTO houses (location, bedrooms, bathrooms, price_night, description, user_id)
VALUES 
('Phuket, Thailand', 2, 2, 120, 'Description', 1234),
('Bali, Indonesia', 3, 2, 190, 'Description', 1234),
('Koh Samui, Thailand', 4, 5, 380, 'Description', 1234),
('Koh Phangan, Thailand', 2, 2, 80, 'Description', 1234),
('Phuket, Thailand', 3, 2, 190, 'Description', 1234),
('Ubud, Indonesia', 1, 1, 50, 'Description', 1234),
('Lombok, Indonesia', 4, 5, 400, 'Description', 1234),
('Koh Chang, Thailand', 2, 1, 75, 'Description', 1234),
('Phuket, Thailand', 3, 2, 190, 'Description', 1234),
('Gili T, Indonesia', 1, 1, 39, 'Description', 1234);


----- Read House

SELECT houses.house_id, houses.location, houses.bedrooms, houses.bathrooms, houses.description, users.first_name, users.last_name
FROM houses
LEFT JOIN users
ON houses.user_id = users.user_id


----- Update house

UPDATE houses
SET location = 'Algarve, Portugal',
    bedrooms = 2,
    bathrooms = 2,
    price_night = 99,
    description = 'Description'
WHERE house_id = 1;


----- Delete house

DELETE FROM houses WHERE house_id = 1;