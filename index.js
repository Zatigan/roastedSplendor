require("dotenv").config();

//* Express to handle server
const express = require("express");
const app = express();

//* Used to navigate on website
const router = require("./app/router");

//*Routing
app.use(router);

//* Path for dirname use
const path = require("path");

//* Define view engine + path for views
app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "app/views"));

//* Path for public elem
app.use(express.static("public"));

//* Page 404 tbd

//* Port for server
const port = process.env.PORT || 3000;

app.get("/", (req, res) => {
  res.send("Hello World");
});

app.listen(port, () => {
  console.log(`Servier is running on ${process.env.BASE_URL}:${port} !`);
});
