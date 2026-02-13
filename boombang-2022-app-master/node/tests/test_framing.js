const SocketIOController = require('../controllers/SocketIOController');
const assert = require('assert');

// Mock clientC
let receivedData = null;
const mockClientC = {
    write: (data) => {
        receivedData = data;
    }
};

const testMessage = "test_message";
const expectedLength = Buffer.byteLength(testMessage, 'utf8');

console.log("Testing SocketIOController.sendDataCSharp with message:", testMessage);
SocketIOController.sendDataCSharp(mockClientC, testMessage);

console.log("Received data type:", typeof receivedData);
if (Buffer.isBuffer(receivedData)) {
    console.log("Received buffer length:", receivedData.length);
    console.log("Received buffer hex:", receivedData.toString('hex'));

    if (receivedData.length < 4) {
        console.error("FAIL: Buffer too short for length prefix");
        process.exit(1);
    }

    const lengthPrefix = receivedData.readUInt32BE(0);
    console.log("Length prefix:", lengthPrefix);

    if (lengthPrefix !== expectedLength) {
        console.error(`FAIL: Expected length ${expectedLength}, got ${lengthPrefix}`);
        process.exit(1);
    }

    const messageBody = receivedData.slice(4).toString('utf8');
    if (messageBody !== testMessage) {
         console.error(`FAIL: Expected message '${testMessage}', got '${messageBody}'`);
         process.exit(1);
    }

    console.log("PASS: Message correctly framed.");
} else {
    // Current behavior: receives string
    console.log("Received raw data:", receivedData);
    console.error("FAIL: Expected Buffer with length prefix, got raw data (likely string).");
    process.exit(1);
}
