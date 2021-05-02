const db = require('../utils/database');

const Cart = class Cart {
  constructor(pId,pname,profile,image,describ) {
    this.pId = pId;
    this.pname = pname;
    this.profile = profile;
    this.image = image;
    this.describ = describ;
  }

  static fetchAll() {
    return db.execute(
      'select p.pId,p.pname,p.profile,p.image,p.describ from cart,product as p,member where cart.mId = member.mId and cart.pId = p.pId and cart.mId = 22'
    );
  }
  static fetchTotal() {
    return db.execute(
      'select sum(p.price) as pId from cart,product as p,member where cart.mId = member.mId and cart.pId = p.pId and cart.mId = 22'
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

module.exports = Cart;
