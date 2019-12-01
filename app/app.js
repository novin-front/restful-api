const express = require('express');
const app = express();
require('./middlewares/middlewares')(app);

require('./router')(app);
require('./middlewares/404')(app);

const runapplication = () => {
    app.listen(process.env.APP_PORT, () => {
        console.log(`app is running on port ${process.env.APP_PORT}`)
    })
}
module.exports = runapplication;