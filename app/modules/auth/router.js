const express = require('express');
const authcontrollear = require('./controller');
const router = express.Router();

router.post('/login', authcontrollear.login);

module.exports = router;