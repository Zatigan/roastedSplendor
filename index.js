require("dotenv").config();

//* Used to navigate on website
const router = require("./app/router");

//* Path for dirname use
const path = require("path");

//* Express to handle server
const express = require("express");
const app = express();

//* Define view engine + path for views
app.set("view engine", "ejs");
app.set("views", "app/views");

//* Path for public elem
app.use(express.static("public"));

//*Routing
app.use(router);

//* Page 404 tbd

//* Port for server
const port = process.env.PORT || 3000;

app.get("/", (req, res) => {
  res.send("Hello World");
});

app.listen(port, () => {
  console.log(`Servier is running on ${process.env.BASE_URL}:${port} !`);
});
