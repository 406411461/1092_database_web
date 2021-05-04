const Product = require('../models/productModel');

exports.createProduct = async (req, res) => {
  console.log('createProduct', req.body);
  try {
    await Product.create(req, res).then(([rows]) => {
      res.redirect('/product/single/LM');
    });
    // res.json(req.body);
  } catch (err) {
    console.log(err);
  }
};

exports.getShop = async (req, res) => {
  let data = {};
  try {
    await Product.fetchShoppage().then(([rows]) => {
      // console.log('getDashboard', JSON.stringify(rows));
      data.c1 = rows;
      // res.json(rows);
    });

    res.render('shop', { title: 'Homepage', data: data.c1 });
  } catch (err) {
    console.log(err);
  }
};

exports.getHomepage = async (req, res) => {
  let data = {};
  try {
    await Product.fetchHomepage().then(([rows]) => {
      // console.log('getDashboard', JSON.stringify(rows));
      data.clothing = rows;
      // res.json(rows);
    });

    res.render('product', { title: 'Homepage', data: data.clothing });
  } catch (err) {
    console.log(err);
  }
};

exports.getProductsByCategory = async (req, res) => {
  let data = {};
  data.cid = 0;
  console.log('req.params.product', req.params.product);
  try {
    if (req.params.product === 'TOYOTA') data.cid = 1;
    else if (req.params.product === 'MAZDA') data.cid = 2;
    else if (req.params.product === 'HONDA') data.cid = 3;
    else if (req.params.product === 'NISSAN') data.cid = 4;
    else if (req.params.product === 'FORD') data.cid = 5;
    else if (req.params.product === 'LEXUS') data.cid = 6;
    else if (req.params.product === 'VW') data.cid = 7;
    else if (req.params.product === 'TESLA') data.cid = 8;

    await Product.fetchProductsByCategory(data.cid).then(([rows]) => {
      data.products = rows;
      // res.json(data);
    });

    res.render('products', {
      title: req.params.product,
      data: data.products,
    });
  } catch (err) {
    console.log(err);
  }
};

exports.getProductsByProfile = async (req, res) => {
  let data = {};
  data.aId = 0;
  console.log('req.params.product', req.params.product);
  try {
    if (req.params.product === 'SUV') data.aId = 1;
    else if (req.params.product === 'RV') data.aId = 2;
    else if (req.params.product === 'PICKUP') data.aId = 3;
    else if (req.params.product === 'SEDAN') data.aId = 4;
    else if (req.params.product === 'SPORT') data.aId = 5;
    else if (req.params.product === 'COMPACT') data.aId = 6;

    await Product.fetchProductsByProfile(data.aId).then(([rows]) => {
      data.products = rows;
      // res.json(data);
    });

    res.render('products', {
      title: req.params.product,
      data: data.products,
    });
  } catch (err) {
    console.log(err);
  }
};

exports.getProductsByPId = async (req, res) => {
  let data = {};
  let data2 = {};
  data.pid = 0;
  console.log('req.params.product', req.params.product);
  try {
    // if (req.params.product === 'CRV') data.pid = 1;
    // else if (req.params.product === 'RANGER') data.pid = 2;
    data.pid = req.params.product;


    await Product.fetchProductsByPId(data.pid).then(([rows]) => {
      data.products = rows;
      // res.json(data);
    });

    await Product.fetchShoppage().then(([rows]) => {
      // console.log('getDashboard', JSON.stringify(rows));
      data2.c1 = rows;
      // res.json(rows);
    });

    res.render('shop-single', {
      title: req.params.product,
      data: data.products,
      data2: data2.c1,
    });
  } catch (err) {
    console.log(err);
  }
};


