// Dependencies
// =============================================================
var express = require("express");
var path = require("path");

// Sets up the Express App
// =============================================================
var app = express();
var PORT = process.env.PORT || 3000;

// Sets up the Express app to handle data parsing
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

var db = require("../models");

// Routes
// =============================================================
module.exports = function(app) {



// Routes
// =============================================================
app.get("/api/pokemon", function(req, res) {
  
  db.pokemon_db.pokemon.findall({
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


// Basic route that sends the user first to the AJAX Page
app.get("/", function(req, res) {
  res.sendFile(path.join(__dirname, "view.html"));
});

app.get("/add", function(req, res) {
  res.sendFile(path.join(__dirname, "add.html"));
});

// Displays all Pokemon Characters
app.get("/api/pokemon", function(req, res) {
  return res.json(pokemon);
});

// Displays a single character, or returns false
app.get("/api/pokemon/:id", function(req, res) {
  var chosen = req.params.pokemon;

  console.log(chosen);

  for (var i = 0; i < pokemon.length; i++) {
    if (chosen === pokemon[i].routeName) {
      return res.json(pokemon[i]);
    }
  }

  return res.json(false);
});

// Create New Characters - takes in JSON input
// app.post("/api/pokemon", function(req, res) {
//   // req.body hosts is equal to the JSON post sent from the user
//   // This works because of our body parsing middleware
//   var newcharacter = req.body;

//   // Using a RegEx Pattern to remove spaces from newCharacter
//   // You can read more about RegEx Patterns later https://www.regexbuddy.com/regex.html
//   newpokemon.routeName = newpokemon.name.replace(/\s+/g, "").toLowerCase();

//   console.log(newpokemon);

//   pokemon.push(newpokemon);

//   res.json(newpokemon);
// });

// Starts the server to begin listening
// =============================================================
app.listen(PORT, function() {
  console.log("App listening on PORT " + PORT);
});
};