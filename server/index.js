const { db1, db2 } = require('./connection.js');

const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("Hello from local Express server!");
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`✅ Server running at http://localhost:${PORT}`);
});