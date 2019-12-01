const connection = require('../../../database/connections/connection');
exports.getAllUSers = async (page = 1, number = 10) => {
    const db = await connection();
    const offset = (page - 1) * number;
    let [users, fields] = await db.query(`SELECT * FROM users LIMIT ${number} OFFSET ${offset}`);
    return users;
}
exports.countUsers = async () => {
    const db = await connection();
    let [results, fields] = await db.query(`SELECT COUNT(id) total FROM users `);
    return results[0].total;

}
exports.createUser = async (newUserData) => {
    const db = await connection();
    let [results, fields] = await db.query("INSERT INTO `users` SET ?", [newUserData]);
    return results.insertId;
}
exports.deletUserById = async (uid) => {
    const db = await connection();
    let [results, fields] = await db.query("DELETE FROM `users` WHERE id =? LIMIT 1", [uid]);
    return results.affectedRows > 0;
}
exports.getUserById = async (uid) => {
    const db = await connection();
    let [results, fields] = await db.query("SELECT * FROM `users` WHERE id =? LIMIT 1", [uid]);
    return results;
}
exports.updateUser = async (userData) => {
    console.log(userData.id);
    const db = await connection();
    let [results, fields] = await db.query("UPDATE `users` SET `first_name`=?,`last_name`=?,`password`=?,`mobile`=? WHERE id=? LIMIT 1", [userData.first_name, userData.last_name, userData.password, userData.mobile, userData.id]);
    return results.affectedRows > 0;
}