module.exports = function (sequelize, DataTypes) {
    var Pokemon = sequelize.define("pokemon", {
        name: {
            type: DataTypes.STRING,
            allowNull: false
        },
        type1: {
            type: DataTypes.INTEGER,
            allowNull: false
        },
        type2: {
            type: DataTypes.STRING,
            //defaultValue: null
        },
        images: {
            type: DataTypes.STRING,
            defaultValue: ""
        }
    }, {
        timestamps: false,
        freezeTableName: true
    }
    
    );

    // Pokemon.associate = function(models) {
    //   Pokemon.hasMany(models.Team, {
    //     onDelete: "cascade"
    //   });
    // };

    return Pokemon;
};