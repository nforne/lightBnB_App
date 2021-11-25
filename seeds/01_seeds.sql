INSERT INTO reservations (guest_id, property_id, start_date, end_date)
VALUES (1, 1, '2018-09-11', '2018-09-26'),
(2, 2, '2019-01-04', '2019-02-01'),
(3, 3, '2021-10-01', '2021-10-14');

INSERT INTO users (name, email , password ) 
VALUES (nforne, e@n.com, $2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.), 
(Jay, e@y.com, $2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.),
(Phylys, e@p.com, $2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.),
(Joel, e@j.com, $2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.),
(Gerard, e@g.com, $2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.);

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
  VALUES (1, Woodland, ranch house, www.jw.org, www.google.com, 70000, 2 large, 2 large, 4 large, US, 2541 DC, DC, N/A, 2541),
  (2, Towns, town house, www.jw.org, www.google.com, 60000, 1 large, 1 large, 2 large, US, 2540 DC, DC, N/A, 2540),
  (3, GTA LORDS, Metropol house, www.jw.org, www.google.com, 50000, 2 large, 2 large, 4 large, CANADA, 58 GTA, GTA, ONTARIO, 58);

INSERT INTO property_reviews (
  guest_id ,
  property_id ,
  reservation_id ,
  rating ,
  message )
  VALUES (1, 3, 2, 3, good), (2, 1, 1, 5, great), (3, 2, 3, 4, Nice) ;