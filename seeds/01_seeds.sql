INSERT INTO users (name, email , password ) 
VALUES ('nforne', 'e@n.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'), 
('Jay', 'e@y.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Phylys', 'e@p.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Joel', 'e@j.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Gerard', 'e@g.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO  properties (
  owner_id ,
  title ,
  description ,
  thumbnail_photo_url ,
  cover_photo_url ,
  cost_per_night ,
  parking_spaces ,
  number_of_bathrooms ,
  number_of_bedrooms ,
  country ,
  street ,
  city ,
  province ,
  post_code ,
  active )
  VALUES (1,' Woodland', 'ranch house', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg', 70000, 2, 2, 4, 'US', '2541 DC', 'DC', 'N/A', '2541', TRUE),
  (2, 'Towns', 'town house', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg', 60000, 1, 1, 2, 'US', '2540 DC', 'DC', 'N/A', '2540', TRUE),
  (3, 'GTA LORDS', 'Metropol house', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg', 50000, 2, 2, 4, 'CANADA', '58 GTA', 'GTA', 'ONTARIO','58', FALSE);

INSERT INTO reservations (guest_id, property_id, start_date, end_date)
  VALUES (1, 1, '2018-09-11', '2018-09-26'),
  (2, 2, '2019-01-04', '2019-02-01'),
  (3, 3, '2021-10-01', '2021-10-14');

INSERT INTO property_reviews (
  guest_id ,
  property_id ,
  reservation_id ,
  rating ,
  message )
  VALUES (1, 3, 2, 3, 'good'), (2, 1, 1, 5, 'great'), (3, 2, 3, 4, 'Nice') ;