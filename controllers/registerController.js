const Register = require('../models/registerModel');

// Create

exports.createMember = async (req, res) => {
  console.log('createMember', req.body);
  try {
    await Register.create(req, res).then(([rows]) => {
      res.redirect('/index.html');
    });
    // console.log(req.body);
  } catch (err) {
    console.log(err);
  }
};

exports.readMember = async (req, res) => {
  let data = {};
  try {
    await Register.fetchAll().then(([rows]) => {
      // console.log('getDashboard', JSON.stringify(rows));
      data.c1 = rows;
      // res.json(rows);
    });

    res.render('posts', { title: 'Register', data: data.c1 });
  } catch (err) {
    console.log(err);
  }
};

exports.updateMember = async (req, res) => {
  console.log('updateMember', req.body);
  try {
    await Register.updateByID(req, res).then(([rows]) => {
      res.redirect('/index.html');
    });
  } catch (err) {
    console.log(err);
  }
};

exports.deleteMember = async (req, res) => {
  console.log('deleteMember', req.query.id);
  try {
    await Register.deleteByID(req.query.id).then(([rows]) => {
      res.redirect('/users/posts');
    });
  } catch (err) {
    console.log(err);
  }
};
