const dbConfig = require("../config/db.config.js");
const Sequelize = require("sequelize");

//passing parameters for mysql connection
const sequelize = new Sequelize(dbConfig.DB, dbConfig.USER, dbConfig.PASSWORD, {
    host: dbConfig.HOST,
    dialect: dbConfig.dialect,
    port: dbConfig.port,
    operatorsAliases: false,
    pool: {
        max: dbConfig.pool.max,
        min: dbConfig.pool.min,
        acquire: dbConfig.pool.acquire, 
        idle: dbConfig.pool.idle
    }
});

async function connect() {
    try {
        await sequelize.authenticate();
        console.log('Connection has been established successfully.');
    } catch (error) {
        console.error('Unable to connect to database:', error);
    }
}

const db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;

db.books = require("./books.model.js")(sequelize, Sequelize);

module.exports = db;
