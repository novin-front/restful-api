const express = require('express');
const expensescontrollear = require('./controllers');
const router = express.Router();

router.get('/', expensescontrollear.index);
router.post('/', expensescontrollear.create);
// router.get('/:id', expensescontrollear.getUserForUpdate);
router.put('/', expensescontrollear.updateexpense);
router.get('/delete/:id', expensescontrollear.deleteExpense);

module.exports = router;