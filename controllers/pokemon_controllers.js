var express = require("express");
var burger = require("../models/pokepedia");

var router = express.Router();

router.get("/", function(req, res) {
  pokepedia.selectAll(function(data) {
    var hdbrsObj= {
      burgers: data
    };
    console.log(hdbrsObj);
    res.render("index", hdbrsObj);
  });

  router.post("/api/pokepedia", function(req, res) {
    pokepedia.insertOne(
      ["pokepedia_db", "name"],
      [req.body.pokepedia, req.body.devoured],
      function(result) {
        // Send back the ID of new burger
        res.json({ id: result.insertId });
      }
    );
  });
  router.put("/api/pokepedia/:name", function(req, res) {
    var condition = "name = " + req.params.id;

    console.log("condition", condition);
    pokepedia.updateOne({ name: req.body.devoured }, condition, function(
      result
    ) {
      if (result.changedRows === 0) {
        return res.status(404).end();
      } else {
        res.status(200).end();
      }
    });
  });
  router.delete("/api/pokepedia/:name", function(req, res) {
    var condition = "name = " + req.params.name;
    console.log("condition", condition);

    pokepedia.deleteOne(condition, function(result) {
      if (result.changedRows === 0) {
        return res.status(404).end();
      } else {
        res.status(200).end();
      }
    });
  });
});
module.exports = router;