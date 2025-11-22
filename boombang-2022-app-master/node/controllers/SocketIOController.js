const SocketIOController = {
  init(io, clientC) {
    this.reciveDataSocketIO(io, clientC);
  },
  reciveDataSocketIO(io, clientC) {
    const $this = this;
    io.on("connection", (socket) => {
      socket.on("send-message", (data) => {
        if (!$this.validateData(data)) {
          console.log("Invalid data received, ignoring");
          return;
        }

        var clientIp = socket.request.headers['x-forwarded-for'] ||
                        socket.request.connection.remoteAddress;
        $this.sendDataCSharp(clientC, $this.prepairData(data, clientIp));
      });
    });
  },
  validateData(data) {
    if (!data || typeof data !== 'object') {
      return false;
    }
    if (!data.channel || typeof data.channel !== 'string') {
      return false;
    }
    if (!data.token_uid || typeof data.token_uid !== 'string') {
      return false;
    }
    if (data.paramater && typeof data.paramater === 'string') {
      if (data.paramater.length > 500) {
        return false;
      }
      data.paramater = this.sanitizeString(data.paramater);
    }
    return true;
  },
  sanitizeString(str) {
    return str.replace(/[<>\"\'&]/g, function(char) {
      const entities = {
        '<': '&lt;',
        '>': '&gt;',
        '"': '&quot;',
        "'": '&#39;',
        '&': '&amp;'
      };
      return entities[char];
    }).substring(0, 500);
  },
  prepairData(response, ip) {
    let callback = "";
    Object.values(response).forEach(function (parameter, index, arr) {
      if (index == 0) {
        callback += parameter + "³²";
      } else {
        callback += parameter + "³";
      }
    });
    callback += ip + "³";
    callback = callback.replace('::ffff:', '');
    return callback.substring(0, callback.length - 1);
  },
  sendDataCSharp(clientC, data) {
    console.log(data);
    clientC.write(data);
  },
};

module.exports = SocketIOController;
