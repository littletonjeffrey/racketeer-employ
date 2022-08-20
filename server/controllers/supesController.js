const mysql = require('mysql');
const { CLIENT_FOUND_ROWS } = require('mysql/lib/protocol/constants/client');


// Connecting MySQL

const pool = mysql.createPool({
    connectionLimit : 100,
    host            :process.env.DB_HOST,
    user            :process.env.DB_USER,
    password        :process.env.DB_PASS,
    database        :process.env.DB_NAME,
});

// View Supes
exports.view = (req, res) => {


    pool.getConnection((err, connection) => {
        if(err) throw err; //not connected!
        console.log('Connected!');
   
        //queries needed to be made
        connection.query('SELECT * FROM supes', (err, rows) => {
            //When done wit hconnection, release it
            connection.release();

            if(!err) {
                res.render('home', { rows });
            } else {
                console.log("Query not found");
            }
            console.log("The data from supes table: \n", rows);
        
        


        });
   
    });

}


