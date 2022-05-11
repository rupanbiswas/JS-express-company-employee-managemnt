const { companyConnection } = require('../../config/connection');

module.exports.companyCrud = {
  addCompany: async (name, city) => {
    try {
      const result = await companyConnection.create({ name, city });
      if (result) {
        return result;
      }
    } catch (error) {
      throw new Error(error);
    }
  },
  deleteCompany: async (id) => {
    try {
      const result = await companyConnection.destroy({ where: { id } });
      if (result) {
        return result;
      }
    } catch (error) {
      throw new Error(error);
    }
  },
  checkCompany: async (id) => {
    try {
      const result = await companyConnection.findAll({ where: { id } });
      if (result) {
        return result;
      }
    } catch (error) {
      throw new Error(error);
    }
  },
};
