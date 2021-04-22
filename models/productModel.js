const db = require('../utils/database');

const Clothing = class Clothing {
  constructor(pId, cId, pname, price, image, profile,aId,describe) {
    this.pId = pId;
    this.cId = cId;
    this.pname = pname;
    this.price = price;
    this.image = image;
    this.profile = profile;
    this.aId = aId;
    this.describe = describe;
  }

  // CREATE
  static create(req, res) {
    return db.execute(
      'INSERT INTO product (pId, cId, pname, price, image, profile, aId, describe) VALUES (?, ?, ?, ?, ?, ?, ?, ?)',
      [
        req.body.pId,
        req.body.cId,
        req.body.pname,
        req.body.price,
        req.body.image,
        req.body.profile,
        req.body.aId,
        req.body.describe,
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

  static fetchProductsByPId(pid) {
    return db.execute('select * from product where pid = ?', [pid]);
  }

};


// testFetchHomepage();

// testFetchProductsByCategory();

module.exports = Clothing;
