var express = require('express');
var router = express.Router();
const favorController = require('../controllers/favorController');

/* GET home page. */
router.get('/', favorController.getFavor);
router.get('/cfavor/:product', favorController.createFavor);
module.exports = router;
