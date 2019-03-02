 // index route loads view.html
 var db = require("../models");

 app.get("/", function(req, res) {
    res.sendFile(path.join(__dirname, "../public/index.html"));
  });

  // css route loads css
  app.get("/css", function(req, res) {
    res.sendFile(path.join(__dirname, "../public/styles.css"));
  });

