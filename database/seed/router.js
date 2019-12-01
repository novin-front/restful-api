const express = require('express');
const seedUsers = require('./user');
const router = express.Router();

router.get('/users/:count', seedUsers.createUser);

module.exports = router;