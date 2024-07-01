Ebooks Library Manager

A web for managing ebooks where you can:
- View all books sorted by title (by option) and paginated
- Search books by title
- Add a new book in db
###  Tech Stack


node.js
express.js
mysql
sequelize ORM
express-paginate
ejs views

### Contents

 - /config
     - db.config.js : mysql database configuration
 - /models 
     - books.model.js : sequelize model for book
 - /controllers 
     -  books.controller.js: handles db queries for books
 - /views 
     - contains ejs templates
 - /static
     - contains css
- /data
    - contains .sql file with data backup

### Installation

To start running the web app for the first time simply run the start.sh bash script with:

    ./start.sh
