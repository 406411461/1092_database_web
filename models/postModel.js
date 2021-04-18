const db = require('../utils/database');

const Post = class Post {
  constructor(mId,name,email,address,phone) {
    this.mId = mId;
    this.name = name;
    this.email = email;
    this.address = address;
    this.phone = phone;
  }

  static fetchAll() {
    return db.execute(
      'SELECT mId,name,email,phone FROM ecommerce.member'
    );
  }
};

// test
// const test = async (req, res) => {
//   try {
//     await Post.fetchAll().then(([rows]) => {
//       console.log(JSON.stringify(rows));
//     });
//   } catch (err) {
//     console.log(err);
//   }
// };

// test();

module.exports = Post;
