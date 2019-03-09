var db = require("../models");

module.exports = function(app) {
  app.get("/api/trainers", function(req, res) {
    // Here we add an "include" property to our options in our findAll query
    // We set the value to an array of the models we want to include in a left outer join
    // In this case, just db.Post
    db.Trainer.findAll({
      include: [db.Team]
    }).then(function(dbTrainer) {
      res.json(dbTrainer);
    });
  });

  app.get("/api/trainers/:id", function(req, res) {
    // Here we add an "include" property to our options in our findOne query
    // We set the value to an array of the models we want to include in a left outer join
    // In this case, just db.Post
    db.Trainer.findOne({
      where: {
        id: req.params.id
      },
      include: [db.Team]
    }).then(function(dbTrainer) {
      res.json(dbTrainer);
    });
  });

  app.post("/api/trainers", function(req, res) {
    db.Trainer.create(req.body).then(function(dbTrainer) {
      res.json(dbTrainer);
    });
  });

  app.delete("/api/trainers/:id", function(req, res) {
    db.Trainer.destroy({
      where: {
        id: req.params.id
      }
    }).then(function(dbTrainer) {
      res.json(dbTrainer);
    });
  });

};