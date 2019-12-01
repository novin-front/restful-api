const myscql = require('mysql2/promise');

const connection = async () => {
    const db = await myscql.createConnection({
        host: process.env.DB_HOST,
        user: process.env.DB_USERNAME,
        password: process.env.DB_PASSWROD,
        database: process.env.DB_NAME,
    })
    return db;
}
module.exports = connection;