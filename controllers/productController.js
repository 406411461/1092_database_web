const Clothing = require('../models/productModel');

exports.createProduct = async (req, res) => {
  console.log('createProduct', req.body);
  try {
    await Clothing.create(req, res).then(([rows]) => {
      res.redirect('/product');
    });
    // res.json(req.body);
  } catch (err) {
    console.log(err);
  }
};

exports.getHomepage = async (req, res) => {
  let data = {};
  try {
    await Clothing.fetchHomepage().then(([rows]) => {
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

    await Clothing.fetchProductsByCategory(data.cid).then(([rows]) => {
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

    await Clothing.fetchProductsByProfile(data.aId).then(([rows]) => {
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
  data.pid = 0;
  console.log('req.params.product', req.params.product);
  try {
    if (req.params.product === 'CRV') data.pid = 1;
    else if (req.params.product === 'RANGER') data.pid = 2;
    else if (req.params.product === 'TIGUAN') data.pid = 3;
    else if (req.params.product === 'TOURAN') data.pid = 4;
    else if (req.params.product === 'LM') data.pid = 5;
    else if (req.params.product === 'FOCUS') data.pid = 6;
    else if (req.params.product === 'RCF') data.pid = 7;
    else if (req.params.product === '86') data.pid = 8;
    else if (req.params.product === 'MUSTANG') data.pid = 9;
    else if (req.params.product === 'IS') data.pid = 10;
    else if (req.params.product === 'ALPHARD') data.pid = 11;
    else if (req.params.product === 'FIT') data.pid = 12;
    else if (req.params.product === 'MAZDA3') data.pid = 13;
    else if (req.params.product === 'CX30') data.pid = 14;
    else if (req.params.product === 'MX5') data.pid = 15;
    else if (req.params.product === 'SENTRA') data.pid = 16;
    else if (req.params.product === 'GTR') data.pid = 17;
    else if (req.params.product === 'HRV') data.pid = 18;
    else if (req.params.product === 'ALTIMA') data.pid = 19;
    else if (req.params.product === 'POLO') data.pid = 23;
    else if (req.params.product === 'MODELX') data.pid = 43;
    else if (req.params.product === 'MODELS') data.pid = 55;
    else if (req.params.product === 'TIGUAN') data.pid = 200;






    await Clothing.fetchProductsByPId(data.pid).then(([rows]) => {
      data.products = rows;
      // res.json(data);
    });

    res.render('shop-single', {
      title: req.params.product,
      data: data.products,
    });
  } catch (err) {
    console.log(err);
  }
};


