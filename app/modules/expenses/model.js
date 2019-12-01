const connection = require('../../../database/connections/connection');
exports.getAllExpenses = async (page = 1, number = 10) => {
    const db = await connection();
    const offset = (page - 1) * number;
    let [users, fields] = await db.query(`SELECT * FROM expenses LIMIT ${number} OFFSET ${offset}`);
    return users;
}
exports.countExpenses = async () => {
    const db = await connection();
    let [results, fields] = await db.query(`SELECT COUNT(id) total FROM expenses `);
    return results[0].total;

}
exports.createExpenses = async (newUserData) => {
    const db = await connection();
    let [results, fields] = await db.query("INSERT INTO `expenses` SET ?", [newUserData]);
    return results.insertId;
}
exports.deletexpenseById = async (uid) => {
    const db = await connection();
    let [results, fields] = await db.query("DELETE FROM `expenses` WHERE id =? LIMIT 1", [uid]);
    return results.affectedRows > 0;
}
// exports.getUserById = async (uid) => {
//     const db = await connection();
//     let [results, fields] = await db.query("SELECT * FROM `users` WHERE id =? LIMIT 1", [uid]);
//     return results;
// }
exports.updateexpense = async (userData) => {
    console.log(userData.id);
    const db = await connection();
    let [results, fields] = await db.query("UPDATE `expenses` SET `title_expenses`=?,`category_expenses`=?,`amount_expenses`=?,`type_expenses`=? WHERE id=? LIMIT 1", [userData.title_expenses, userData.category_expenses, userData.amount_expenses, userData.type_expenses, userData.id]);
    return results.affectedRows > 0;
}