module.exports = function(sequelize, DataTypes) {
  const Team = sequelize.define("Team", {
    trainer_id: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        len: [1]
      }
    },
    team_name: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
          len: [1]
        }
    },
    pokemon_1: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
          len: [1]
        }
    },
    pokemon_2: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
          len: [1]
        }
    },
    pokemon_3: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
          len: [1]
        }
    },
    pokemon_4: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
          len: [1]
        }
    },
    pokemon_5: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
          len: [1]
        }
    },
    pokemon_6: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
          len: [1]
        }
    }
  });

  Team.associate = function(models) {
    Team.belongsTo(models.Trainer, {
      foreignKey: {
        allowNull: false
      }
    });
  };

  return Team;
};
