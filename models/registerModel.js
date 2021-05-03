const db = require('../utils/database');

const Register = class Register {
  constructor(mId,name,email,address,phone) {
    this.mId = mId;
    this.name = name;
    this.email = email;
    this.address = address;
    this.phone = phone;
  }

  static create(req, res) {
    return db.execute(
      'INSERT INTO member (mId, name, email, address, phone) VALUES (?, ?, ?, ?, ?)',
      [
        req.body.mId,
        req.body.name,
        req.body.email,
        req.body.address,
        req.body.phone,
      ]
    );
  }

  static fetchAll() {
    return db.execute(
      'SELECT mId,name,email,phone FROM ecommerce.member'
    );
  }

  static updateByID(req, res) {
    const mId = req.body.mId;
    const name = req.body.name;
    const email = req.body.email;
    const address = req.body.address;
    const phone = req.body.phone;

    return db.execute(
      'UPDATE member SET name= ?,email= ?,address= ?,phone= ? WHERE mId = ?',
      [name,email,address,phone,mId]
    );
  }

  static deleteByID(id) {
    return db.execute('DELETE FROM member WHERE mId= ?', [id]);
  }

};


module.exports = Register;
