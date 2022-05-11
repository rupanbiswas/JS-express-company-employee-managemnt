const asyncHandler = require('express-async-handler');
const { companyCrud } = require('../DAO/companyDAO');

module.exports.addCompany = asyncHandler(async (req, res) => {
  try {
    const { name, city } = req.body;
    const result = await companyCrud.addCompany(name, city);
    if (result) {
      res.status(201).json({ id: result.id });
    }
  } catch (error) {
    res.status(400);
    throw new Error(error);
  }
});
module.exports.deleteCompany = asyncHandler(async (req, res) => {
  try {
    const checkCompany = await companyCrud.checkCompany(req.params.id);
    if (checkCompany.length === 0) {
      res.status(404).send('company not present');
    }
    const result = await companyCrud.deleteCompany(req.params.id);
    if (result) {
      res.status(201).json({ success: true });
    }
  } catch (error) {
    res.status(400);
    throw new Error(error);
  }
});
