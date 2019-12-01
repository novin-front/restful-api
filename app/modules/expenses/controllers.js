const expensesModel = require('./model');

exports.index = async (req, res) => {
    let {
        page,
        number
    } = req.query;
    page = (page === undefined ? 1 : parseInt(page));
    number = number === undefined ? 10 : parseInt(number)
    const expenses = await expensesModel.getAllExpenses(page, number);
    const totalexpenses = await expensesModel.countExpenses();
    const totalPage = totalexpenses / number;
    const pagination = {
        total: totalexpenses,
        next_page: page < totalPage ? `http://localhost:1900/api/v1/expenses/?page=${parseInt(page)+1}&number=${number}` : null,
        prev_page: page > 1 ? `http://localhost:1900/api/v1/expenses/?page=${parseInt(page)-1}&number=${number}` : null,
        page,
        per_page: number
    }
    res.send({
        data: expenses,
        meta: {
            pagination
        }
    });
}
exports.create = async (req, res) => {
    const newexpenseData = req.body;
    console.log("newexpenseData", newexpenseData)
    const newUid = await expensesModel.createExpenses(newexpenseData);
    res.status(201).send({
        success: true,
        message: "داده شما در لیست هزینه / دارمد با موفقیت ایجاد شد",
        uid: newUid
    })
}
exports.deleteExpense = async (req, res) => {
    
    const uid = req.params.id;
    const deletResult = await expensesModel.deletexpenseById(uid);
    console.log("uid",uid);
    if (deletResult) {
        return res.status(200).send({
            success: deletResult,
            message: "داده شما در لیست هزنیه / درآمد با موفقیت حدف شد",
        })
    } else {
        res.status(204).send({
            success: deletResult,
            message: "مشکلی در حذف داده رخ داده است رخ داده است",
        })
    }
}
// exports.getexpenseForUpdate = async (req, res) => {
//     const uid = req.params.id;
//     const expenseUpdateData = await expensesModel.getexpenseById(uid);

//     res.send({
//         expenseUpdateData
//     })
// }
exports.updateexpense = async (req, res) => {
    const expenseDataForUpdate = req.body;
    const expenseUpdate = await expensesModel.updateexpense(expenseDataForUpdate);
    if (expenseUpdate) {
        return res.status(200).send({
            success: expenseUpdate,
            message: "کاربر مورد نظر با موفقیت ویرایش شد",
        })
    } else {
        res.status(204).send({
            success: expenseUpdate,
            message: "مشکلی در ویرایش کاربر رخ داده است",
        })
    }
}