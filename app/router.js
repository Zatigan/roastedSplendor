//*Express import + Router() so it can be used and route to the right files

const express = require('express');
const router = express.Router();

//* Route to home page
router.get('/', (req, res) => {
    res.render('index');
});

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

module.exports = router;