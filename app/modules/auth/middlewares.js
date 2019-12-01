const tokenService = require('./token');

exports.auth = (req, res, next) => {
    const token = tokenService.findToken(req);
    if (!token) {
        return res.status(401).send({
            success: false,
            message: "در این درخواست توکنی یافت نشد"
        })
    };
    const payload = tokenService.verify(token);

    if (!payload) {
        return res.status(401).send({
            success: false,
            message: "توکن مورد نظر یافت نشد"
        })
    };
    return next();
}
exports.isAdmin = (req, res, next) => {
    const token = tokenService.findToken(req);
    const payload = tokenService.verify(token);
    console.log(payload.isadmin);
    if (parseInt(payload.isadmin) === 1) {
        return next();
    }
    return res.status(403).send({
        success: false,
        message: "شما دسترسی ندارید"
    })
}