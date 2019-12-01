const express = require('express');
const FormbuilderControllear = require('./Controllers');
const router = express.Router();

router.get('/', FormbuilderControllear.index);
router.post('/', FormbuilderControllear.create);
// router.get('/:id', expensescontrollear.getUserForUpdate);
router.put('/', FormbuilderControllear.updateDataForm);
router.get('/delete/:id', FormbuilderControllear.deleteForm);

module.exports = router;