module.exports = (sequelize, DataTypes) => {
  return sequelize.define('allocation', {
    id: {
      autoIncrement: true,
      type: DataTypes.BIGINT,
      allowNull: false,
      primaryKey: true,
    },
    employee_id: {
      type: DataTypes.BIGINT,
      allowNull: false,
    },
    company_id: {
      type: DataTypes.BIGINT,
      allowNull: false,
    },
  });
};
