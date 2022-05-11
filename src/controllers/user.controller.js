const asyncHandler = require('express-async-handler');
const { companyCrud } = require('../DAO/companyDAO');
const { userCrud } = require('../DAO/userDao');

module.exports.addUser = asyncHandler(async (req, res) => {
  try {
    const { name, email, phone } = req.body;
    const result = await userCrud.addUser(name, email, phone);
    if (result) {
      res.status(201).json({ id: result.id });
    }
  } catch (error) {
    res.status(400);
    throw new Error(error);
  }
});

module.exports.allocateUser = asyncHandler(async (req, res) => {
  try {
    const { employee_id, company_ids } = req.body;
    console.log(employee_id);
    let companyLength = company_ids.length;
    let tempLength = 0;

    company_ids.forEach(async (element) => {
      findResult = await userCrud.FindById(
        Number(employee_id),
        Number(element)
      );
      if (findResult.length > 0) {
        res
          .status(400)
          .send('company id already present please review and select');
      }
      result = await userCrud.allocateUser(
        Number(employee_id),
        Number(element)
      );
      tempLength++;
      if (tempLength === companyLength) {
        res.status(201).json({ success: true });
      }
    });
  } catch (error) {
    res.status(400);
    throw new Error(error);
  }
});

module.exports.listUsers = asyncHandler(async (req, res) => {
  try {
    const result = await userCrud.listUsers();
    if (result) {
      res.status(201).json(result[0]);
    }
  } catch (error) {
    res.status(404);
    throw new Error(error);
  }
});
module.exports.getUserByCompany = asyncHandler(async (req, res) => {
  try {
    const checkCompany = await companyCrud.checkCompany(req.params.id);
    if (checkCompany.length === 0) {
      res.status(404).send('company not present');
    }
    const result = await userCrud.listUsersByCompany(req.params.id);
    if (result) {
      res.status(201).json(result[0]);
    }
  } catch (error) {
    res.status(404);
    throw new Error(error);
  }
});
