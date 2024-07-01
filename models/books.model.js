module.exports = (sequelize, DataTypes) => {
        const Book = sequelize.define("books", {
        title: {
            type: DataTypes.STRING
        },
        synopsis: {
            type: DataTypes.TEXT('long')
        },
        author: {
            type: DataTypes.STRING
        },
        year: {
            type: DataTypes.INTEGER
        },
        genre: {
            type: DataTypes.STRING
        }

    },
    {
        createdAt: false,
        updatedAt: false
    });

    return Book;
};

