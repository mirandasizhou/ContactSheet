const express = require('express');
require("dotenv").config();
const db = require('./db.js');
let app = express();

app.use(express.static(__dirname + '/../dist'));
app.use(express.json());

app.post('/api/contact', (req, res) => {
  console.log(req.body);
  var email = req.body.email;
  var body = req.body;
  db.query(`SELECT * FROM contacts WHERE email='${email}'`, (err, results) => {
    if (err) {
      console.error(err);
    } else {
        db.query(`INSERT INTO contacts (market, product, region, territory, carrier, name, title, email, phone, phone_2, notes) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`, [body.market, body.product, body.region, body.territory, body.carrier, body.fullname, body.title, body.email, body.phone, body.phone_2, body.notes], (err, results) => {
          if (err) {
            console.error(err);
          } else {
            console.log(results);
            res.end();
          }
        })
      }
  })
});

app.get('/api/contact', (req, res) => {
  db.query(`SELECT * FROM contacts`, (err, results) => {
    if (err) {
      console.log(err);
    } else {
      res.send(results);
    }
  })
})

let port = process.env.PORT;
app.listen(port, function() {
  console.log(`listening on port ${port}`);
});