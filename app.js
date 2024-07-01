const express = require("express");
const cors = require("cors");
const db = require("./models");
const app = express();
const bodyparse = require("body-parser");
const path = require('path');
const session = require('express-session');
const paginate = require("express-paginate");
const books = require("./controllers/books.controller");

let corsOptions = {
    origin: "http://localhost:8081"
};

let allowCrossDomain = function(req,res,next) {
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Methods', 'GET,POST,PUT,DELETE');
    res.header('Access-Control-Allow-Headers', 'Content-Type');

    next();
}

//use css, images, views
app.use(express.static('static'));
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

//limit = 5 and max limit = 50
app.use(paginate.middleware(5, 50));

app.use(allowCrossDomain);

//enable cors
app.use(cors(corsOptions));

//use session
app.use(session({
    resave: false, //dont save session if unmodified
    saveUninitialized: false, //dont create session until something stored
    secret: 'shh'
}));

//Authenticate and sync mysql database
db.sequelize.authenticate()
    .then(() => {
        console.log("DB connection established");
    })
    .catch((err) => {
        console.log("Failed to connect to db:", err);
    });

db.sequelize.sync()
    .then(() => {
        console.log("Synced db.");
        initial();
    })
    .catch((err) => {
        console.log("Failed to sync db: " + err.message);
    });

//parse requests of content-type - application/json
app.use(express.json());

//parse requests of content-type - application/x-www-form-urlencoded
app.use(express.urlencoded({ extended: true}));

app.use(function(req, res, next) {
    res.locals.message = ''; 

    next();
});

/* endpoints */

app.get("/", (req, res) => {
    res.render('welcome-page');
});

app.get("/all", (req, res) => {
    const limit = req.query.limit || 10;
    const offset = req.offset;

    books.findAll({ offset: offset, limit: limit }).then((results) => {

        const pageCount = Math.ceil(results.count / limit);
        res.locals.pageCount = pageCount;
        let index = 0;
        res.locals.pages = [];
         
        let pages =  paginate.getArrayPages(req)(3, pageCount, req.query.page);
      
        pages.forEach(function(page) {
            temp = '<li><a href="' + page.url + '" class="btn btn-default">' + page.number + '</a></li>'; 
            res.locals.pages.push(temp);
        });

        res.locals.data = results.rows;

        res.render("paginatedTable");
    });
});

app.get("/add-new", (req, res) => {
    res.render('add');
});

app.get("/search", (req, res) => {
    res.locals.output = '';
    res.render('search-book');
});

app.post("/search", books.findByTitle);

app.post("/add-book", books.create); 

//set port and listen for requests
const PORT = 8081;
app.listen(PORT, () => {
    console.log("Server is running on port ",PORT);
});
