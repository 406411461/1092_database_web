const mysql = require('mysql2');

const pool = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: '0000',
    database: '0523'
});

// test
// pool.query('select * from post_89', (err, results) => {
//     console.log(JSON.stringify(results));
//     console.log('database connection successful');
// });

module.exports = pool.promise();