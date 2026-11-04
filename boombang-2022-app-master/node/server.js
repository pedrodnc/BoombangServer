require('dotenv').config();
const { Console } = require("console");
const express = require("express");
const app = express();
const server = require("http").createServer(app);
var net = require("net");
var clientC = new net.Socket();

const io = require("socket.io")(server, {
    cors: {
        origin: process.env.ALLOWED_ORIGINS ? process.env.ALLOWED_ORIGINS.split(',') : ["http://localhost:8000", "http://127.0.0.1:8000"],
        methods: ["GET", "POST"],
        credentials: true
    },
});

const SocketIOController = require("./controllers/SocketIOController");
const CSharpController = require('./controllers/CSharpController');

const PORT = process.env.PORT || 3000;
const CSHARP_HOST = process.env.CSHARP_HOST || "127.0.0.1";
const CSHARP_PORT = process.env.CSHARP_PORT || 3300;

let isConnected = false;

const connectToCSharp = () => {
    // If we're already connecting or connected, don't try again
    if (clientC.connecting || isConnected) return;

    console.log(`🔄 Attempting to connect to C# server at ${CSHARP_HOST}:${CSHARP_PORT}...`);
    clientC.connect(CSHARP_PORT, CSHARP_HOST);
};

clientC.on("connect", function () {
    console.log(`✅ Connected to C# server at ${CSHARP_HOST}:${CSHARP_PORT}`);
    isConnected = true;
});

clientC.on("close", function () {
    console.log("❌ Connection with C# server closed. Reconnecting in 5s...");
    isConnected = false;
    setTimeout(connectToCSharp, 5000);
});

clientC.on("error", function (err) {
    console.log(`⚠️  C# Emulator error: ${err.message}`);
    // 'close' event will be emitted after 'error', so we handle reconnection there.
});

server.listen(PORT, () => {
    console.log(`Socket server is running on port ${PORT}`);

    SocketIOController.init(io, clientC);
    CSharpController.init(io, clientC);
});

// Initial connection
connectToCSharp();
