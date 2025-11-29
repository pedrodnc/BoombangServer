var Authenticated = false;
var InGame = false;
var ws;

var wingmanId;
var wingmanUsername;
var wingmanAvatar;

var userIdFichado;
var pingTimer;

var listOfBadges = [];

function InitWebSockets() {
    if (ws == undefined || ws.readyState == 3) {
        if ("WebSocket" in window) {
            const wsAuthCookie = document.cookie.split('; ').find(row => row.startsWith('ws_auth='));
            const wsAuthToken = wsAuthCookie ? wsAuthCookie.split('=')[1] : null;

            if (!wsAuthToken) {
                console.log("No se encontró la cookie ws_auth.");
                return;
            }

            ws = new WebSocket(`wss://${ws_host}:${ws_port}/`, wsAuthToken);

           ws.onopen = function () {
                var Message = new ServerMessage(0);
                Message.addParameter(ticket);
                ws.send(Message.packet);

                pingTimer = setInterval(function () {
                    if (ws != undefined && ws.readyState != 3) {
                        var Message = new ServerMessage(11);
                        ws.send(Message.packet);
                    }
                }, 5000);
            };

            ws.onmessage = function (evt) {
                var packet = evt.data;
                var message = new ClientMessage(packet);
                Handler.handle(ws, message);
            };

            ws.onerror = function (evt) {
                console.log("error");
                clearInterval(pingTimer);
            };

            ws.onclose = function () {
                console.log("error 2");
                clearInterval(pingTimer);
            };
        } else {
            console.log("WebSocket NOT supported by your Browser!");
        }
    }
}
