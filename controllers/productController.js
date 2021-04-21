const Clothing = require('../models/productModel');



exports.getProductsByCategory = async (req, res) => {
  let data = {};
  data.cid = 0;
  console.log('req.params.product', req.params.product);
  try {
    if (req.params.product === 'TOYATA') data.cid = 1;
    else if (req.params.product === 'MAZDA') data.cid = 2;
    else if (req.params.product === 'HONDA') data.cid = 3;
    else if (req.params.product === 'NISSAN') data.cid = 4;
    else if (req.params.product === 'FORD') data.cid = 5;
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


