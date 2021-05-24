const db = require('../utils/database');

const Favor = class Favor {
  constructor(pId) {
    this.pId = pId;
  }

  static create(pId) {
    return db.execute(
      'INSERT INTO favor (pId) VALUES (?)',
      [
        pId,
      ]
    );
  }

  static fetchAll() {
    return db.execute(
      'SELECT p.pId,p.pname,p.image FROM favor,product as p  where favor.pId = p.pId'
    );
  }
};


module.exports = Favor;
