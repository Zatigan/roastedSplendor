require("dotenv").config();

//* Express to handle server
const express = require("express");
const app = express();

//* Used to navigate on website
const router = require("./app/router");

//* Routing
app.use(router);

//* Path for dirname use
const path = require("path");

//* Define view engine + path for views
app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "app/views"));

//* Path for public elements
app.use(express.static("public"));

//* Page 404 tbd

//* Port for server
const port = process.env.PORT || 3000;

//* Start server
app.listen(port, () => {
  console.log(`Server is running on ${process.env.BASE_URL}:${port} !`);
});