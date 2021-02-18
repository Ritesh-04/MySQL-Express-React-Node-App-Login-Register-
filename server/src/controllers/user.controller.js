const jwt = require('jsonwebtoken');
const User = require("../models/user.model.js");

// Create and Save a new User
exports.create = (req, res) => {
  // Validate request
  if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }

  // Create a User
  const user = new User({
    name: req.body.name,
    email: req.body.email,
    password: req.body.password,
    active: req.body.active
  });

  // Save User in the database
  User.create(user, (err, data) => {
    if (err)
      res.status(500).send({
        message:
          err.message || "Some error occurred while creating the user."
      });
    else {
      res.json(data)
    }
  });
};

exports.findOne = (req, res) => {
  const signInUser = {
    email: req.body.email,
    password: req.body.password,
  }
  User.findByEmail(signInUser, (err, data) => {
    if (err) {
      if (err.kind === "not_found") {
        res.status(404).send({
          message: `No user fount with emailId ${signInUser.email}.`
        });
      } else {
        res.status(500).send({
          message: "Error retrieving user information with emailId " + signInUser.email
        });
      }
    } else {
      const { id, name, email } = data;
      const token = jwt.sign({ data }, 'secretkey');
      res.json({ token, id, name, email });
    };
  });
};

exports.findAll = (req, res) => {
  User.getAll((err, data) => {
    if (err)
      res.status(500).send({
        message:
          err.message || "error while retrieving users information."
      });
    else res.send(data);
  });
};