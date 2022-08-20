//Require Dependencies
const express = require('express');
const exphbs = require('express-handlebars');
const bodyParser = require('body-parser');
const mysql = require('mysql');

// Require .ENV
require('dotenv').config();

const app = express();
const port = process.env.PORT || 3001;


//Middleware to parse data

//application to parse form with encoded URL
app.use(bodyParser.urlencoded({ extended: false }));

//app to parse json
app.use(bodyParser.json());

//static files
app.use(express.static('public'));

// Initializing handlebars and changing extension name to a shorter format
app.engine('hbs', exphbs( {extname: '.hbs'}));

app.set('view engine', 'hbs');


// Connecting MySQL

const pool = mysql.createPool({
    connectionLimit : 100,
    host            :process.env.DB_HOST,
    user            :process.env.DB_USER,
    password        :process.env.DB_PASS,
    database        :process.env.DB_NAME,
});

//connecting to DB
pool.getConnection((err, connection) => {
    if(err) throw err; //not connected!
    console.log('Connected!');
});

//router
app.get('/', (req, res) => {
    res.render('index');
});
const routes = require('./server/routes/supes');
app.use('/', routes);

app.listen(port, () => console.log(`Listening on port ${port}`));

