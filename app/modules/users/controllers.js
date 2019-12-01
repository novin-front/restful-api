const usersModel = require('./model');
const {
    removePasssword,
    removeStatusFlag,
    fullName,
    persianNumber
} = require('./presenter');
exports.index = async (req, res) => {
    let {
        page,
        number
    } = req.query;
    page = (page === undefined ? 1 : parseInt(page));
    number = number === undefined ? 10 : parseInt(number)
    const users = await usersModel.getAllUSers(page, number);
    const totalUsers = await usersModel.countUsers();
    const totalPage = totalUsers / number;
    const pagination = {
        total: totalUsers,
        next_page: page < totalPage ? `http://localhost:1900/api/v1/user/?page=${parseInt(page)+1}&number=${number}` : null,
        prev_page: page > 1 ? `http://localhost:1900/api/v1/user/?page=${parseInt(page)-1}&number=${number}` : null,
        page,
        per_page: number
    }
    res.send({
        data: users.map(fullName).map(removePasssword).map(removeStatusFlag).map(persianNumber),
        meta: {
            pagination
        }
    });
}
exports.create = async (req, res) => {
    const newUserData = req.body;
    const newUid = await usersModel.createUser(newUserData);
    res.status(201).send({
        success: true,
        message: "کاربر جدید با موفقیت ایجاد شد",
        uid: newUid
    })
}
exports.deleteUser = async (req, res) => {
    const uid = req.params.id;
    const deletResult = await usersModel.deletUserById(uid);
    if (deletResult) {
        return res.status(200).send({
            success: deletResult,
            message: "کاربر مورد نظر با موفقیت حدف شد",
        })
    } else {
        res.status(204).send({
            success: deletResult,
            message: "مشکلی در حذف کاربر رخ داده است",
        })
    }
}
exports.getUserForUpdate = async (req, res) => {
    const uid = req.params.id;
    const userUpdateData = await usersModel.getUserById(uid);

    res.send({
        userUpdateData
    })
}
exports.updateUser = async (req, res) => {
    const userDataForUpdate = req.body;
    const userUpdate = await usersModel.updateUser(userDataForUpdate);
    if (userUpdate) {
        return res.status(200).send({
            success: userUpdate,
            message: "کاربر مورد نظر با موفقیت ویرایش شد",
        })
    } else {
        res.status(204).send({
            success: userUpdate,
            message: "مشکلی در ویرایش کاربر رخ داده است",
        })
    }
}