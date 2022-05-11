const Sequelize = require('sequelize');
const allocation = require('@src/models/allocation');
const company = require('@src/models/company');
const employee = require('@src/models/employee');
console.log('trying to connect db');
const sequelize = new Sequelize('work', 'root', '', {
  host: 'localhost',
  dialect: 'mysql',
  pool: {
    max: 10,
    min: 0,
    acquire: 50000,
    idle: 10000,
  },
});

const allocationConnection = allocation(sequelize, Sequelize);
const companyConnection = company(sequelize, Sequelize);
const employeeConnection = employee(sequelize, Sequelize);

sequelize.sync().then(() => {
  console.log(`DB sync complete`);
});

module.exports = {
  employeeConnection,
  companyConnection,
  allocationConnection,
};
module.exports.sequelize = sequelize;
