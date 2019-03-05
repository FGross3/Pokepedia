module.exports = function(sequelize, DataTypes) {
    var nameType = sequelize.define("pokemon", {
      // Giving the Author model a name of type STRING
      name: DataTypes.STRING
    });
  
    nameType.associate = function(models) {
      // Associating Pokemon with Posts
      // When an Pokemin is deleted, also delete any associated Posts
      nameType.hasMany(models.Post, {
        onDelete: "cascade"
      });
    };
  
    return nameType;
  };