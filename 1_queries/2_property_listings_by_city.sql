SELECT properties.* 
  avg(property_reviews.rating) as average_rating
  FROM properties
  JOIN property_reviews ON properties.id = property_id
  WHERE city LIKE '%ancouv%'
  GROUP BY properties.id
  HAVING avg(property_reviews.rating) >= 4
ORDER BY cost_per_night LIMIT 10;

-- SELECT * FROM (
--   SELECT properties.* 
--   AVG(property_reviews.rating) AS average_rating
--   FROM properties
--   JOIN property_reviews
--   ON properties.id = property_reviews.property_id
--   AND properties.city LIKE '%ancouv%'
--   GROUP BY properties.id
--   ORDER BY properties.cost_per_night ASC ) AS ref_table
-- WHERE average_rating >= 4 LIMIT 10;
