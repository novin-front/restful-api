const express = require('express');
const userController = require('./modules/users/router');
const expensesController = require('./modules/expenses/router');
const authController = require('./modules/auth/router');
const formBuilderRouter = require('./modules/FormBuilder/router');
const {
    auth,
    isAdmin
} = require('./modules/auth/middlewares')
const seedRouter = require('../database/seed/router');


module.exports = (app) => {
    // app.use('/api/v1/user/', [auth, isAdmin], userController);
    app.use('/api/v1/user/', userController);
    app.use('/api/v1/expenses/', expensesController);
    app.use('/api/v1/formbuilder/', formBuilderRouter);
    app.use('/api/v1/auth/', authController);
    app.use('/api/v1/seed/', seedRouter);
}