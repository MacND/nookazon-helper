const pool = require(__basedir + '/utils/database/pool.js');
const nookazon = require(__basedir + '/utils/database/nookazon.js')(pool);

module.exports = {
  nookazon
};