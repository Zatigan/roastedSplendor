//*Express import + Router() so it can be used and route to the right files

import express from "express";
//* Using commonJS => const express = require('express');

import { Router } from "express";
//* Using commonJS => const router = express.Router();

const router = Router();

import homePageCtrl from './controllers/homePageCtrl.js';

//* Route to home page
router.get('/', homePageCtrl.lastCoffees);


router.get('/boutique', (req, res) => {
    res.render('boutique');
});

router.get('/catalogue', (req, res) => {
    res.render('catalogue');
});

router.get('/contact', (req, res) => {
    res.render('contact');
});

router.get('/detail', (req, res) => {
    res.render('detail');
});

export default router;