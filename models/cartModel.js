const db = require('../utils/database');

const Cart = class Cart {
  constructor(pId) {
    this.pId = pId;
  }

  static create(pId) {
    return db.execute(
      'INSERT INTO cart (pId) VALUES (?)',
      [
        pId,
      ]
    );
  }

  static fetchAll() {
    return db.execute(
      'SELECT p.pId,p.pname,p.image,p.profile,p.describ FROM cart,product as p  where cart.pId = p.pId'
    );
  }
  static fetchTotal() {
    return db.execute(
      'select sum(p.price) as pId from cart as c,product as p where c.pId = p.pId'
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
