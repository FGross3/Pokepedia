// *********************************************************************************
// api-routes.js - this file offers a set of routes for displaying and saving data to the db
// *********************************************************************************

// Dependencies
// =============================================================

// Requiring our models
var db = require("../models");

// Routes
// =============================================================
module.exports = function(app) {

  // GET route for getting all of the posts
  app.get("/api/teams", function(req, res) {
    var query = {};
    if (req.query.trainer_id) {
      query.TrainerId = req.query.trainer_id;
    }
    // Here we add an "include" property to our options in our findAll query
    // We set the value to an array of the models we want to include in a left outer join
    // In this case, just db.Author
    db.Team.findAll({
      where: query,
      //include: [db.Trainer]
    }).then(function(dbTeam) {
      console.log(dbTeam);
      res.json(dbTeam);
    });
  });

  // Get route for retrieving a single post
  app.get("/api/teams/:id", function(req, res) {
    // Here we add an "include" property to our options in our findOne query
    // We set the value to an array of the models we want to include in a left outer join
    // In this case, just db.Author
    db.Team.findOne({
      where: {
        id: req.params.id
      },
      include: [db.Trainer]
    }).then(function(dbTeam) {
      res.json(dbTeam);
    });
  });

  // POST route for saving a new post
  app.post("/api/teams", function(req, res) {
    db.Team.create(req.body).then(function(dbTeam) {
      res.json(dbTeam);
    });
  });

  // DELETE route for deleting posts
  app.delete("/api/teams/:id", function(req, res) {
    db.Team.destroy({
      where: {
        id: req.params.id
      }
    }).then(function(dbTeam) {
      res.json(dbTeam);
    });
  });

  // PUT route for updating posts
  app.put("/api/teams", function(req, res) {
    db.Team.update(
      req.body,
      {
        where: {
          id: req.body.id
        }
      }).then(function(dbTeam) {
      res.json(dbTeam);
    });
  });
};