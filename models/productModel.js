const db = require('../utils/database');

const Clothing = class Clothing {
  constructor(pId, cId, pname, price, image, profile,aId) {
    this.pId = pId;
    this.cId = cId;
    this.pname = pname;
    this.price = price;
    this.image = image;
    this.profile = profile;
    this.aId = aId;
  }

  // CREATE
  static create(req, res) {
    return db.execute(
      'INSERT INTO product (pId, cId, pname, price, image, profile, aId) VALUES (?, ?, ?, ?, ?, ?, ?)',
      [
        req.body.pId,
        req.body.cId,
        req.body.pname,
        req.body.price,
        req.body.image,
        req.body.profile,
        req.body.aId,
      ]
    );
  }

  // READ
 
  static fetchHomepage() {
    return db.execute('select * from product where cId = 2');
  }

  static fetchProductsByCategory(cid) {
    return db.execute('SELECT * FROM product where cId = ?;', [cid]);
  }

  static fetchProductsByProfile(aId) {
    return db.execute('SELECT * FROM product where aId = ? ;', [aId]);
  }
};


// testFetchHomepage();

// testFetchProductsByCategory();

module.exports = Clothing;
