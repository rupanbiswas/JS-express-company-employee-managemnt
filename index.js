require('module-alias/register');

const app = require('express')();
const bodyParser = require('body-parser');
const cors = require('cors');
const dotenv = require('dotenv');
require('./config/connection');
app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extented: true }));
dotenv.config();
const PORT = process.env.HOSTPORT || 8000;
app.get('/', (req, res) => {
  res.send('server working');
});
const routes = require('./src/routes');
routes.loadRoutes(app);
app.listen(PORT, () => {
  console.log('server started on', PORT);
});

module.exports = app;
