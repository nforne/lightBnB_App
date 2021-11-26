const properties = require('./json/properties.json');
const users = require('./json/users.json');

const { Pool } = require('pg');
const config = {
  user: 'labber',
  password: 'labber',
  host: 'localhost',
  database: 'lightbnb'
};
const pg = new Pool(config);

/// Users

/**
 * Get a single user from the database given their email.
 * @param {String} email The email of the user.
 * @return {Promise<{}>} A promise to the user.
 */
// const getUserWithEmail = function(email) {
//   let user;
//   for (const userId in users) {
//     user = users[userId];
//     if (user.email.toLowerCase() === email.toLowerCase()) {
//       break;
//     } else {
//       user = null;
//     }
//   }
//   return Promise.resolve(user);
// }

const getUserWithEmail = (email) => {
  let qstring = `SELECT id, name, email, password FROM users
  WHERE email = $1 ;`;
  let values = [email];
  return pg
    .query(qstring, values)
    .then((res) => res.rows[0] ? res.rows[0] : null)
    .catch((err) => {
      console.log(err.message);
      });
}



exports.getUserWithEmail = getUserWithEmail;

/**
 * Get a single user from the database given their id.
 * @param {string} id The id of the user.
 * @return {Promise<{}>} A promise to the user.
 */

// const getUserWithId = function(id) {
//   return Promise.resolve(users[id]);
// }

const getUserWithId = (id) => {
  let qstring = `SELECT id, name, email, password FROM users
  WHERE id = $1 ;`;
  let values = [id];
  return pg
    .query(qstring, values)
    .then((res) => res.rows[0] ? res.rows[0] : null)
    .catch((err) => {
      console.log(err.message);
      });
}

exports.getUserWithId = getUserWithId;


/**
 * Add a new user to the database.
 * @param {{name: string, password: string, email: string}} user
 * @return {Promise<{}>} A promise to the user.
 */
// const addUser =  function(user) {
//   const userId = Object.keys(users).length + 1;
//   user.id = userId;
//   users[userId] = user;
//   return Promise.resolve(user);
// }   //------------------------------------------------------////////////////////

const addUser = (user) => {
 let qstring = `INSERT INTO users (name, email , password ) 
 VALUES ( $1 , $2 , $3 ) RETURNING *;`
 let values = [user.name, user.email, user.password]
 return pg
  .query(qstring, values)
  .then((res) => res.rows[0] ? res.rows[0] : null)
  .catch((err) => {
    console.log(err.message);
    });
};

exports.addUser = addUser;

/// Reservations

/**
 * Get all reservations for a single user.
 * @param {string} guest_id The id of the user.
 * @return {Promise<[{}]>} A promise to the reservations.
 */
const getAllReservations = function(guest_id, limit = 10) {
  return getAllProperties(null, 2);
}
exports.getAllReservations = getAllReservations;

/// Properties

/**
 * Get all properties.
 * @param {{}} options An object containing query options.
 * @param {*} limit The number of results to return.
 * @return {Promise<[{}]>}  A promise to the properties.
 */
// const getAllProperties = function(options, limit = 10) {
//   const limitedProperties = {};
//   for (let i = 1; i <= limit; i++) {
//     limitedProperties[i] = properties[i];
//   }
//   return Promise.resolve(limitedProperties);
// }

const getAllProperties = (options, limit = 10) => {
 return pg
    .query(`SELECT * FROM properties LIMIT $1`, [limit])
    .then((result) => 
      result.rows)
    .catch((err) => {
      console.log(err.message);
      });
};

exports.getAllProperties = getAllProperties;

/**
 * Add a property to the database
 * @param {{}} property An object containing all of the property details.
 * @return {Promise<{}>} A promise to the property.
 */
const addProperty = function(property) {
  const propertyId = Object.keys(properties).length + 1;
  property.id = propertyId;
  properties[propertyId] = property;
  return Promise.resolve(property);
}
exports.addProperty = addProperty;
