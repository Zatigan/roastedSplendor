import 'dotenv/config'
//* In commonJS => require("dotenv").config();

//* Express to handle server
import express from "express";
//* In commonJS => const express = require("express");
const app = express();

//* Used to navigate on website
import router from './app/router.js';

//* Routing
app.use(router);

import { join } from 'path';
//* Path for dirname use in commonJS => import path from "path";

//* Define view engine + path for views
app.set("view engine", "ejs");
app.set("views", join(import.meta.dirname, "/app/views"));

//* Path for public elements
app.use(express.static("public"));

//* Page 404 tbd

//* Port for server
const port = process.env.PORT || 3000;

//* Start server
app.listen(port, () => {
  console.log(`Server is running on ${process.env.BASE_URL}:${port} !`);
});