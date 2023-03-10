var User = require("../models/user");
var jwt = require("jwt-simple");
//var config = require("../config/dbconfig");

var functions = {
  addNew: function (req, res) {
    if (!req.body.name || !req.body.password) {
      res.json({ success: false, msg: "Enter all fields" });
    } else {
      var newUser = User({
        name: req.body.name,
        password: req.body.password,
        user_type: req.body.user_type,
      });
      newUser.save(function (err, newUser) {
        if (err) {
          res.json({ success: false, msg: "Failed to save" });
        } else {
          var token = jwt.encode(newUser, process.env.SECRET_KEY);
          res.json({
            success: true,
            token: token,
            userid: newUser._id.toString(),
            msg: "Successfully saved",
          });
          //res.json({ success: true, msg: "Successfully saved" });
        }
      });
    }
  },
  authenticate: function (req, res) {
    User.findOne(
      {
        name: req.body.name,
      },
      function (err, user) {
        if (err) throw err;
        if (!user) {
          res.status(403).send({
            success: false,
            msg: "Authentication Failed, User not found",
          });
        } else {
          user.comparePassword(req.body.password, function (err, isMatch) {
            if (isMatch && !err) {
              //console.log("ini respon dari auth fungsi" + user._id.toString());
              var token = jwt.encode(user, process.env.SECRET_KEY);
              res.json({
                success: true,
                token: token,
                userid: user._id.toString(),
              });
            } else {
              return res.status(403).send({
                success: false,
                msg: "Authentication failed, wrong password",
              });
            }
          });
        }
      }
    );
  },
  getinfo: function (req, res) {
    if (
      req.headers.authorization &&
      req.headers.authorization.split(" ")[0] === "Bearer"
    ) {
      var token = req.headers.authorization.split(" ")[1];
      var decodedtoken = jwt.decode(token, process.env.SECRET_KEY);
      return res.json({ success: true, msg: "Hello " + decodedtoken.name });
    } else {
      return res.json({ success: false, msg: "No Headers" });
    }
  },
};

module.exports = functions;
