const asyncHandler = require('express-async-handler');
module.exports.errorHandler = (error, req, res, next) => {
  const statusCode = res.statusCode === 200 ? 500 : res.statusCode;
  res.status(statusCode);
  res.json({
    message: error.message,
  });
  next();
};
module.exports.notfound = (req, res, next) => {
  const error = new Error(`not found- ${req.originalUrl}`);
  res.status(404);
  next(error);
};

console.log('middlewares loaded');
