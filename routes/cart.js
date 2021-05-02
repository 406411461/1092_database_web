var express = require('express');
var router = express.Router();

const Cart = require('../models/cartModel');

/* GET users listing. */
router.get('/', async (req, res) => {
  let posts;
  let posts2;
  try {
    await Cart.fetchAll().then(([rows]) => {
      console.log(JSON.stringify(rows));
      //res.json(rows);
      posts = rows;
    });
    await Cart.fetchTotal().then(([rows]) => {
      console.log(JSON.stringify(rows));
      //res.json(rows);
      posts2 = rows;
    });
    res.render('cart', { title: 'Carts', data: posts , data2:posts2 });
  } catch (err) {
    console.log(err);
  }
});
module.exports = router;
