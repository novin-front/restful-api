
const connection = require('../../../database/connections/connection');
exports.getAllFormData = async ()=>{
     const db = await connection();
        let [results, fields] = await db.query("SELECT * FROM `form_builder`");
        return results
}

exports.creatForm = async (InputData) => {
      
        const db = await connection();
        const alldata ={
             title: InputData.title,
             user_id: InputData.userId,
             form_input: InputData.formdata
        }

        let [results, fields] = await db.query("INSERT INTO `form_builder` SET ?", alldata);
        return results.insertId;
}
exports.deleteFormById = async (Formid) => {
    const db = await connection();
    let [results, fields] = await db.query("DELETE FROM `form_builder` WHERE id =? LIMIT 1", [Formid]);
    return results.affectedRows > 0;
}
exports.updateFromdata = async (dataUpdate)=>{
        console.log("Update===>",dataUpdate)

        const db = await connection();
        let [results, fields] = await db.query("UPDATE `form_builder` SET `title`=?,`user_id`=?,`form_input`=? WHERE id=? LIMIT 1", [dataUpdate.title, dataUpdate.userId, dataUpdate.formdata, dataUpdate.id]);
        console.log(results);
        return results.affectedRows > 0;

        return 0;
}