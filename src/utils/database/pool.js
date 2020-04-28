const mysql = require('mysql2');
const pool = mysql.createPool({
  host: process.env.DBHOST,
  user: process.env.DBUSER,
  password: process.env.DBPASS,
  database: process.env.DBNAME,
  waitForConnections: true,
  connectionLimit: 10,
  multipleStatements: true,
  namedPlaceholders: true
}).promise();

console.log('Database pool created and connected');

module.exports = pool;