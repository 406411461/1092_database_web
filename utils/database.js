const mysql = require('mysql2');

const pool = mysql.createPool({
    host: 'us-cdbr-east-03.cleardb.com',
    user: 'b2cb1723b8f349',
    password: 'a634efe4',
    database: 'heroku_2dbbd22a0bdbb33'
});

// test
// pool.query('select * from post_89', (err, results) => {
//     console.log(JSON.stringify(results));
//     console.log('database connection successful');
// });

module.exports = pool.promise();