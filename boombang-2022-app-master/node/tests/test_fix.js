const UserSessionManager = require('../utils/UserSessionManager');
const SocketIOController = require('../controllers/SocketIOController');
const CSharpController = require('../controllers/CSharpController');
const assert = require('assert');

// Mock Socket.IO
const io = {
  sockets: {},
  toCalledWith: [],
  emitCalledWith: [],
  onCallbacks: {},

  on(event, callback) {
    this.onCallbacks[event] = callback;
  },

  to(socketId) {
    const self = this;
    this.toCalledWith.push(socketId);
    return {
      emit(event, ...args) {
        self.emitCalledWith.push({ socketId, event, args });
      }
    };
  },

  // This is the broadcast emit which we want to avoid
  emit(event, ...args) {
    console.error(`ERROR: Broadcast emit called for event ${event}! This is vulnerable.`);
    throw new Error(`Broadcast emit called for event ${event}`);
  }
};

// Mock C# Client
const clientC = {
  onCallbacks: {},
  writtenData: [],

  on(event, callback) {
    this.onCallbacks[event] = callback;
  },

  write(data) {
    this.writtenData.push(data);
  }
};

// Mock Socket
const createMockSocket = (id) => ({
  id,
  onCallbacks: {},
  request: {
      headers: {},
      connection: { remoteAddress: '127.0.0.1' }
  },
  on(event, callback) {
    this.onCallbacks[event] = callback;
  },
  trigger(event, data) {
    if (this.onCallbacks[event]) {
      this.onCallbacks[event](data);
    }
  }
});

// Test Execution
async function runTests() {
  console.log('Starting tests...');

  // Initialize Controllers
  SocketIOController.init(io, clientC);
  CSharpController.init(io, clientC);

  // Verify io.on('connection') was registered
  assert(io.onCallbacks['connection'], 'SocketIOController should listen to connection');

  // 1. Connect a client
  const socket1 = createMockSocket('socket-1');
  io.onCallbacks['connection'](socket1);

  // 2. Send message from client to register session
  const tokenUid = 'user-123';
  const messageData = {
    channel: 'test-channel',
    token_uid: tokenUid,
    paramater: 'test-param'
  };

  socket1.trigger('send-message', messageData);

  // Verify UserSessionManager has the session
  const socketIds = UserSessionManager.getSocketIds(tokenUid);
  assert.strictEqual(socketIds.length, 1, 'Should have 1 socket ID');
  assert.strictEqual(socketIds[0], 'socket-1', 'Socket ID should match');
  console.log('Client session registered successfully.');

  // 3. Simulate C# response (user-entering-area)
  // Format: key³²uid³param1³param2...
  // uid here is tokenUid because getUID returns first param after key
  const csharpData = `user-entering-area³²${tokenUid}³param1³param2`;

  // Trigger data from C#
  if (clientC.onCallbacks['data']) {
     clientC.onCallbacks['data'](Buffer.from(csharpData));
  } else {
     throw new Error('CSharpController not listening to data');
  }

  // 4. Verify io.to(socketId).emit was called
  assert.strictEqual(io.toCalledWith.length, 1, 'io.to should be called once');
  assert.strictEqual(io.toCalledWith[0], 'socket-1', 'Should send to socket-1');

  assert.strictEqual(io.emitCalledWith.length, 1, 'emit should be called once (via to())');
  const call = io.emitCalledWith[0];
  assert.strictEqual(call.event, `user-entering-area-${tokenUid}`, 'Event name mismatch');
  assert.strictEqual(call.args[0][0], tokenUid, 'First parameter should be uid');

  console.log('Targeted emit verified for user-entering-area.');

  // 5. Simulate user-login
  // Format: user-login³²tokenUid³userId
  const userId = 'real-user-id';
  const loginData = `user-login³²${tokenUid}³${userId}`;

  // Reset spies
  io.toCalledWith = [];
  io.emitCalledWith = [];

  clientC.onCallbacks['data'](Buffer.from(loginData));

  // Verify
  assert.strictEqual(io.toCalledWith.length, 1, 'io.to should be called once');
  assert.strictEqual(io.toCalledWith[0], 'socket-1', 'Should send to socket-1');

  const loginCall = io.emitCalledWith[0];
  // user-login uses parameters[1] (userId) for event name suffix
  assert.strictEqual(loginCall.event, `user-login-${userId}`, 'Event name mismatch for login');

  console.log('Targeted emit verified for user-login.');

  // 6. Test Disconnect
  socket1.trigger('disconnect');
  const socketIdsAfter = UserSessionManager.getSocketIds(tokenUid);
  assert.strictEqual(socketIdsAfter.length, 0, 'Session should be removed after disconnect');
  console.log('Disconnect cleanup verified.');

  console.log('All tests passed!');
}

runTests().catch(err => {
  console.error('Test Failed:', err);
  process.exit(1);
});
