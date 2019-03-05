 var db = require("../models");

// Routes
// =============================================================
module.exports = function(app) {

  // GET route for getting all of the pokemon
  app.get("/api/pokemon", function(req, res) {
    // findAll returns all entries for a table when used with no options
    db.pokemon_db.findAll({}).then(function(dbPokemon) {
      // We have access to the pokemon as an argument inside of the callback function
      res.json(dbPokemon);
    });
  });

  // POST route for saving a new pokemon
  app.get("/api/pokemon", function(req, res) {
    // create takes an argument of an object describing the item we want to
    // insert into our table. In this case we just we pass in an object with a text
    // and complete property (req.body)
    db.pokemon_db.pokemon.findOne({
      id: req.body.text,
      type1: req.body.num,
      type2: req.body.num
    }).then(function(dbPokemon) {
      // We have access to the new todo as an argument inside of the callback function
      res.json(dbPokemon);
    })
      .catch(function(err) {
      // Whenever a validation or flag fails, an error is thrown
      // We can "catch" the error to prevent it from being "thrown", which could crash our node app
        res.json(err);
      });
  });

  app.get("/api/pokemon", function(req, res) {
    db.pokemon_db.typing.findOne({
      id: req.body.text,
      typing: req.body.text
      
    }).then(function(dbPokemon) {
      res.json(dbPokemon);
    })
      .catch(function(err) {
        res.json(err);
      });
  });

  app.get("/api/pokemon", function(req, res) {
    db.pokemon_db.moves.findOne({
      id: req.body.text,
      move: req.body.text,
      typing_id: req.body.int,
      power: req.body.num
      
    }).then(function(dbPokemon) {
      res.json(dbPokemon);
    })
      .catch(function(err) {
        res.json(err);
      });
  });

  app.get("/api/pokemon", function(req, res) {
    db.pokemon_db.movesets.findOne({
      id: req.body.text,
      pokemon_id: req.body.text,
      move_id: req.body.text
      
    }).then(function(dbPokemon) {
      res.json(dbPokemon);
    })
      .catch(function(err) {
        res.json(err);
      });
  });

 

  app.get("/api/pokemon", function(req, res) {
    db.pokemon_db.damage_factor.findOne({
      id: req.body.text,
      move_type_id: req.body.num,
      target_pokemon_id: req.body.num,
      damage_factor: req.body.num
      
    }).then(function(dbPokemon) {
      res.json(dbPokemon);
    })
      .catch(function(err) {
        res.json(err);
      });
  });

};
 