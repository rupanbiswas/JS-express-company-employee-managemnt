const {
  employeeConnection,
  allocationConnection,
  sequelize,
} = require('../../config/connection');

module.exports.userCrud = {
  addUser: async (name, email, phone) => {
    try {
      const result = await employeeConnection.create({ name, email, phone });
      if (result) {
        return result;
      }
    } catch (error) {
      throw new Error(error);
    }
  },
  FindById: async (employee_id, element) => {
    try {
      const result = await allocationConnection.findAll({
        where: [{ employee_id }, { company_id: element }],
      });
      if (result) {
        return result;
      }
    } catch (error) {
      throw new Error(error);
    }
  },
  allocateUser: async (employee_id, element) => {
    try {
      const result = await allocationConnection.create({
        employee_id,
        company_id: element,
      });
      if (result) {
        return result;
      }
    } catch (error) {
      throw new Error(error);
    }
  },
  listUsers: async () => {
    try {
      const result =
        await sequelize.query(`select employees.*,allocations.company_id,companies.name as Cname,companies.city as Ccity
      from employees 
      left join allocations
      on employees.id = allocations.employee_id
      left join companies
      on allocations.company_id = companies.id;`);
      if (result) {
        return result;
      }
    } catch (error) {
      throw new Error(error);
    }
  },
  listUsersByCompany: async (id) => {
    try {
      const result =
        await sequelize.query(`select employees.*,allocations.company_id
      from allocations 
      left join employees
      on employees.id = allocations.employee_id
      WHERE allocations.company_id = ${id};`);
      if (result) {
        return result;
      }
    } catch (error) {
      throw new Error(error);
    }
  },
};
