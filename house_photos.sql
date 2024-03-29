--- Photos list

INSERT INTO house_photos (house_id, house_photosURL, feature_photo)
VALUES
(1, 'https://images.pexels.com/photos/1268871/pexels-photo-1268871.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', TRUE),
(1, 'https://images.pexels.com/photos/276554/pexels-photo-276554.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', FALSE),
(2, 'https://images.pexels.com/photos/53610/large-home-residential-house-architecture-53610.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', TRUE),
(2, 'https://images.pexels.com/photos/1571452/pexels-photo-1571452.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', FALSE),
(3, 'https://images.pexels.com/photos/4783635/pexels-photo-4783635.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', TRUE),
(3, 'https://images.pexels.com/photos/1329711/pexels-photo-1329711.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', FALSE),
(4, 'https://images.pexels.com/photos/4615294/pexels-photo-4615294.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', TRUE),
(4, 'https://images.pexels.com/photos/1080696/pexels-photo-1080696.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', FALSE),
(5, 'https://images.pexels.com/photos/9958541/pexels-photo-9958541.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', TRUE),
(5, 'https://images.pexels.com/photos/279648/pexels-photo-279648.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', FALSE),
(6, 'https://images.pexels.com/photos/1115804/pexels-photo-1115804.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', TRUE),
(6, 'https://images.pexels.com/photos/1080721/pexels-photo-1080721.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', FALSE),
(7, 'https://images.pexels.com/photos/2102587/pexels-photo-2102587.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', TRUE),
(7, 'https://images.pexels.com/photos/667838/pexels-photo-667838.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', FALSE),
(8, 'https://images.pexels.com/photos/2893177/pexels-photo-2893177.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', TRUE),
(8, 'https://images.pexels.com/photos/298842/pexels-photo-298842.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', FALSE),
(9, 'https://images.pexels.com/photos/7174102/pexels-photo-7174102.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', TRUE),
(9, 'https://images.pexels.com/photos/2079249/pexels-photo-2079249.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', FALSE),
(10, 'https://images.pexels.com/photos/5599599/pexels-photo-5599599.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', TRUE),
(10, 'https://images.pexels.com/photos/1074442/pexels-photo-1074442.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', FALSE);


--- Updating photos

UPDATE house_photos
SET house_photosURL = 'https://generatorfun.com/code/uploads/Random-House-image-5.jpg'
WHERE photo_id = 1;


---- Read photos

SELECT * FROM house_photos  
WHERE photo_id = 1;