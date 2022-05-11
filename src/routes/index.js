const { errorHandler, notfound } = require('../middleware/errorMiddleware');
const glob = require('glob');
const path = require('path');
let files = [
  `./src/routes/${process.env.VERSION}/company.js`,
  `./src/routes/${process.env.VERSION}/user.js`,
];
module.exports.loadRoutes = (app) => {
  files.forEach(function (file) {
    app.use('/api/' + process.env.VERSION + '/', require(path.resolve(file)));
  });
  app.use(errorHandler);
  app.use(notfound);
};
