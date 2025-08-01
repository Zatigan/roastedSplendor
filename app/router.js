//*Express import + Router() so it can be used and route to the right files

const express = require('express');
const router = express.Router();

//* Route to home page
router.get('/', (req, res) => {
    res.render('index');
});

module.exports = router;