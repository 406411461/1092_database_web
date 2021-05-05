const Cart = require('../models/cartModel');

// Create

exports.createCart = async (req, res) => {
  let data = {};
  data.pid = 0;
  console.log('req.params.product', req.params.product);
  try {
    data.pid = req.params.product;
    await Cart.create(data.pid).then(([rows]) => {
      res.redirect('/cart');
    });
    // res.redirect('/cart');
    //  res.json(req.body);
  } catch (err) {
    console.log(err);
  }
};


// Read
exports.getCart = async (req, res) => {
  let data = {};
  try {
    await Cart.fetchAll().then(([rows]) => {
      data.c1 = rows;
    });
    await Cart.fetchTotal().then(([rows]) => {
      data.c2 = rows;
    });

    res.render('cart', { title: 'Cart', data: data.c1 ,data2: data.c2});
  } catch (err) {
    console.log(err);
  }
};


// update
exports.updateCart = async (req, res) => {
  console.log('updateCart', req.body);
  try {
    await Cart.updateByID(req, res).then(([rows]) => {
      res.redirect('/product/single/LM');
    });
  } catch (err) {
    console.log(err);
  }
};

// delete
exports.deleteCart = async (req, res) => {
  console.log('deleteCart', req.query.id);
  try {
    await Cart.deleteByID(req.query.id).then(([rows]) => {
      res.redirect('/cart');
    });
  } catch (err) {
    console.log(err);
  }
};

exports.delete2Cart = async (req, res) => {
  console.log('delete2Cart', req.params.id);
  try {
    await Cart.deleteByID(req.params.id).then(([rows]) => {
      res.redirect('/cart');
    });
  } catch (err) {
    console.log(err);
  }
};