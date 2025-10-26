
const express = require("express");
const serverless = require("serverless-http");
const { db1, db2 } = require('../connection.js');

const app = express();
const Router = express.Router();

Router.get("/", (req, res) => {
    res.json({ message: "Hello from Netlify Lambda!" }); 
});

app.use('/.netlify/functions/createuser', Router);
module.exports.handler = serverless(app);