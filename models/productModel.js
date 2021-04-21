const db = require('../utils/database');

const Clothing = class Clothing {
  constructor(pId, cId, pname, price, image, profile) {
    this.pId = pId;
    this.cId = cId;
    this.pname = pname;
    this.price = price;
    this.image = image;
    this.profile = profile;
  }

  // CREATE
  static create(req, res) {
    return db.execute(
      'INSERT INTO product (pId, cId, pname, price, image, profile) VALUES (?, ?, ?, ?, ?, ?)',
      [
        req.body.pId,
        req.body.cId,
        req.body.pname,
        req.body.price,
        req.body.image,
        req.body.profile,
      ]
    );
  }

  // READ
 
  static fetchProductsByCategory(cid) {
    return db.execute('SELECT * FROM product where cId = ?;', [cid]);
  }
};


// testFetchHomepage();

// testFetchProductsByCategory();

module.exports = Clothing;
