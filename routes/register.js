var express = require('express');
var router = express.Router();
const registerController = require('../controllers/registerController');

/* GET home page. */

router.get('/', function(req, res, next) {
    res.render('index');
});

router.get('/rr', function(req, res, next) {
  res.render('register');
});
router.get('/build', function(req, res, next) {
  res.render('register_create');
});
router.get('/upload', function(req, res, next) {
  res.render('register_update');
});

// router.post('/create', function (req, res) {
//     //接收資料
//     console.log(req.body);
//     res.redirect('/index.html');
// });

router.post('/create', registerController.createMember);
router.get('/read', registerController.readMember);
router.post('/update', registerController.updateMember);
router.get('/delete', registerController.deleteMember);


module.exports = router;
