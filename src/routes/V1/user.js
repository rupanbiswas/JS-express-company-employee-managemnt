const express = require('express');
const {
  addUser,
  allocateUser,
  listUsers,
  getUserByCompany,
} = require('../../controllers/user.controller');
const router = express.Router();

router.post('/allocate-user', allocateUser);
router.post('/add-user', addUser);
router.get('/list-users', listUsers);
router.get('/users-by-company/:id', getUserByCompany);

module.exports = router;
