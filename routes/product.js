var express = require('express');
var router = express.Router();

const productController = require('../controllers/productController');


/* GET home page. */
// router.get('/', function(req, res, next) {
//   res.render('products', { title: 'Express' });
// });

router.get('/:product', productController.getProductsByCategory);
//router.get('/shop_61/:product', crown2Controller.getProductsByCategory);


module.exports = router;
