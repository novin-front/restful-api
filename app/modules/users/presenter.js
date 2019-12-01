const {
    enNumberConvertToFa
} = require('../../middlewares/functions')
exports.removePasssword = (user) => {
    delete user.password;
    return user;
}
exports.removeStatusFlag = (user) => {
    delete user.is_admin;
    return user

}
exports.fullName = (user) => {
    const f_Name = `${user.first_name} ${user.last_name}`
    delete user.first_name;
    delete user.last_name;
    user.full_name = f_Name;
    return user
}
exports.persianNumber = (user) => {
    let {
        mobile
    } = user;
    const resutls = enNumberConvertToFa(mobile);
    user.persianmobile = resutls;
    return user;
}