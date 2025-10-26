const serverless = require("serverless-http");
const express = require("express");
const multer = require("multer");
const admin = require("firebase-admin");

require("dotenv").config();

// Initialize Firebase Admin with environment variable
if (!admin.apps.length) {
  admin.initializeApp({
    credential: admin.credential.cert(JSON.parse(process.env.FIREBASE_SERVICE_ACCOUNT)),
    storageBucket: process.env.STORAGEBUCKET1,
  });
}

const db = admin.firestore();
const bucket = admin.storage().bucket();
const app = express();

// Use Multer to handle file uploads
const upload = multer({ storage: multer.memoryStorage() });

app.post("/uploadImage", upload.single("image"), async (req, res) => {
  try {
    const { uid } = req.body;
    const file = req.file;

    if (!file) return res.status(400).json({ error: "No file uploaded" });

    // Upload to Firebase Storage
    const fileName = `uploads/${Date.now()}-${file.originalname}`;
    const fileUpload = bucket.file(fileName);

    await fileUpload.save(file.buffer, {
      metadata: { contentType: file.mimetype },
    });

    // Make it publicly accessible (optional)
    await fileUpload.makePublic();

    const imageUrl = `https://storage.googleapis.com/${bucket.name}/${fileName}`;

    res.status(200).json({
      message: "SUCCESS",
      imageUrl,
    });
    
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: "Failed to upload image or save document." });
  }
});

module.exports.handler = serverless(app);