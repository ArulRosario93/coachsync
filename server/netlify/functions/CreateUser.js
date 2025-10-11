
const express = require("express");
const serverless = require("serverless-http");
const { db1, db2 } = require('../../connection.js');

const app = express();
app.use(express.json());

app.get("/", (req, res) => {
    res.json({ message: "Hello from Netlify Lambda!" }); 
});

module.exports.handler = serverless(app);