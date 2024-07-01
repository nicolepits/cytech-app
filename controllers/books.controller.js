const db = require("../models");
const Book = db.books;
const Op = db.Sequelize.Op;

//create new ebook
exports.create= (req, res) => {

    //validate req
    if (!req.body) {
        res.status(400).send({
            message: "Body can not be empty!"
        });
        return;

    }
    return Book.create({
        title: req.body.title,
        synopsis: req.body.synopsis,
        author: req.body.author,
        year: req.body.year,
        genre: req.body.genre,
    }, 
    )
        .then(data => {
            res.locals.message = 'Book added successfully';
            res.render('add');
        })
        .catch(err => {
            res.status(500).send({
                message: err.message || "Some error occured while creating book"
            });
        });

};

//findAll books paginated with Sequelize's findAndCountAll
exports.findAll = (req, res) => {
    return Book.findAndCountAll({ offset: req.offset, limit: req.limit, raw: true });
};

//find books that much title
exports.findByTitle = (req, res) => {
    let term = '%' + req.body.term + '%';
    res.locals.output = '';
    console.log("executing findAll with title: ", term);

    if(req.body.byYear) { //if sort by year checkbox is checked, then find records sorted by year
        Book.findAll( {
            where: {
                title: {
                    [Op.like]: term
                }
            },
            order: [
                ['year', 'ASC']
            ],
            raw: true
        })
            .then((book) => {
                res.locals.output = book;
                res.render('search-book');
            })
            .catch((err) => {
                console.log(">> Error while finding book: ", err);
            });
    } else { //else find records unsorted
         Book.findAll( {
            where: {
                title: {
                    [Op.like]: term
                }
            },
            raw: true
        })
            .then((book) => {
                res.locals.output = book;
                res.render('search-book');
            })
            .catch((err) => {
                console.log(">> Error while finding book: ", err);
            });
    }
};

//******Unused functions below********// 

/*
exports.update = (req, res) => {
    const id = req.params.id;

    Book.update(req.body, {
        where: { id: id }
    })
        .then(num => {
            if (num == 1) {
                res.send({
                    message: "Book updated successfully."
                });
            } else {
                res.send({
                    message: "Cannot update book with id:" + id
                });
            }
        })
        .catch(err => {
            res.status(500).send({
                message: "Error updating book with id:" + id
            });
        });
};

exports.deleteAll = (req, res) => {
    Book.destroy({
        where: {},
        truncate: false
    })
        .then(nums => {
            res.send({ message: '${nums} Books deleted successfully.' });
        })
        .catch(err => {
            res.status(500).send({
                message:
                err.message || "Some error occurred while removing all books"
            });
        });
};

exports.delete = (req, res) => {
    const id = req.params.id;

    Book.destroy({
        where: { id: id }
    })
        .then(num => {
            if (num == 1) {
                res.send({
                    message: "Book deleted successfully."
                });
            } else {
                res.send({
                    message: "Cannot delete book with id: ", id
                });
            }
        });
};
*/

