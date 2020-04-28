const pool = require(__basedir + '/src/utils/database/pool.js');
const nookazon = require(__basedir + '/src/utils/database/nookazon.js')(pool);

module.exports = {
  nookazon
};