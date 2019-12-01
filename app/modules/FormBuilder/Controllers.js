const formModel = require('./model');
const crypto = require('crypto');

exports.index = async (req, res) => {
    // let {
    //     page,
    //     number
    // } = req.query;
    // page = (page === undefined ? 1 : parseInt(page));
    // number = number === undefined ? 10 : parseInt(number)
    // const expenses = await expensesModel.getAllExpenses(page, number);
    // const totalexpenses = await expensesModel.countExpenses();
    // const totalPage = totalexpenses / number;
    // const pagination = {
    //     total: totalexpenses,
    //     next_page: page < totalPage ? `http://localhost:1900/api/v1/expenses/?page=${parseInt(page)+1}&number=${number}` : null,
    //     prev_page: page > 1 ? `http://localhost:1900/api/v1/expenses/?page=${parseInt(page)-1}&number=${number}` : null,
    //     page,
    //     per_page: number
    // }
    const AllFrom = await formModel.getAllFormData();
    res.send({
        forms : AllFrom,
        // meta: {
        //     pagination
        // }
    });
}

exports.create = async (req, res) => {
    const allDataform = req.body;
    const {formdata,title,hData,userId}= allDataform;
    console.log("this is formdata ===>", formdata,title,userId)

const secret = hData;
const hash = crypto.createHmac('sha1', secret)
         .update('I love cupcakes')
         .digest('hex');


       let inputID;
    //    let formlang = (formdata.length );

     
               const formResult = await formModel.creatForm({
                   title,
                   userId,
                   formdata
               });

               if(formResult){
                   res.status(201).send({
                       success: true,
                       message: "فرم شما با موفقیت ذخیره شد",
                       formId: formResult,
                   });
               }else{
                   res.status(201).send({
                       success: false,
                       message: "در هنگام ذخیره داده خطایی رخ داده است.",
                       formId: formResult,
                   });
               }
        }
exports.deleteForm= async (req,res)=>{
    const Formid = req.params.id;
    console.log(Formid);
    const deletResult = await formModel.deleteFormById(Formid);
    console.log("delete Result", deletResult);
    if (deletResult) {
        return res.status(200).send({
            success: deletResult,
            message: "فرم شما با موفقیت حذف شد",
            formId: parseInt(Formid)
        })
    } else {
        res.status(204).send({
            success: deletResult,
            message: "مشکلی در حذف فرم رخ داده است.",
        })
    }
}
exports.updateDataForm = async (req, res) => {
    const DataFormForUpdate = req.body;
    const dataUpdate = await formModel.updateFromdata(DataFormForUpdate);
    if (dataUpdate) {
        return res.status(200).send({
            success: dataUpdate,
            message: "کاربر مورد نظر با موفقیت ویرایش شد",
        })
    } else {
        res.status(204).send({
            success: dataUpdate,
            message: "مشکلی در ویرایش کاربر رخ داده است",
        })
    }
}