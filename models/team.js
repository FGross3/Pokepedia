module.exports = function(sequelize, DataTypes) {
    var Team = sequelize.define("Team", {
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
      // We're saying that a Team should belong to an Trainer
      // A Team can't be created without an Trainer due to the foreign key constraint
      Team.belongsTo(models.Trainer, {
        foreignKey: {
          allowNull: false
        }
      });
    };
  
    return Team;
  };