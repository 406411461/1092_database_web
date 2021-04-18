var express = require('express');
var router = express.Router();

const Post = require('../models/postModel.js');

/* GET users listing. */
router.get('/posts', async (req, res) => {
  let posts;
  try {
    await Post.fetchAll().then(([rows]) => {
      console.log(JSON.stringify(rows));
      //res.json(rows);
      posts = rows;
    });
    res.render('posts', { title: 'Posts', data: posts });
  } catch (err) {
    console.log(err);
  }
});

module.exports = router;
