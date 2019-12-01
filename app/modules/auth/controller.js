const authModel = require('./model');
const tokenService = require('./token');
exports.login = async (req, res) => {
    let {
        email,
        password
    } = req.body;
    if (!email || !password) {
        return res.status(422).send({
            success: false,
            message: "ایمیل یا پسورد خالی می باشد"
        })
    }
    const userResult = await authModel.findUserByCredential(email, password);
    if (!userResult) {
        return res.status(422).send({
            success: false,
            message: "کاربری با این مشخصات یافت نشد"
        })
    }
    console.log("id", userResult.id);
    console.log("is_admin", userResult.is_admin);
    const token = tokenService.generate({
        uid: userResult.id,
        isadmin: userResult.is_admin
    })
    return res.send({
        success: true,
        message: "کاربر مورد نظر یافت شد",
        userResult,
        token
    });
}