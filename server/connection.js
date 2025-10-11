
import { initializeApp } from "firebase/app";
import { getFirestore } from "firebase/firestore";

require("dotenv").config();

const firebaseConfig1 = {
    apiKey: process.env.APIKEY1,
    authDomain: process.env.AUTHDOMAIN1,
    projectId: process.env.PROJECTID1,
    storageBucket: process.env.STORAGEBUCKET1,
    messagingSenderId: process.env.MESSAGEINGSENDERID1,
    appId: process.env.APPID1,
    measurementId: process.env.MEASUREMENTID1
};

const firebaseConfig2 = {
    apiKey: process.env.APIKEY2,
    authDomain: process.env.AUTHDOMAIN2,
    projectId: process.env.PROJECTID2,
    storageBucket: process.env.STORAGEBUCKET2,
    messagingSenderId: process.env.MESSAGEINGSENDERID2,
    appId: process.env.APPID2,
    measurementId: process.env.MEASUREMENTID2
};

// Initialize Firebase apps
const app1 = initializeApp(firebaseConfig1);

const app2 = initializeApp(firebaseConfig2, "app2");

// Initialize Firestore instances
const db1 = getFirestore(app1);
const db2 = getFirestore(app2);

export { db1, db2 };