const Clothing = require('../models/productModel');



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


