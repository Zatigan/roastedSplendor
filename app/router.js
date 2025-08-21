//*Express import + Router() so it can be used and route to the right files

import express from "express";
//* Using commonJS => const express = require('express');

import { Router } from "express";
//* Using commonJS => const router = express.Router();

const router = Router();

import homePageCtrl from "./controllers/homePageCtrl.js";
import catalogueController from "./controllers/catalogueController.js";

//* Route to home page
router.get("/", homePageCtrl.latestCoffees);

router.get("/boutique", (req, res) => {
  res.render("boutique");
});

router.get("/catalogue", catalogueController.getAllCoffees);
router.get("/catalogue/:id", catalogueController.getCoffeeByCategory);

router.get("/contact", (req, res) => {
  res.render("contact");
});

router.get("/coffee/:name", (req, res) => {
  /* console.log(req.params.name); */
  res.render("article");
});

export default router;
