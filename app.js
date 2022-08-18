//Require Dependencies
const express = require('express');
const exhbs = require('express-handlebars');
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

app.use(express.static('public'));


app.listen(port, () => console.log(`Listening on port ${port}`));

