const express = require('express');
const usercontrollear = require('./controllers');
const router = express.Router();

router.get('/', usercontrollear.index);
router.post('/', usercontrollear.create);
router.get('/:id', usercontrollear.getUserForUpdate);
router.put('/', usercontrollear.updateUser);
router.get('/delete/:id', usercontrollear.deleteUser);

module.exports = router;