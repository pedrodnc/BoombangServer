const assert = require('assert');
const SocketIOController = require('../controllers/SocketIOController');

// Mock socket
const mockSocket = {
  request: {
    headers: { 'x-forwarded-for': '127.0.0.1' },
    connection: { remoteAddress: '127.0.0.1' }
  },
  on: function(event, callback) {
    if (event === 'send-message') {
      this.callback = callback;
    }
  },
  trigger: function(data) {
    if (this.callback) {
      this.callback(data);
    }
  }
};

// Mock io
const mockIo = {
  on: function(event, callback) {
    if (event === 'connection') {
      callback(mockSocket);
    }
  }
};

// Mock clientC (C# server)
const mockClientC = {
  write: function(data) {
    this.lastData = data;
  }
};

// Initialize controller
SocketIOController.init(mockIo, mockClientC);

// Test cases
function runTests() {
  console.log('Running tests...');

  // Test 1: Normal input
  const normalData = {
    channel: 'channel1',
    token_uid: 'token1',
    paramater: 'hello world'
  };
  mockSocket.trigger(normalData);
  assert.strictEqual(mockClientC.lastData, 'channel1³²token1³hello world³127.0.0.1');
  console.log('Test 1 Passed: Normal input handled correctly.');

  // Test 2: Protocol Injection attempt with ³
  const injectionData = {
    channel: 'channel1',
    token_uid: 'token1',
    paramater: 'hello³world'
  };
  mockSocket.trigger(injectionData);

  // Before fix, this will contain the injection
  // After fix, this should either remove or escape the ³
  if (mockClientC.lastData.includes('hello³world')) {
    console.log('Test 2 FAILED: Injection successful (vulnerability present).');
    console.log('Expected no "³" inside parameter, but got:', mockClientC.lastData);
  } else {
    console.log('Test 2 Passed: Injection prevented.');
  }

  // Test 3: Protocol Injection attempt with ²
  const injectionData2 = {
    channel: 'channel1',
    token_uid: 'token1',
    paramater: 'hello²world'
  };
  mockSocket.trigger(injectionData2);

   // Before fix, this will contain the injection
  if (mockClientC.lastData.includes('hello²world')) {
      console.log('Test 3 FAILED: Injection successful (vulnerability present).');
      console.log('Expected no "²" inside parameter, but got:', mockClientC.lastData);
  } else {
      console.log('Test 3 Passed: Injection prevented.');
  }

  // Test 4: Extra fields injection
  const extraData = {
    channel: 'channel1',
    token_uid: 'token1',
    paramater: 'hello world',
    evil: 'evil'
  };
  mockSocket.trigger(extraData);
  if (mockClientC.lastData.includes('evil')) {
      console.log('Test 4 FAILED: Extra field injection successful (vulnerability present).');
      console.log('Expected "evil" not to be in output, but got:', mockClientC.lastData);
  } else {
      console.log('Test 4 Passed: Extra field injection prevented.');
  }
}

runTests();
