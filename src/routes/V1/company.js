const express = require('express');
const router = express.Router();
const {
  addCompany,
  deleteCompany,
} = require('../../controllers/company.controller');

router.post('/add-company', addCompany);
router.delete('/delete-company/:id', deleteCompany);

module.exports = router;
