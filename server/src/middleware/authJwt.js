const jwt = require("jsonwebtoken");
const config = require("../config/auth.config.js");
const db = require("../config/db.config");

verifyToken = (req, res, next) => {
  let token = req.headers["x-access-token"];

  if (!token) {
    return res.status(403).send({
      message: "No token provided!"
    });
  }

  jwt.verify(token, config.secret, (err, decoded) => {
    if (err) {
      return res.status(401).send({
        message: "Unauthorized!"
      });
    }
    req.userId = decoded.id;
    console.log("req.userId", req.userId)
    next();
  });
};


module.exports = verifyToken;