const faker = require('faker/locale/fa');
const connection = require('../connections/connection');

exports.createUser = async (req, res) => {
    const db = await connection();
    const count = req.params.count;
    let result;
    console.log(count);
    const users = [];
    for (let container = 1; container <= count; container++) {
        const user = {
            first_name: faker.name.firstName(),
            last_name: faker.name.lastName(),
            email: faker.internet.email(),
            password: "",
            mobile: faker.phone.phoneNumber(),
        }
        result = await db.query("INSERT INTO `users` SET ?", [user]);
        console.log(result);

        users.push(user);
    }
    if (users.length == count) {
        res.send("field add in database")

    } else {
        console.log(Error("error to add users"))
    }
}