module.exports = {
    HOST: 'localhost',
    USER: 'root',
    PASSWORD: 'root',
    DB: 'ebooks',
    port: 3306,
    dialect: "mysql",
    pool: {
        max: 5,
        min: 0,
        acquire: 30000,
        idle: 10000
    }
};
