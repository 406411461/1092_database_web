var express = require('express');
var router = express.Router();

const cartController = require('../controllers/cartController');

/* GET users listing. */

router.get('/', cartController.getCart);
router.post('/create', cartController.createCart);
router.post('/update', cartController.updateCart);
router.get('/delete', cartController.deleteCart);
//router.get('/delete/:pId', cartController.delete2Cart);




module.exports = router;
