const Favor = require('../models/favorModel');


exports.createFavor = async (req, res) => {
  let data = {};
  data.pid = 0;
  console.log('req.params.product', req.params.product);
  try {
    data.pid = req.params.product;
    await Favor.create(data.pid).then(([rows]) => {
      res.redirect('/favor');
    });
    // res.redirect('/cart');
    //  res.json(req.body);
  } catch (err) {
    console.log(err);
  }
};
// Read
exports.getFavor = async (req, res) => {
  let data = {};
  try {
    await Favor.fetchAll().then(([rows]) => {
      data.c1 = rows;
    });
    res.render('favor', { title: 'Favor', data: data.c1 });
  } catch (err) {
    console.log(err);
  }
};
