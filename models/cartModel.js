const db = require('../utils/database');

const Cart = class Cart {
  constructor(pId,mId) {
    this.pId = pId;
    this.mId = mId;
  }

  static create(req, res) {
    return db.execute(
      'INSERT INTO cart (pId, mId) VALUES (?, ?)',
      [
        req.body.pId,
        req.body.mId,
      ]
    );
  }

  static fetchAll() {
    return db.execute(
      'select p.pId,p.pname,p.profile,p.image,p.describ from cart,product as p,member where cart.mId = member.mId and cart.pId = p.pId and cart.mId = 666'
    );
  }
  static fetchTotal() {
    return db.execute(
      'select sum(p.price) as pId from cart,product as p,member where cart.mId = member.mId and cart.pId = p.pId and cart.mId = 666'
    );
  }

  static updateByID(req, res) {
    const pId = req.body.pId;
    const mId = req.body.mId;

    return db.execute(
      'UPDATE cart SET mId= ? WHERE pId = ?',
      [mId, pId]
    );
  }

  static deleteByID(id) {
    return db.execute('DELETE FROM cart WHERE pId= ?', [id]);
  }
};


module.exports = Cart;
