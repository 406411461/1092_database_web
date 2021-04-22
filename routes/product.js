var express = require('express');
var router = express.Router();

const productController = require('../controllers/productController');


/* GET home page. */
router.get('/single', function(req, res, next) {
  res.render('shop-single', { title: 'Express' });
});


router.post('/create', productController.createProduct);

router.get('/', productController.getHomepage);

router.get('/:product', productController.getProductsByCategory);
router.get('/atr/:product', productController.getProductsByProfile);
router.get('/single/:product', productController.getProductsByPId);


//router.get('/shop_61/:product', crown2Controller.getProductsByCategory);


module.exports = router;
