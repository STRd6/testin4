// server.js
// where your node app starts

// init
var H = require("hyperweb");

// sets up express and runs the project
app = H.blastOff();

app.get("/", function (request, response) {
  response.render('index.html', {
    title: "Welcome To Hyperweb"
  });
});

app.get('/rando', function (req, res) {
  n = (Math.random() * 1024)|0;

  uptime = process.uptime();
  console.log("Random number:", n, "Process Uptime:", uptime);
  res.write("Rando: " + n);
  res.send();
});
