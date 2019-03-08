var db = require("../models");
var sequelize = require("sequelize");

module.exports = function(app) {
    app.get("/api/pokemon", function(req, res) {
      // Here we add an "include" property to our options in our findAll query
      // We set the value to an array of the models we want to include in a left outer join
      // In this case, just db.Post
      db.pokemon.findAll({
        limit: 5,
        order: [ [ sequelize.fn('RAND') ] ]
          
      }).then(function(dbPokemon) {
        res.json(dbPokemon);
      });
    });
  
    app.get("/api/pokemon/:name", function(req, res) {
      // Here we add an "include" property to our options in our findOne query
      // We set the value to an array of the models we want to include in a left outer join
      // In this case, just db.Post
      db.pokemon.findOne({
        where: {
          name: req.params.name
        }
      }).then(function(dbPokemon) {
        res.json(dbPokemon);
      });
    });
};