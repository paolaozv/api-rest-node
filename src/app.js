// initialize express
const express = require('express');
const app = express();

const morgan = require('morgan');
const bodyParser = require('body-parser');

// settings
app.set('port', process.env.PORT || 3000);

// middlewares (functions that are executed every time there is a request)
app.use(morgan('dev'));
app.use(bodyParser.json());

// routes server
require('./routes/userRoutes')(app);

app.listen(app.get('port'), () => {
  console.log('server on port 3000');
});