module.exports = function(sequelize, DataTypes) {
  const Trainer = sequelize.define("Trainer", {
    name: DataTypes.STRING
  });

  Trainer.associate = function(models) {
    Trainer.hasMany(models.Team, {
      onDelete: "cascade"
    });
  };

  return Trainer;
};
